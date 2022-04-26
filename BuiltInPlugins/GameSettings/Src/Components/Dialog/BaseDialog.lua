--[[
	A generic dialog that prompts the user for a response.

	Props:
		table Buttons = {string cancelButtonName, string confirmButtonName}
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Cryo = require(Plugin.Packages.Cryo)

local Pane = require(Plugin.Packages.Framework).UI.Pane
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local ButtonBar = require(Plugin.Src.Components.ButtonBar)

local BaseDialog = Roact.PureComponent:extend("BaseDialog")

local function makeButtons(buttons)
	if buttons[2] then
		return {
			{Name = buttons[1], Active = true, Value = false},
			{Name = buttons[2], Default = true, Active = true, Value = true},
		}
	else
		return {
			{Name = buttons[1], Default = true, Active = true, Value = true},
		}
	end
end

function BaseDialog:render()
	local props = self.props

	local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")

	local buttons = props.Buttons

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 1, 0),
		Layout = Enum.FillDirection.Vertical,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = theme.dialog.background,
		Spacing = theme.dialog.spacing,
	}, Cryo.Dictionary.join(props[Roact.Children], {
		Buttons = Roact.createElement(ButtonBar, {
			Position = UDim2.new(0, 0, 1, theme.buttonBar.offset),
			AnchorPoint = Vector2.new(0, 1),
			Buttons = makeButtons(buttons),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			ButtonClicked = props.OnResult
		})
	}))
end


BaseDialog = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(BaseDialog)



return BaseDialog
