--[[
	A grid of assets. Use Layouter.calculateAssetsHeight() to know how tall it will be when the assets are rendered.

	Props:
		UDim2 Position = UDim2.new(0, 0, 0, 0)
		UDim2 Size = UDim2.new(1, 0, 1, 0)

		{number -> Asset} idToAssetMap
		[number] assetIds

		number currentSoundId
		boolean isPlaying

		callback tryOpenAssetConfig, invoke assetConfig page with an assetId.
]]
local HttpService = game:GetService("HttpService")

local FFlagToolboxEnableAudioGrantDialog = game:GetFastFlag("ToolboxEnableAudioGrantDialog")
local FFlagToolboxUsePageInfoInsteadOfAssetContext = game:GetFastFlag("ToolboxUsePageInfoInsteadOfAssetContext2")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)
local AssetAnalyticsContextItem = require(Plugin.Core.Util.Analytics.AssetAnalyticsContextItem)
local Settings = require(Plugin.Core.ContextServices.Settings)

local Util = Plugin.Core.Util
local InsertToolPromise = require(Util.InsertToolPromise)
local InsertAsset = require(Util.InsertAsset)
local ContextMenuHelper = require(Util.ContextMenuHelper)
local CreatorInfoHelper = require(Util.CreatorInfoHelper)
local Category = require(Plugin.Core.Types.Category)
local getStartupAssetId = require(Util.getStartupAssetId)

local getModal = ContextGetter.getModal
local getNetwork = ContextGetter.getNetwork
local withModal = ContextHelper.withModal

local Asset = require(Plugin.Core.Components.Asset.Asset)
local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)
local MessageBox = require(Plugin.Core.Components.MessageBox.MessageBox)
local ScriptConfirmationDialog = require(Plugin.Core.Components.ScriptConfirmationDialog)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local PlayPreviewSound = require(Plugin.Core.Actions.PlayPreviewSound)
local PausePreviewSound = require(Plugin.Core.Actions.PausePreviewSound)
local ResumePreviewSound = require(Plugin.Core.Actions.ResumePreviewSound)
local PostInsertAssetRequest = require(Plugin.Core.Networking.Requests.PostInsertAssetRequest)
local SetAssetPreview = require(Plugin.Core.Actions.SetAssetPreview)
local PostAssetCheckPermissions = require(Plugin.Core.Networking.Requests.PostAssetCheckPermissions)
local GetPageInfoAnalyticsContextInfo = require(Plugin.Core.Thunks.GetPageInfoAnalyticsContextInfo)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local withLocalization = ContextHelper.withLocalization

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local AssetGridContainer = Roact.PureComponent:extend("AssetGridContainer")

local function nameForValueInEnum(enum, value)
	local items = enum:GetEnumItems()

	for _, item in ipairs(items) do
		if item.Value == value then
			return item.Name
		end
	end
	return
end

function AssetGridContainer:init(props)
	self.state = {
		hoveredAssetId = 0,
		isShowingToolMessageBox = false,
		isShowingScriptWarningMessageBox = false,
		isShowingGrantPermissionsMessageBox = false,

		scriptWarningInfo = nil,
		grantPermissionsInfo = nil,
	}

	--[[
		We need to track when the user last triggered an insertion, because inserting
		an asset can take several seconds depending on the asset's loading speed. This
		means throttling inserts via "onAssetInserted" does not work as intended
		because a user can queue up several inserts of an asset which is not loaded yet,
		and "onAssetInserted" does not fire and update the last inserted time until
		the asset in question has finished loading.
	]]
	self.lastInsertAttemptTime = 0

	self.canInsertAsset = function()
		return (tick() - self.lastInsertAttemptTime > Constants.TIME_BETWEEN_ASSET_INSERTION)
			and not self.insertToolPromise:isWaiting()
	end

	self.openAssetPreview = function(assetData)
		local modal = getModal(self)
		modal.onAssetPreviewToggled(true)
		self.props.onPreviewToggled(true)
		self:setState({
			previewAssetData = assetData,
			openAssetPreviewStartTime = tick(),
		})

		if self.props.isPlaying then
			self.props.pauseASound()
		end

		-- TODO STM-146: Remove this once we are happy with the new MarketplaceAssetPreview event
		Analytics.onAssetPreviewSelected(assetData.Asset.Id)

		self.props.AssetAnalytics:get():logPreview(assetData)
	end

	self.closeAssetPreview = function(assetData)
		local modal = getModal(self)
		modal.onAssetPreviewToggled(false)
		self.props.onPreviewToggled(false)

		local endTime = tick()
		local startTime = self.state.openAssetPreviewStartTime
		local deltaMs = (endTime - startTime) * 1000
		Analytics.onAssetPreviewEnded(assetData.Asset.Id, deltaMs)

		self:setState({
			previewAssetData = Roact.None,
			openAssetPreviewStartTime = Roact.None,
		})
	end

	self.onAssetHovered = function(assetId)
		local modal = getModal(self)
		if self.state.hoveredAssetId == 0 and modal.canHoverAsset() then
			self:setState({
				hoveredAssetId = assetId,
			})
		end
	end

	self.onAssetHoverEnded = function(assetId)
		if self.state.hoveredAssetId == assetId then
			self:setState({
				hoveredAssetId = 0,
			})
		end
	end

	self.onFocusLost = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			self.onAssetHoverEnded()
		end
	end

	self.onPreviewAudioButtonClicked = function(assetId)
		local currentSoundId = self.props.currentSoundId
		if currentSoundId == assetId then
			if self.props.isPlaying then
				self.props.pauseASound()

				Analytics.onSoundPausedCounter()
			else
				self.props.resumeASound()

				Analytics.onSoundPlayedCounter()
			end
		else
			self.props.playASound(assetId)

			Analytics.onSoundPlayedCounter()
		end
	end

	self.onMessageBoxClosed = function()
		self:setState({
			isShowingToolMessageBox = false,
		})

		self.insertToolPromise:insertToWorkspace()
	end

	self.onMessageBoxButtonClicked = function(index, action)
		self:setState({
			isShowingToolMessageBox = false,
		})

		if action == "yes" then
			self.insertToolPromise:insertToStarterPack()
		elseif action == "no" then
			self.insertToolPromise:insertToWorkspace()
		end
	end

	self.onInsertToolPrompt = function()
		self:setState({
			isShowingToolMessageBox = true,
		})
	end

	self.onScriptWarningBoxClosed = function()
		self:setState({
			isShowingScriptWarningMessageBox = false,
		})
		self.insertToolPromise:dismissWarningPrompt()
	end

	self.onInsertScriptWarningPrompt = function(info)
		local settings = self.props.Settings:get("Plugin")
		if settings:getShowScriptWarning() then
			self:setState({
				isShowingScriptWarningMessageBox = true,
				scriptWarningInfo = info,
			})
			return true
		else
			return false
		end
	end

	self.onScriptWarningBoxToggleShow = function(showState)
		local settings = self.props.Settings:get("Plugin")
		settings:setShowScriptWarning(showState)
	end

	self.onAssetGridContainerChanged = function()
		if self.props.onAssetGridContainerChanged then
			self.props.onAssetGridContainerChanged()
		end
	end

	self.onPermissionsGrantClosed = function()
		if not FFlagToolboxEnableAudioGrantDialog then
			return
		end
		self:setState({
			isShowingGrantPermissionsMessageBox = false,
		})
		self.insertToolPromise:returnResult(false)
	end

	self.onPermissionsGranted = function(index, action)
		if not FFlagToolboxEnableAudioGrantDialog then
			return
		end
		self:setState({
			isShowingGrantPermissionsMessageBox = false,
		})

		local result = if action == "yes" then true else false
		self.insertToolPromise:returnResult(result)
	end

	self.onPermissionsGrantCallback = function(info)
		if not FFlagToolboxEnableAudioGrantDialog then
			return
		end
		self:setState({
			isShowingGrantPermissionsMessageBox = true,
			grantPermissionsInfo = info,
		})
	end

	self.insertToolPromise = InsertToolPromise.new(
		self.onInsertToolPrompt,
		self.onInsertScriptWarningPrompt,
		self.onPermissionsGrantCallback
	)

	self.onAssetInsertionSuccesful = function(assetId)
		self.props.onAssetInserted(getNetwork(self), assetId)
		self.props.onAssetInsertionSuccesful()
	end

	self.tryCreateContextMenu = function(assetData, showEditOption, localizedContent, assetAnalyticsContext)
		local asset = assetData.Asset
		local assetId = asset.Id
		local assetTypeId = asset.TypeId
		local plugin = self.props.Plugin:get()

		local isPackageAsset = Category.categoryIsPackage(self.props.categoryName)
		if isPackageAsset then
			local canEditPackage = (
				self.props.currentUserPackagePermissions[assetId] == PermissionsConstants.EditKey
				or self.props.currentUserPackagePermissions[assetId] == PermissionsConstants.OwnKey
			)
			showEditOption = canEditPackage
		end

		local context
		local position
		if FFlagToolboxUsePageInfoInsteadOfAssetContext then
			context = assetAnalyticsContext
			position = assetData.Context.position
		else
			context = assetData.Context
			position = context.position
		end
		local creatorTypeEnumValue

		-- TODO STM-406: Refactor creator types to be stored as Enum.CreatorType in Toolbox Rodux
		-- The data for Creations is stored as Enum.CreatorType Values, whereas for other tabs
		-- it is stored as backend enum values with range [1, 2] instead of [0, 1]
		-- We can address this by storing Enum.CreatorType instead of numeric Values and converting to/from backend [1, 2]
		-- values in the network interfacing code.
		if context.toolboxTab == Category.CREATIONS_KEY then
			creatorTypeEnumValue = assetData.Creator.Type
		else
			creatorTypeEnumValue = CreatorInfoHelper.backendToClient(assetData.Creator.Type)
		end

		local trackingAttributes = {
			Category = nameForValueInEnum(Enum.AssetType, assetTypeId),
			SortType = context.sort,
			CreatorId = assetData.Creator.Id,
			CreatorType = nameForValueInEnum(Enum.CreatorType, creatorTypeEnumValue),
			SearchKeyword = context.searchKeyword,
			Position = position,
			SearchId = context.searchId,
			ViewInBrowser = true,
		}

		local creatorId = (assetData.Creator and assetData.Creator.Id) or nil
		local currentCategory = assetData.Context.currentCategory
		ContextMenuHelper.tryCreateContextMenu(
			plugin,
			assetId,
			assetTypeId,
			showEditOption,
			localizedContent,
			props.tryOpenAssetConfig,
			isPackageAsset,
			currentCategory,
			trackingAttributes,
			creatorId
		)
	end

	self.tryInsert = function(assetData, assetWasDragged, insertionMethod)
		self.lastInsertAttemptTime = tick()

		local asset = assetData.Asset
		local assetId = asset.Id
		local assetName = asset.Name
		local assetTypeId = asset.TypeId

		local currentProps = self.props
		local categoryName = currentProps.categoryName
		local searchTerm = currentProps.searchTerm or ""
		local assetIndex = currentProps.assetIndex

		local currentCategoryName = categoryName

		local plugin = self.props.Plugin:get()
		InsertAsset.tryInsert({
			plugin = plugin,
			assetId = assetId,
			assetName = assetName,
			assetTypeId = assetTypeId,
			onSuccess = function(assetId, insertedInstance)
				self.onAssetInsertionSuccesful(assetId)
				insertionMethod = insertionMethod or (assetWasDragged and "DragInsert" or "ClickInsert")
				self.props.AssetAnalytics:get():logInsert(assetData, insertionMethod, insertedInstance)
			end,
			currentCategoryName = currentCategoryName,
			categoryName = categoryName,
			searchTerm = searchTerm,
			assetIndex = assetIndex,
		}, self.insertToolPromise, assetWasDragged)
	end
end

function AssetGridContainer:didMount()
	local assetIdStr = getStartupAssetId()
	local assetId = tonumber(assetIdStr)

	if assetId then
		local ok, result = pcall(function()
			local props = self.props
			local localization = props.Localization

			local requestPromise = getNetwork(self):getItemDetails({
				{
					id = assetId,
					itemType = "Asset",
				},
			})

			requestPromise:andThen(function(response)
				local responseItem = response.responseBody.data[1]

				if not responseItem then
					-- TODO STM-135: Replace these warnings with Lumberyak logs
					warn("Could not find asset information in response for", assetIdStr)

					Analytics.onTryAssetFailure(assetId)
					return
				end

				local assetData = {
					Asset = {
						Id = responseItem.asset.id,
						TypeId = responseItem.asset.typeId,
						AssetGenres = responseItem.asset.assetGenres,
						Name = responseItem.asset.name,
						Description = responseItem.asset.description,
						Created = responseItem.asset.createdUtc,
						Updated = responseItem.asset.updatedUtc,
					},
					Context = {}, -- TODO: STM-828 Add currentCategory and other context item Analytics
					Creator = {
						Name = responseItem.creator.name,
						Id = responseItem.creator.id,
						Type = responseItem.creator.type,
					},
				}

				-- Add the asset data to the store, so that we can open AssetPreview
				self.props.dispatchGetAssets({
					assetData,
				})

				self.openAssetPreview(assetData)

				self.tryInsert(assetData, false)

				Analytics.onTryAsset(assetId)
			end, function(err)
				-- TODO STM-135: Replace these warnings with Lumberyak logs
				warn("Could not load asset information for", assetIdStr, err)

				Analytics.onTryAssetFailure(assetId)
			end)
		end)

		if not ok then
			-- TODO STM-135: Replace these warnings with Lumberyak logs
			warn("Failed to try asset", assetIdStr, tostring(result))
			Analytics.onTryAssetFailure(assetId)
		end
	end
end

function AssetGridContainer:willUnmount()
	self.insertToolPromise:destroy()
end

function AssetGridContainer.getDerivedStateFromProps(nextProps, lastState)
	local lastHoveredAssetStillVisible = false
	for _, assetTable in ipairs(nextProps.assetIds) do
		local assetId = assetTable[1]
		if lastState.hoveredAssetId == assetId then
			lastHoveredAssetStillVisible = true
			break
		end
	end

	if not lastHoveredAssetStillVisible then
		return {
			hoveredAssetId = 0,
		}
	end
end

function AssetGridContainer:render()
	return withModal(function(_, modalStatus)
		return withLocalization(function(_, localizedContent)
			local props = self.props
			local state = self.state

			local localization = props.Localization
			local assetIds = props.assetIds

			local position = props.Position or UDim2.new(0, 0, 0, 0)
			local size = props.Size or UDim2.new(1, 0, 1, 0)

			local currentSoundId = props.currentSoundId
			local isPlaying = props.isPlaying

			local previewAssetData = state.previewAssetData

			local isPackages = Category.categoryIsPackage(props.categoryName)
			local hoveredAssetId = modalStatus:canHoverAsset() and state.hoveredAssetId or 0
			local isShowingToolMessageBox = state.isShowingToolMessageBox
			local isShowingScriptWarningMessageBox = state.isShowingScriptWarningMessageBox
			local isShowingGrantPermissionsMessageBox = state.isShowingGrantPermissionsMessageBox
			local scriptWarningInfo = state.scriptWarningInfo
			local grantPermissionsInfo = state.grantPermissionsInfo

			local showPrices = Category.shouldShowPrices(props.categoryName)

			local cellSize
			if showPrices then
				cellSize = UDim2.new(
					0,
					Constants.ASSET_WIDTH_NO_PADDING,
					0,
					Constants.ASSET_HEIGHT + Constants.PRICE_HEIGHT
				)
			else
				cellSize = UDim2.new(0, Constants.ASSET_WIDTH_NO_PADDING, 0, Constants.ASSET_HEIGHT)
			end

			local assetElements = {
				UIGridLayout = Roact.createElement("UIGridLayout", {
					CellPadding = UDim2.new(
						0,
						Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING,
						0,
						Constants.BETWEEN_ASSETS_VERTICAL_PADDING
					),
					CellSize = cellSize,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					[Roact.Event.Changed] = self.onAssetGridContainerChanged,
				}),
			}
			if isPackages and #assetIds ~= 0 then
				local assetIdList = {}
				local index = 1
				while
					index < PermissionsConstants.MaxPackageAssetIdsForHighestPermissionsRequest
					and assetIds[index] ~= nil
				do
					local assetId = assetIds[index][1]
					if not self.props.currentUserPackagePermissions[assetId] then
						table.insert(assetIdList, assetId)
					end
					index = index + 1
				end

				if #assetIdList ~= 0 then
					self.props.dispatchPostAssetCheckPermissions(getNetwork(self), assetIdList)
				end
			end

			local function tryCreateLocalizedContextMenu(assetData, showEditOption)
				if FFlagToolboxUsePageInfoInsteadOfAssetContext then
					local getPageInfoAnalyticsContextInfo = self.props.getPageInfoAnalyticsContextInfo
					local assetAnalyticsContext = getPageInfoAnalyticsContextInfo()
					self.tryCreateContextMenu(assetData, showEditOption, localizedContent, assetAnalyticsContext)
				else
					self.tryCreateContextMenu(assetData, showEditOption, localizedContent)
				end
			end

			local isGroupPackageAsset = Category.categoryIsGroupPackages(props.categoryName)

			for index, asset in ipairs(assetIds) do
				local assetId = asset[1]
				local assetIndex = asset[2]

				local canEditPackage = (
					self.props.currentUserPackagePermissions[assetId] == PermissionsConstants.EditKey
					or self.props.currentUserPackagePermissions[assetId] == PermissionsConstants.OwnKey
				)

				-- If the asset is a group packages, then we want to check only want to show it if we have permission.
				-- if the category is not group packages, then we always want to show.
				local showAsset = (isGroupPackageAsset and canEditPackage) or not isGroupPackageAsset

				if assetElements[tostring(assetId)] then
					-- If the asset is in the grid multiple times, show it in the position of the first occurrence
					continue
				end

				assetElements[tostring(assetId)] = showAsset
					and Roact.createElement(Asset, {
						assetId = assetId,
						LayoutOrder = index,
						assetIndex = assetIndex,

						isHovered = assetId == hoveredAssetId,
						hoveredAssetId = hoveredAssetId,

						currentSoundId = currentSoundId,
						isPlaying = isPlaying,

						categoryName = props.categoryName,

						onAssetHovered = self.onAssetHovered,
						onAssetHoverEnded = self.onAssetHoverEnded,

						onPreviewAudioButtonClicked = self.onPreviewAudioButtonClicked,
						onAssetPreviewButtonClicked = self.openAssetPreview,

						canInsertAsset = self.canInsertAsset,
						tryInsert = self.tryInsert,
						tryCreateContextMenu = tryCreateLocalizedContextMenu,
					})
			end

			assetElements.ToolScriptWarningMessageBox = isShowingScriptWarningMessageBox
				and Roact.createElement(ScriptConfirmationDialog, {
					Name = string.format("ToolboxToolScriptWarningMessageBox-%s", HttpService:GenerateGUID()),

					Info = scriptWarningInfo,
					Icon = Images.INFO_ICON,

					onClose = self.onScriptWarningBoxClosed,
					onButtonClicked = self.onScriptWarningBoxClosed,
					onChangeShowDialog = self.onScriptWarningBoxToggleShow,
				})

			assetElements.GrantPermissionsMessageBox = isShowingGrantPermissionsMessageBox
				and Roact.createElement(MessageBox, {
					Name = string.format("ToolboxPermissionsMessageBox-%s", HttpService:GenerateGUID()),

					Title = localization:getText("General", "RobloxStudio"),
					Text = localization:getText("GrantAssetPermission", "DialogText"),
					InformativeText = localization:getText("GrantAssetPermission", "Information", {
						assetName = grantPermissionsInfo.assetName,
						assetId = grantPermissionsInfo.assetId,
						assetType = grantPermissionsInfo.assetType,
					}),
					Icon = Images.WARNING_ICON,
					IconColor = Color3.fromHex("#FFAA21"),

					onClose = self.onPermissionsGrantClosed,
					onButtonClicked = self.onPermissionsGranted,

					buttons = {
						{
							Text = localization:getText("GrantAssetPermission", "CancelButton"),
							action = "no",
						},
						{
							Text = localization:getText("GrantAssetPermission", "GrantButton"),
							action = "yes",
						},
					},
				})

			assetElements.ToolMessageBox = isShowingToolMessageBox
				and Roact.createElement(MessageBox, {
					Name = string.format("ToolboxToolMessageBox-%s", HttpService:GenerateGUID()),

					Title = "Insert Tool",
					Text = "Put this tool into the starter pack?",
					Icon = Images.INFO_ICON,

					onClose = self.onMessageBoxClosed,
					onButtonClicked = self.onMessageBoxButtonClicked,

					buttons = {
						{
							Text = "Yes",
							action = "yes",
						},
						{
							Text = "No",
							action = "no",
						},
					},
				})

			assetElements.AssetPreview = previewAssetData
				and Roact.createElement(AssetPreviewWrapper, {
					assetData = previewAssetData,

					canInsertAsset = self.canInsertAsset,
					tryInsert = self.tryInsert,
					tryCreateContextMenu = tryCreateLocalizedContextMenu,
					onClose = self.closeAssetPreview,
				})

			return Roact.createElement("Frame", {
				Position = position,
				Size = size,
				BackgroundTransparency = 1,

				[Roact.Event.InputEnded] = self.onFocusLost,
			}, assetElements)
		end)
	end)
end

AssetGridContainer = withContext({
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	AssetAnalytics = AssetAnalyticsContextItem,
	Settings = Settings,
})(AssetGridContainer)

local function mapStateToProps(state, props)
	state = state or {}

	local sound = state.sound or {}
	local pageInfo = state.pageInfo or {}

	local categoryName = pageInfo.categoryName or Category.DEFAULT.name

	return {
		currentSoundId = sound.currentSoundId or 0,
		isPlaying = sound.isPlaying or false,
		categoryName = categoryName,
		currentUserPackagePermissions = state.packages.permissionsTable or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchGetAssets = function(assets)
			dispatch(GetAssets(assets))
		end,

		playASound = function(currentSoundId)
			dispatch(PlayPreviewSound(currentSoundId))
		end,

		pauseASound = function()
			dispatch(PausePreviewSound())
		end,

		resumeASound = function()
			dispatch(ResumePreviewSound())
		end,

		onAssetInserted = function(networkInterface, assetId)
			dispatch(PostInsertAssetRequest(networkInterface, assetId))
		end,

		onPreviewToggled = function(isPreviewing)
			dispatch(SetAssetPreview(isPreviewing))
		end,

		dispatchPostAssetCheckPermissions = function(networkInterface, assetIds)
			dispatch(PostAssetCheckPermissions(networkInterface, assetIds))
		end,

		getPageInfoAnalyticsContextInfo = if FFlagToolboxUsePageInfoInsteadOfAssetContext
			then function()
				return dispatch(GetPageInfoAnalyticsContextInfo())
			end
			else nil,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGridContainer)
