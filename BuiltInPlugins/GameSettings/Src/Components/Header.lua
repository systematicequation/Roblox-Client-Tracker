--[[
	Header shown at the top of the currently opened page

	Props:
		string Title = The text to display for this header
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)
local GetTextSize = UILibrary.Util.GetTextSize

local Header = Roact.PureComponent:extend("Header")

function Header:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")

	local textSize
	local calculatedTextSize = GetTextSize(props.Title, theme.fontStyle.Header.TextSize, theme.fontStyle.Header.Font)
	textSize = UDim2.new(0, calculatedTextSize.X, 0, calculatedTextSize.Y)

	return Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Header, {
		Size = textSize,
		Text = props.Title,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Bottom,
		LayoutOrder = props.LayoutOrder or 1,
	}))
end


Header = withContext({
	Theme = ContextServices.Theme,
})(Header)



return Header
