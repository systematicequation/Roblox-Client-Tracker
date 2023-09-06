--[[
	The base prompt for other prompts like PublishAvatarPrompt or PublishAssetPrompt.
    Other prompts can pass in body components that will be parented under a frame between
    the NameTextBox and PromptRows below. For example, they can pass in the Viewport and
    description text box.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ExperienceAuthService = game:GetService("ExperienceAuthService")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local FullPageModal = UIBlox.App.Dialog.Modal.FullPageModal
local Overlay = UIBlox.App.Dialog.Overlay
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)

local LocalPlayer = Players.LocalPlayer

local Components = script.Parent
local NameTextBox = require(Components.Common.NameTextBox)
local CloseOpenPrompt = require(script.Parent.Parent.Actions.CloseOpenPrompt)
local ItemInfoList = require(CorePackages.Workspace.Packages.ItemDetails).ItemInfoList

local NAME_HEIGHT_PIXELS = 30
local DISCLAIMER_HEIGHT_PIXELS = 50
local LABEL_HEIGHT = 15
local LABEL_PADDING = 24
local BOTTOM_GRADIENT_HEIGHT = 5

local DISCLAIMER_TEXT = "disclaimer"
local SUBMIT_TEXT = "submit"
local CREATOR_TEXT = "creator"
local ATTRIBUTION_TEXT = "madeIn"
local TYPE_TEXT = "type"

local BasePublishPrompt = Roact.PureComponent:extend("BasePublishPrompt")

BasePublishPrompt.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	nameLabel = t.string,
	defaultName = t.string,
	promptBody = t.any,
	typeData = t.string,
	titleText = t.string,

	-- Mapped state
	guid = t.any,
	scopes = t.any,

	-- Mapped dispatch functions
	closePrompt = t.callback,
})

function BasePublishPrompt:init()
	-- TODO: AVBURST-13016 Add back checking name for spaces or special characters after investigating
	self.closePrompt = function()
		self.props.closePrompt()
	end

	self.denyAndClose = function()
		-- We should never get to this point if this engine feature is off, but just in case:
		if game:GetEngineFeature("ExperienceAuthReflectionFixes") then
			ExperienceAuthService:ScopeCheckUIComplete(
				self.props.guid,
				self.props.scopes,
				Enum.ScopeCheckResult.ConsentDenied,
				{} -- empty metadata
			)
		end
		self.closePrompt()
	end

	self.confirmAndUpload = function()
		local metadata = {}
		-- TODO: Name Validation should be done before submitting AVBURST-12725

		-- We should never get to this point if this engine feature is off, but just in case:
		if game:GetEngineFeature("ExperienceAuthReflectionFixes") then
			ExperienceAuthService:ScopeCheckUIComplete(
				self.props.guid,
				self.props.scopes,
				Enum.ScopeCheckResult.ConsentAccepted,
				metadata
			)
			self.closePrompt()
		end
	end
end

function BasePublishPrompt:renderMiddle(localized)
	return withStyle(function(style)
		local font = style.Font
		local baseSize: number = font.BaseSize
		local relativeSize: number = font.CaptionHeader.RelativeSize
		local textSize: number = baseSize * relativeSize
		local theme = style.Theme
		assert(LocalPlayer, "Assert LocalPlayer not nil to silence type checker")
		return Roact.createFragment({
			ScrollingFrame = Roact.createElement(RoactGamepad.Focusable.ScrollingFrame, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, -DISCLAIMER_HEIGHT_PIXELS),
				CanvasSize = UDim2.new(1, 0, 0, 0),
				ScrollBarThickness = 0,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				defaultChild = self.nameTextBoxRef,
				[Roact.Ref] = self.middleContentRef,
			}, {
				layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
				}),
				padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 24),
					PaddingRight = UDim.new(0, 24),
				}),

				NameLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, LABEL_HEIGHT + LABEL_PADDING),
					Font = font.Body.Font,
					Text = self.props.nameLabel,
					TextSize = textSize,
					TextColor3 = theme.TextDefault.Color,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 1,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, LABEL_PADDING),
					}),
				}),
				NameInput = Roact.createElement(NameTextBox, {
					Size = UDim2.new(1, 0, 0, NAME_HEIGHT_PIXELS),
					-- TODO: Investigate previous name updated AVBURST-13016 and name moderation AVBURST-12725, for now use placeholder
					onNameUpdated = function() end,
					nameTextBoxRef = self.nameTextBoxRef,
					defaultName = self.props.defaultName,
					LayoutOrder = 2,
				}),
				PromptBody = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = 3,
				}, self.props.promptBody),
				PromptRows = Roact.createElement(ItemInfoList, {
					rowData = {
						{
							infoName = localized[CREATOR_TEXT],
							infoData = LocalPlayer.Name,
							hasVerifiedBadge = LocalPlayer.HasVerifiedBadge,
						},
						{
							infoName = localized[ATTRIBUTION_TEXT],
							infoData = game.Name,
						},
						{
							infoName = localized[TYPE_TEXT],
							infoData = self.props.typeData,
						},
					},
					LayoutOrder = 4,
				}),
			}),
			BottomGradient = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, BOTTOM_GRADIENT_HEIGHT),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, -DISCLAIMER_HEIGHT_PIXELS),
				-- background frame to Gradient must be white to get correct gradient colors
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				ZIndex = 2, -- This gradient needs to show above the entries
			}, {
				gradient = Roact.createElement("UIGradient", {
					Rotation = 270,
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, style.Theme.BackgroundUIDefault.Color),
						ColorSequenceKeypoint.new(1, style.Theme.BackgroundUIDefault.Color),
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, theme.BackgroundDefault.Transparency),
						NumberSequenceKeypoint.new(0.5, theme.BackgroundDefault.Transparency),
						NumberSequenceKeypoint.new(1, 1),
					}),
				}),
			}),
			DisclaimerContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, DISCLAIMER_HEIGHT_PIXELS),
				Position = UDim2.new(0, 0, 1, -DISCLAIMER_HEIGHT_PIXELS),
			}, {
				padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 24),
					PaddingRight = UDim.new(0, 24),
				}),
				Disclaimer = Roact.createElement("TextLabel", {
					Size = UDim2.fromScale(1, 1),
					Text = localized[DISCLAIMER_TEXT],
					Font = font.Body.Font,
					TextSize = textSize,
					TextColor3 = theme.TextEmphasis.Color,
					BackgroundTransparency = 1,
					TextWrapped = true,
				}),
			}),
		})
	end)
end

function BasePublishPrompt:renderAlertLocalized(localized)
	return Roact.createFragment({
		-- Render transparent black frame over the whole screen to de-focus anything in the background.
		Roact.createElement(Overlay, {
			showGradient = false,
			ZIndex = -1,
		}),

		Roact.createElement(FullPageModal, {
			title = self.props.titleText,
			onCloseClicked = self.closePrompt,
			distanceFromTop = 37,
			marginSize = 0,
			screenSize = self.props.screenSize,
			buttonStackProps = {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = self.confirmAndUpload,
							text = localized[SUBMIT_TEXT],
						},
					},
				},
			},
		}, {
			middleContent = self:renderMiddle(localized),
		}),
	})
end

local function GetLocalizedStrings()
	local strings = {}
	strings[SUBMIT_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Submit")

	strings[CREATOR_TEXT] = RobloxTranslator:FormatByKey("Feature.Catalog.Label.Filter.Creator")
	strings[TYPE_TEXT] = RobloxTranslator:FormatByKey("Feature.Catalog.Label.CategoryType")
	strings[ATTRIBUTION_TEXT] = RobloxTranslator:FormatByKey("Feature.Catalog.Label.Attribution")

	strings[DISCLAIMER_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishCommon.Disclaimer")

	return strings
end

function BasePublishPrompt:render()
	local localized = GetLocalizedStrings()
	return self:renderAlertLocalized(localized)
end

local function mapStateToProps(state)
	return {
		guid = state.promptRequest.promptInfo.guid,
		scopes = state.promptRequest.promptInfo.scopes,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closePrompt = function()
			return dispatch(CloseOpenPrompt())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BasePublishPrompt)
