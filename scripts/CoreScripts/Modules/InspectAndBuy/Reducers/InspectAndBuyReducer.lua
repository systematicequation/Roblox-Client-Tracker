local CorePackages = game:GetService("CorePackages")
local FetchingStatus = require(CorePackages.Workspace.Packages.Http).Reducers.FetchingStatus
local Reducers = script.Parent
local Rodux = require(CorePackages.Rodux)
local View = require(Reducers.View)
local PlayerId = require(Reducers.PlayerId)
local PlayerName = require(Reducers.PlayerName)
local Assets = require(Reducers.Assets)
local AssetBundles = require(Reducers.AssetBundles)
local Bundles = require(Reducers.Bundles)
local EquippedAssets = require(Reducers.EquippedAssets)
local DetailsInformation = require(Reducers.DetailsInformation)
local TryingOnInfo = require(Reducers.TryingOnInfo)
local Favorites = require(Reducers.Favorites)
local Locale = require(Reducers.Locale)
local Visible = require(Reducers.Visible)
local ItemBeingPurchased = require(Reducers.ItemBeingPurchased)
local IsLoaded = require(Reducers.IsLoaded)
local IsSubjectToChinaPolicies = require(Reducers.IsSubjectToChinaPolicies)
local GamepadEnabled = require(Reducers.GamepadEnabled)
local StoreId = require(Reducers.StoreId)
local CollectibleResellableInstances = require(Reducers.CollectibleResellableInstances)
local CreatingExperiences = require(Reducers.CreatingExperiences)
local Overlay = require(Reducers.Overlay)
local InspectAndBuyFolder = script.Parent.Parent

local GetFFlagIBEnableNewDataCollectionForCollectibleSystem =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableNewDataCollectionForCollectibleSystem)
local FFlagAttributionInInspectAndBuy = require(InspectAndBuyFolder.Flags.FFlagAttributionInInspectAndBuy)

return Rodux.combineReducers({
	view = View,
	playerId = PlayerId,
	playerName = PlayerName,
	assets = Assets,
	bundles = Bundles,
	assetBundles = if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then AssetBundles else nil,
	equippedAssets = EquippedAssets,
	detailsInformation = DetailsInformation,
	tryingOnInfo = TryingOnInfo,
	favorites = Favorites,
	locale = Locale,
	visible = Visible,
	itemBeingPurchased = ItemBeingPurchased,
	gamepadEnabled = GamepadEnabled,
	isLoaded = IsLoaded,
	isSubjectToChinaPolicies = IsSubjectToChinaPolicies,
	FetchingStatus = FetchingStatus,
	storeId = StoreId,
	collectibleResellableInstances = CollectibleResellableInstances,
	creatingExperiences = CreatingExperiences,
	overlay = if FFlagAttributionInInspectAndBuy then Overlay else nil,
})
