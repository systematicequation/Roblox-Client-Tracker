--[[
	Preview an asset before taking an action with it. Includes name, description, rating etc..
	The parent component handles fetching data. This is currently agnostic with regards to Rodux.

	Required Props:
		ContextItem Localization: A Localization ContextItem, which is provided via withContext.
		ContextItem Analytics: An Analytics ContextItem, which is provided via withContext.
		table AssetData: The asset to preview.
		string ActionText: The action button text.
		callback OnClickAction: what to do when clicking the action button.
		callback OnClickCreator: what to do when clicking the creator's name.
			OnClickCreator(creatorName: string)
		callback OnClickContext: what to do when clicking the 'triple dot' button.
		UDim2 Size: The size of this component.

	Optional Props:
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table Favorites: props to pass to Favorites. Favorites will be hidden if this is not shown.
		Voting Voting: Table of Voting info. Voting will be hidden if this is not shown.
		callback OnVoteUp: called when the upvote button is clicked. Required if Voting is passed.
		callback OnVoteDown: called when the downvote button is clicked. Required if Voting is passed.
		Instance AssetInstance: The Instance of the asset to preview.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		UDim2 Position: The position of this component.
		number ZIndex: The render index of this component.
		boolean ActionEnabled: Whether the action button is enabled.
		boolean ShowRobuxIcon: Whether to show a Robux icon on the action button.
		number LayoutOrder: LayoutOrder of the component.
		table PurchaseFlow: PurchaseFlow dialog to show.
		table SuccessDialog: SuccessDialog dialog to show.
		boolean HideCreatorSearch: Whether to show creator search link
		callback OnClickReport: what to do when clicking the report/flag button.
		callback RenderFooter: Callback to render optional footer element for the preview.
		boolean CanFlagAsset: Whether or not the user can flag/report the asset.
		Enum.UsageContext UsageContext: The UsageContext for previewed assets.
]]
local FFlagToolboxHideReportFlagForCreator = game:GetFastFlag("ToolboxHideReportFlagForCreator")
local FFlagToolboxRedirectToLibraryAbuseReport = game:GetFastFlag("ToolboxRedirectToLibraryAbuseReport")
local FFlagToolboxShowHasScriptInfo = game:GetFastFlag("ToolboxShowHasScriptInfo")
local FFlagPluginsSetAudioPreviewUsageContext = game:GetFastFlag("PluginsSetAudioPreviewUsageContext")

local TextService = game:GetService("TextService")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local Util = require(Framework.Util)
local Cryo = Util.Cryo
local LayoutOrderIterator = Util.LayoutOrderIterator
local Typecheck = Util.Typecheck
local Immutable = Util.Immutable
local StyleModifier = Util.StyleModifier
local formatLocalDateTime = Util.formatLocalDateTime

local AssetRender = require(script.Parent.AssetRender)
local Favorites = require(script.Parent.Favorites)
local VoteBar = require(script.Parent.VoteBar)

local UI = require(Framework.UI)
local Decoration = UI.Decoration
local LinkText = UI.LinkText
local Button = UI.Button
local Container = UI.Container
local ScrollingFrame = UI.ScrollingFrame
local Separator = UI.Separator
local HoverArea = UI.HoverArea
local TextLabel = Decoration.TextLabel
local Image = Decoration.Image
local Pane = UI.Pane
local Tooltip = UI.Tooltip

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local COMPONENT_NAME = "AssetPreview"

local AssetPreview = Roact.PureComponent:extend(COMPONENT_NAME)
Typecheck.wrap(AssetPreview, script)

function AssetPreview:init()
	self.containerRef = Roact.createRef()

	self.state = {
		scrollingEnabled = true,
		absoluteContentSize = Vector2.new(0, 0),
		assetInfoRows = nil,
	}

	self.onClickCreatorLink = function()
		return self.props.OnClickCreator(self.props.AssetData.Creator.Name)
	end

	self.onContentResize = function(absoluteContentSize)
		self:setState({
			absoluteContentSize = absoluteContentSize
		})
	end

	self.onMouseEnterAssetRender = function()
		self:setState({
			scrollingEnabled = false
		})
	end

	self.onMouseLeaveAssetRender = function()
		self:setState({
			scrollingEnabled = true
		})
	end

	self.onClickActionButton = function(...)
		if self.props.ActionEnabled ~= false then
			return self.props.OnClickAction(...)
		end

		return
	end

	self.onPlaySound = function()
		self.props.Analytics:report("AssetPreviewPlaySound", {
			assetId = self.props.AssetData.Asset.Id,
		})
	end

	self.onPauseSound = function()
		self.props.Analytics:report("AssetPreviewPauseSound", {
			assetId = self.props.AssetData.Asset.Id,
		})
	end

	self.onPlayVideo = function()
		self.props.Analytics:report("AssetPreviewPlayVideo", {
			assetId = self.props.AssetData.Asset.Id,
		})
	end

	self.onPauseVideo = function()
		self.props.Analytics:report("AssetPreviewPauseVideo", {
			assetId = self.props.AssetData.Asset.Id,
		})
	end
end

--[[
	Depending on the endpoint used to fetch the asset data, the date may be in various fields
	e.g. CreatedRaw, Created (which itself may be a formatted or ISO8601 string)

	This function determines the best field to use from the asset data to generate a user-friendly
	local date & time string.
]]
function AssetPreview:formatLocalDateTimeForAsset(asset, key)
	assert(typeof(key) == "string")

	local localization = self.props.Localization
	local locale = localization:getLocale()

	local rawField = asset[key .. "Raw"]
	local field = asset[key]

	-- TODO DEVTOOLS-3378: Format as a "friendly" duration string
	local DATETIME_FORMAT_STRING = "L LTS"

	if typeof(rawField) == "string" then
		-- Of the form "/Date(1413925184257)/"
		local match = string.match(rawField, "^/Date%((%d+)%)/$")

		if match ~= nil then
			local timestamp = tonumber(match)
			local ok, result = pcall(function()
				return DateTime.fromUnixTimestampMillis(timestamp):FormatLocalTime(DATETIME_FORMAT_STRING, locale)
			end)

			if ok then
				return result
			else
				warn(result)
			end
		end
	end

	if field == nil then
		return ""
	end

	return formatLocalDateTime(field, DATETIME_FORMAT_STRING, locale)
end

--[[
	Store any additional info rows for the current asset to state
]]
function AssetPreview:updateAssetInfoRows()
	local asset = self.props.AssetData.Asset

	if asset.TypeId == Enum.AssetType.Video.Value then
		spawn(function()
			-- We need to create and parent a VideoFrame in order to make the video load
			-- and hence get its resolution.
			local video = Instance.new("VideoFrame")
			video.Visible = false
			video.Parent = self.containerRef:getValue()
			
			video.Loaded:Connect(function()
				if not self._isMounted then
					video:Destroy()
					return
				end

				local width = video.Resolution.X
				local height = video.Resolution.Y

				-- Resolution may be 0x0 due to https://jira.rbx.com/browse/CLI-42841 - avoid showing the resolution row if this is the case.
				if width ~= 0 or height ~= 0 then
					local localization = self.props.Localization
					self:setState({
						assetInfoRows = {
							{
								Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Resolution"),
								Content = string.format("%dx%d", width, height),
							}
						}
					})
				end

				video:Destroy()
			end)

			video.Video = string.format("rbxassetid://%d", asset.Id)
		end)
	end
end

function AssetPreview:didMount()
	self._isMounted = true
	self:updateAssetInfoRows()
end

function AssetPreview:willUnmount()
	self._isMounted = false
end

function AssetPreview:didUpdate(previousProps)
	if previousProps.AssetData.Asset.Id ~= self.props.AssetData.Asset.Id then
		self:setState({
			assetInfoRows = Roact.None
		})

		self:updateAssetInfoRows()
	end
end

function AssetPreview:render()
	local props = self.props
	local state = self.state

	local theme = props.Theme
	local style
	if THEME_REFACTOR then
		style = self.props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end

	local anchorPoint = props.AnchorPoint
	local position = props.Position
	local zIndex = props.ZIndex
	local size = props.Size or UDim2.new(1, 0, 1, 0)

	local absSize = state.absoluteContentSize
	-- Adjust height to avoid whitespace at the bottom of the content
	if size.Y.Offset > 0 and absSize.Y > 0 then
		local maxHeight = absSize.Y + style.ButtonArea.Size.Y.Offset
		if maxHeight < size.Y.Offset then
			size = UDim2.new(size.X, UDim.new(0, maxHeight))
		end
	end

	local assetData = props.AssetData
	local assetId = assetData.Asset.Id
	local assetGenres = assetData.Asset.AssetGenres
	local hasScripts = FFlagToolboxShowHasScriptInfo and assetData.Asset.HasScripts
	local assetDescription = assetData.Asset.Description or ""

	local localization = props.Localization

	local infoRowStyle = style.ScrollingFrame.InfoRow

	local creatorLinkAction = self.onClickCreatorLink
	if props.HideCreatorSearch then
		creatorLinkAction = nil
	end

	local infoRows = Cryo.List.join({
		{
			Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Creator"),
			Content = assetData.Creator.Name,
			LinkAction = creatorLinkAction,
		},
		{
			Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Genre"),
			Content = #assetGenres == 0 and localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "AllGenre") or tostring(assetGenres[1])
		},
	}, state.assetInfoRows or {}, {
		{
			Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Created"),
			Content = self:formatLocalDateTimeForAsset(assetData.Asset, "Created"),
		},
		{
			Label = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "LastUpdated"),
			Content = self:formatLocalDateTimeForAsset(assetData.Asset, "Updated"),
		},
	})

	local layoutOrderIterator = LayoutOrderIterator.new()

	local scrollingFramePadding = style.ScrollingFrame.Padding
	local textMaxWidth = size.X.Offset - scrollingFramePadding.PaddingLeft.Offset - scrollingFramePadding.PaddingRight.Offset

	local canFlagAsset
	local assetHeaderSpacing
	local reportButtonWidth
	if FFlagToolboxRedirectToLibraryAbuseReport then
		if FFlagToolboxHideReportFlagForCreator then
			canFlagAsset = props.CanFlagAsset
		else
			canFlagAsset = (assetData.Creator.Id ~= 1)
		end
		assetHeaderSpacing = style.ScrollingFrame.AssetHeader.Spacing
		reportButtonWidth = canFlagAsset and style.ScrollingFrame.FlagAsset.Size.X.Offset or 0
	end

	return Roact.createElement(Container, {
		AnchorPoint = anchorPoint,
		Position = position,
		ZIndex = zIndex,
		Size = size,
		Background = Decoration.Box,
		BackgroundStyle = style.BackgroundStyle,
		-- This allows the container to prevent clicks propagating to elements behind it
		ElementOverride = "ImageButton",
		Active = true,
		[Roact.Ref] = self.containerRef,
	}, {
		CloseButton = Roact.createElement(Image, {
			Style = style.CloseButton,
		}),

		PurchaseFlow = props.PurchaseFlow,
		SuccessDialog = props.SuccessDialog,

		Contents = Roact.createElement(Container, {}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder
			}),

			ScrollingFrame = Roact.createElement(ScrollingFrame, {
				LayoutOrder = 1,
				AutoSizeCanvas = true,
				AutoSizeLayoutOptions = {
					SortOrder = Enum.SortOrder.LayoutOrder,
					-- Do NOT pass a non-zero Scale parameter here. There seems to be an engine bug where this causes AbsoluteContentSize
					-- to balloon, presumably because the concept of auto-resizing based on its own size (which has not yet been computed) is
					-- inherently self-referential.
					Padding = UDim.new(0, style.ScrollingFrame.ElementPadding),
				},
				OnCanvasResize = self.onContentResize,
				Size = UDim2.new(UDim.new(1, 0), UDim.new(1, 0) - style.ButtonArea.Size.Height),
				ScrollingEnabled = state.scrollingEnabled
			}, {
				Padding = Roact.createElement("UIPadding", scrollingFramePadding),

				AssetNameHeader = FFlagToolboxRedirectToLibraryAbuseReport and Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.Y,
					Padding = 5,
					Size = UDim2.new(1, 0, 0, 0),
					Spacing = assetHeaderSpacing,
					Layout = Enum.FillDirection.Horizontal,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}, {
					AssetNameContainer = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.Y,
						Size = UDim2.new(1, -reportButtonWidth - assetHeaderSpacing, 0, 0),
						LayoutOrder = 1,
						Layout = Enum.FillDirection.Vertical,
					}, {
						AssetName = Roact.createElement(TextLabel, {
							AutomaticSize = Enum.AutomaticSize.Y,
							LayoutOrder = 1,
							Size = UDim2.new(1, 0, 0, 0),
							Style = style.ScrollingFrame.AssetName,
							Text = assetData.Asset.Name,
							TextWrapped = true,
						}),

						CreatorName = Roact.createElement(TextLabel, {
							AutomaticSize = Enum.AutomaticSize.Y,
							LayoutOrder = 2,
							RichText = true,
							Size = UDim2.new(1, 0, 0, 0),
							Style = style.ScrollingFrame.CreatorName,
							Text = self.props.Localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "ByUsername", {
								username = "<b>" .. assetData.Creator.Name .. "</b>",
							}),
							TextWrapped = true,
						}),
					}),

					FlagAssetContainer = canFlagAsset and Roact.createElement(Pane, {
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.XY,
						LayoutOrder = 2,
					}, {
						FlagAsset = Roact.createElement("ImageButton", {
							BackgroundTransparency = 1,
							Image = style.ScrollingFrame.FlagAsset.Image,
							ImageColor3 = style.ScrollingFrame.FlagAsset.ImageColor3,
							Position = UDim2.new(0, 0, 0, 5),
							Size = style.ScrollingFrame.FlagAsset.Size,
							[Roact.Event.Activated] = self.props.OnClickReport,
						}, {
							Tooltip = Roact.createElement(Tooltip, {
								Text = self.props.Localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Report"),
							}),

							HoverArea = Roact.createElement(HoverArea, {
								Cursor = "PointingHand",
							})
						}),
					}),
				}),

				AssetName = (not FFlagToolboxRedirectToLibraryAbuseReport) and Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					TextWrapped = true,
					Size = UDim2.new(1, 0, 0, 0),
					Style = style.ScrollingFrame.AssetName,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Text = assetData.Asset.Name,
				}),

				CreatorName = (not FFlagToolboxRedirectToLibraryAbuseReport) and Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					RichText = true,
					Size = UDim2.new(1, 0, 0, 0),
					Style = style.ScrollingFrame.CreatorName,
					Text = self.props.Localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "ByUsername", {
						username = "<b>" .. assetData.Creator.Name .. "</b>",
					}),
					TextWrapped = true,
				}) or nil,


				AssetRender = Roact.createElement(AssetRender, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					-- AssetRender needs to be given an explicit width in order to calculate
					-- whether the tree view should layout below or beside the rendering
					Width = size.X.Offset - scrollingFramePadding.PaddingLeft.Offset - scrollingFramePadding.PaddingRight.Offset,
					-- Apply padding for the scroll bar which may appear on the right - the padding applied
					-- is slightly different to the thickness of the scrollbar to avoid a gap
					Padding = {
						Right = 7,
						Top = 0,
						Bottom = 0,
						Left = 0,
					},
					Margin = style.AssetRenderMargin,
					AssetData = assetData,
					AssetInstance = props.AssetInstance,
					OnMouseEnter = self.onMouseEnterAssetRender,
					OnMouseLeave = self.onMouseLeaveAssetRender,
					OnPlaySound = self.onPlaySound,
					OnPauseSound = self.onPauseSound,
					OnPlayVideo = self.onPlayVideo,
					OnPauseVideo = self.onPauseVideo,
					UsageContext = if FFlagPluginsSetAudioPreviewUsageContext then props.UsageContext else nil,
				}),

				Favorites = props.Favorites and Roact.createElement(Favorites, Immutable.JoinDictionaries({
					LayoutOrder = layoutOrderIterator:getNextOrder(),
				}, props.Favorites)),

				HasScripts = hasScripts and Roact.createElement(Container, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Size = style.ScrollingFrame.ScriptArea.Size,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = style.ScrollingFrame.ScriptArea.ElementPadding
					}),

					ScriptIcon = Roact.createElement(Image, {
						Style = style.ScrollingFrame.ScriptArea.ScriptIcon,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					}),

					ScriptText = Roact.createElement(TextLabel, {
						FitWidth = true,
						FitMaxWidth = textMaxWidth,
						TextWrapped = false,
						Style = style.ScrollingFrame.ScriptArea.ScriptText,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Text = self.props.Localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "HasScriptsMessage"),
					}),

					ScriptInfoIcon = Roact.createElement(Image, {
						Style = style.ScrollingFrame.ScriptArea.ScriptInfoIcon,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					}, {
						Tooltip = Roact.createElement(Tooltip, {
							Text = self.props.Localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "HasScriptsTooltip"),
						}),

						HoverArea = Roact.createElement(HoverArea, {
							Cursor = "PointingHand",
						}),
					}),
				}),

				AssetDescription = Roact.createElement(TextLabel, {
					FitWidth = true,
					FitMaxWidth = textMaxWidth,
					TextWrapped = true,
					Style = style.ScrollingFrame.AssetDescription,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Text = assetDescription
				}),

				VoteBar = props.Voting and Roact.createElement(VoteBar, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					AssetId = assetId,
					Voting = props.Voting,
					OnVoteUp = props.OnVoteUp,
					OnVoteDown = props.OnVoteDown,
				}),

				Roact.createFragment(Cryo.List.map(
					infoRows,
					function(item, i)
						local label = item.Label
						local content

						local labelSize = TextService:GetTextSize(
							label,
							infoRowStyle.Text.TextSize,
							infoRowStyle.Text.Font,
							Vector2.new(math.huge, math.huge)
						)

						if item.LinkAction then
							-- Manually size and position to the right for elements that don't support
							-- native right align, such as LinkText
							local contentSize = TextService:GetTextSize(
								item.Content,
								infoRowStyle.Text.TextSize,
								infoRowStyle.Text.Font,
								Vector2.new(math.huge, math.huge)
							)

							content = Roact.createElement(LinkText, {
								Size = UDim2.new(0, contentSize.X, 1, 0),
								Position = UDim2.new(1, - contentSize.X, 0, 0),
								TextTruncate = Enum.TextTruncate.AtEnd,
								Text = item.Content,
								OnClick = item.LinkAction
							})
						else
							content = Roact.createElement(TextLabel, {
								Size = UDim2.new(1, 0, 1, 0),
								Style = infoRowStyle.RightText,
								Text = item.Content,
								TextTruncate = Enum.TextTruncate.AtEnd
							})
						end

						return Roact.createFragment({
							["InfoRow_" .. tostring(i)] = Roact.createElement(Container, {
								LayoutOrder = layoutOrderIterator:getNextOrder(),
								Size = UDim2.new(1, 0, 0, labelSize.Y),
							}, {
								Label = Roact.createElement(TextLabel, {
									Size = UDim2.new(0, labelSize.X, 1, 0),
									Style = infoRowStyle.LeftText,
									Text = label,
								}),
								ContentWrapper = Roact.createElement(Container, {
									Position = UDim2.new(0, labelSize.X, 0, 0),
									Size = UDim2.new(1, -labelSize.X, 1, 0),
								}, {
									Content = content
								})
							}),
							["InfoRow_Separator_" .. tostring(i)] = i < #infoRows and Roact.createElement(Separator, {
								LayoutOrder = layoutOrderIterator:getNextOrder(),
							}) or nil,
						})
					end)
				),

				FooterSeparator = props.RenderFooter and Roact.createElement(Separator, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
				}),
				Footer = props.RenderFooter and Roact.createElement(props.RenderFooter, {
					FitMaxWidth = textMaxWidth,
					LayoutOrder = layoutOrderIterator:getNextOrder(),
				}),

				-- UIListLayout AbsoluteContentSize does not account for padding, so add a spacer div here.
				BottomSpacer = Roact.createElement(Container, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Size = UDim2.new(1, 0, 0, style.ScrollingFrame.Padding.PaddingTop + style.ScrollingFrame.Padding.PaddingBottom),
				})
			}),

			ButtonArea = Roact.createElement(Container, {
				LayoutOrder = 2,
				Size = style.ButtonArea.Size
			}, {
				Padding = Roact.createElement("UIPadding", style.ButtonArea.Padding),

				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = style.ButtonArea.ElementPadding
				}),

				ContextButton = Roact.createElement(Button, {
					LayoutOrder = 1,
					OnClick = props.OnClickContext,
					Size = style.ButtonArea.Context.Size,
					Style = style.ButtonArea.Context,
				}, {
					Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
				}),

				ActionButton = Roact.createElement(Button, {
					LayoutOrder = 2,
					OnClick = self.onClickActionButton,
					Text = props.ActionText,
					StyleModifier = props.ActionEnabled == false and StyleModifier.Disabled or nil,
					Style = props.ShowRobuxIcon and style.ButtonArea.ActionBuy or style.ButtonArea.Action,
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.new(1, 0, 0, 0),
					Size = UDim2.new(1, - style.ButtonArea.Context.Size.X.Offset - style.ButtonArea.ElementPadding.Offset, 1, 4)
				}, {
					Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
				}),
			}),
		})
	})
end


AssetPreview = withContext({
	Analytics = ContextServices.Analytics,
	Localization = ContextServices.Localization,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})(AssetPreview)



return AssetPreview