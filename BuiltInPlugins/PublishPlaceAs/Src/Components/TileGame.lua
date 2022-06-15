local FFlagRemoveUILibrarySeparator = game:GetFastFlag("RemoveUILibrarySeparator")
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
-- TODO: jbousellam - remove with FFlagRemoveUILibrarySeparator
local UILibrary = require(Plugin.Packages.UILibrary)
local Separator = if FFlagRemoveUILibrarySeparator then Framework.UI.Separator else UILibrary.Component.Separator

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local ContentProvider = game:GetService("ContentProvider")

local ICON_SIZE = 150
local TILE_FOOTER_SIZE = 35
local NAME_SIZE = 70
local PADDING = 5

local TileGame = Roact.PureComponent:extend("TileGame")

function TileGame:init()
	self.state = {
		assetFetchStatus = nil,
	}

	self.isMounted = false
end

function TileGame:didMount()
	self.isMounted = true
	spawn(function()
		local asset = { self.thumbnailUrl }
		local function setStatus(contentId, status)
			if self.isMounted then
				self:setState({
					assetFetchStatus = status
				})
			end
		end
		ContentProvider:PreloadAsync(asset, setStatus)
	end)
end

function TileGame:willUnmount()
	self.isMounted = false
end

function TileGame:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization

	local name = props.Name
	local layoutOrder = props.LayoutOrder or 0
	local state = props.State
	local onActivated = props.OnActivated

	self.thumbnailUrl = string.format("rbxthumb://type=AutoGeneratedAsset&id=%i&w=%i&h=%i", props.Id, ICON_SIZE, ICON_SIZE)

	local isThumbnail = self.state.assetFetchStatus == Enum.AssetFetchStatus.Success

	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE + TILE_FOOTER_SIZE),
		LayoutOrder = layoutOrder,

		[Roact.Event.Activated] = onActivated
	}, {
		Icon = Roact.createElement("ImageLabel", {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			Image = isThumbnail and self.thumbnailUrl or theme.icons.thumbnailPlaceHolder,
			ImageColor3 = isThumbnail and Color3.new(1, 1, 1) or theme.icons.imageColor,
			BackgroundColor3 = theme.icons.backgroundColor,
			BorderSizePixel = 0,
		}),

		Name = Roact.createElement("TextLabel", {
			Text = name,
			Position = UDim2.new(0, 0, 1, -1.5 * TILE_FOOTER_SIZE + PADDING),
			Size = UDim2.new(1, 0, 0, NAME_SIZE),

			TextWrapped = true,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = 14,
			Font = theme.font,
			TextColor3 = theme.textColor,
			BackgroundTransparency = 1,
		}),

		Separator = Roact.createElement(Separator, {
			Weight = if FFlagRemoveUILibrarySeparator then nil else 1,
			Padding = if FFlagRemoveUILibrarySeparator then nil else 10,
			Position = UDim2.new(0.5, 0, 1, PADDING),
		}),

		State = Roact.createElement("TextLabel", {
			-- use localization keys PrivacyType.Public or PrivacyType.Private
			Text = localization:getText("PrivacyType", state),
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, 0, 0, TILE_FOOTER_SIZE),

			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Right,
			TextSize = 12,
			Font = theme.font,
			TextColor3 = state == "Public" and theme.successText.text or theme.dimmerTextColor,
			BackgroundTransparency = 1,
		}),
	})
end

TileGame = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(TileGame)

return TileGame
