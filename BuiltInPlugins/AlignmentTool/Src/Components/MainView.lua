--[[
	The top level view for the alignment plugin.

	Contains a UI section for each alignment setting, and button for aligning
	the selection using the current settings.
]]

local Plugin = script.Parent.Parent.Parent

local DraggerFramework = Plugin.Packages.DraggerFramework
local BoundsChangedTracker = require(DraggerFramework.Utility.BoundsChangedTracker)
local SelectionWrapper = require(DraggerFramework.Utility.SelectionWrapper)

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Button = UI.Button
local Container = UI.Container
local Decoration = UI.Decoration

local Util = require(Plugin.Packages.Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local StyleModifier = Util.StyleModifier

local SetAlignableObjects = require(Plugin.Src.Actions.SetAlignableObjects)
local AxesSection = require(Plugin.Src.Components.AxesSection)
local DebugView = require(Plugin.Src.Components.DebugView)
local ModeSection = require(Plugin.Src.Components.ModeSection)
local RelativeToSection = require(Plugin.Src.Components.RelativeToSection)
local UpdateAlignEnabled = require(Plugin.Src.Thunks.UpdateAlignEnabled)
local UpdateAlignment = require(Plugin.Src.Thunks.UpdateAlignment)
local getAlignableObjects = require(Plugin.Src.Utility.getAlignableObjects)
local getBoundingBoxes = require(Plugin.Src.Utility.getBoundingBoxes)
local getDebugSettingValue = require(Plugin.Src.Utility.getDebugSettingValue)

local MainView = Roact.PureComponent:extend("MainView")

local function shouldShowDebugView()
	return getDebugSettingValue("ShowDebugView", false)
end

function MainView:init()
	self._boundsChangedTracker = BoundsChangedTracker.new(function()
		self.props.updateAlignEnabled()
	end)

	self:_updateSelectionInfo()
end

function MainView:render()
	local props = self.props
	local state = self.state
	local debugState = state.debug or {}

	local enabled = props.alignEnabled
	local updateAlignment = props.updateAlignment
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")
	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Container, {
		Background = Decoration.Box,
		Padding = theme.MainView.Padding,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = theme.MainView.ListItemPadding,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		ModeSection = Roact.createElement(ModeSection, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}),

		AxesSection = Roact.createElement(AxesSection, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}),

		RelativeToSection = Roact.createElement(RelativeToSection, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}),

		-- Element intentionally empty to add a gap before the apply button.
		Spacer = Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, theme.MainView.SeparatorHeight),
		}),

		ButtonContainer = Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Padding = theme.MainView.PrimaryButtonPadding,
			Size = UDim2.new(1, 0, 0, theme.MainView.PrimaryButtonHeight),
		}, {
			Button = Roact.createElement(Button, {
				Style = "RoundPrimary",
				StyleModifier = not enabled and StyleModifier.Disabled,
				Text = localization:getText("MainView", "AlignButton"),
				OnClick = function()
					if enabled then
						updateAlignment()
					end
				end,
			}),
		}),

		DebugView = shouldShowDebugView() and Roact.createElement(DebugView, {
			BoundingBoxOffset = debugState.boundingBoxOffset,
			BoundingBoxSize = debugState.boundingBoxSize,
			ObjectBoundingBoxMap = debugState.objectBoundingBoxMap,
		}),
	})
end

function MainView:_updateSelectionInfo()
	local selection = SelectionWrapper:Get()
	local alignableObjects, allParts = getAlignableObjects(selection)

	self.props.setAlignableObjects(alignableObjects)

	self._boundsChangedTracker:setParts(allParts)

	if shouldShowDebugView() then
		local offset, size, boundingBoxMap = getBoundingBoxes(alignableObjects)

		self:setState({
			debug = {
				boundingBoxOffset = offset,
				boundingBoxSize = size,
				objectBoundingBoxMap = boundingBoxMap,
			}
		})
	end
end

function MainView:didMount()
	SelectionWrapper:init()
	self._boundsChangedTracker:install()

	self._selectionChangedConnection = SelectionWrapper.SelectionChangedByStudio:Connect(function()
		self:_updateSelectionInfo()
	end)
end

function MainView:willUnmount()
	self._selectionChangedConnection:Disconnect()
	self._selectionChangedConnection = nil

	SelectionWrapper:destroy()
	self._boundsChangedTracker:uninstall()
end

ContextServices.mapToProps(MainView, {
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	Theme = ContextServices.Theme,
})

local function mapStateToProps(state, _)
	return {
		alignEnabled = state.alignEnabled,
		alignableObjects = state.alignableObjects,
		alignmentMode = state.alignmentMode,
		enabledAxes = state.enabledAxes,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		updateAlignEnabled = function()
			dispatch(UpdateAlignEnabled())
		end,

		updateAlignment = function()
			dispatch(UpdateAlignment())
		end,

		setAlignableObjects = function(objects)
			dispatch(SetAlignableObjects(objects))
			dispatch(UpdateAlignEnabled())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainView)
