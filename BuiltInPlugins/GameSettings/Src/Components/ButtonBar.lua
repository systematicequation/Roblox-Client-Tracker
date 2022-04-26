--[[
	A horizontal collection of RoundTextButtons.

	Props:
		Enum.HorizontalAlignment HorizontalAlignment = The alignment of the button bar.
			Determines if buttons should be centered or aligned to one corner.
		table Buttons = The buttons to add to this button bar.
]]


local BUTTON_BAR_PADDING = 25
local BUTTON_BAR_EDGE_PADDING = 35

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Cryo = require(Plugin.Packages.Cryo)
local UILibrary = require(Plugin.Packages.UILibrary)

local StyleModifier = Util.StyleModifier

local UI = Framework.UI
local Button = UI.Button

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local RoundTextButton = UILibrary.Component.RoundTextButton

local ButtonBar = Roact.PureComponent:extend("ButtonBar")

function ButtonBar:render()
	local props = self.props
	local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")

	local horizontalAlignment = props.HorizontalAlignment
	local buttons = props.Buttons
	local children = props[Roact.Children]

	local components = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, BUTTON_BAR_PADDING),
			HorizontalAlignment = horizontalAlignment,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}, children)
	}

	if horizontalAlignment ~= Enum.HorizontalAlignment.Center then
		table.insert(components, Roact.createElement("UIPadding", {
			PaddingRight = UDim.new(0, BUTTON_BAR_EDGE_PADDING),
		}))
	end

	for i, button in ipairs(buttons) do
		if THEME_REFACTOR then
			table.insert(components, Roact.createElement(Button, {
				LayoutOrder = i,
				Style = if button.Default then "GameSettingsPrimaryButton" else "GameSettingsButton",
				Size = UDim2.new(0, DEPRECATED_Constants.BUTTON_WIDTH, 1, 0),
				StyleModifier = if button.Active then nil else StyleModifier.Disabled,
				Text = button.Name,
				OnClick = function()
					if button.Active then
						props.ButtonClicked(button.Value)
					end
				end,
			}))
		else
			table.insert(components, Roact.createElement(RoundTextButton, Cryo.Dictionary.join(theme.fontStyle.Normal, {
				LayoutOrder = i,
				Style = button.Default and theme.defaultButton or theme.cancelButton,
				BorderMatchesBackground = button.Default and not theme.isDarkerTheme,
				Size = UDim2.new(0, DEPRECATED_Constants.BUTTON_WIDTH, 1, 0),
				Active = button.Active,
				Name = button.Name,
				Value = button.Value,
				ZIndex = props.ZIndex or 1,

				OnClicked = function(value)
					props.ButtonClicked(value)
				end,
			})))
		end
	end

	return Roact.createElement("Frame", {
		LayoutOrder = props.LayoutOrder or 1,
		Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.BUTTON_HEIGHT),
		AnchorPoint = props.AnchorPoint or Vector2.new(0, 0.5),
		Position = props.Position or UDim2.new(0, 0, 0.5, 0),
		BackgroundTransparency = 1,
	}, components)
end

ButtonBar = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(ButtonBar)

return ButtonBar
