local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Selection = game:GetService("Selection")

local SignalsContext = require(Plugin.Src.Context.Signals)

local AnimationClipEditorDragger = require(Plugin.Src.Components.Draggers.AnimationClipEditorDragger)

local DraggerFramework = Plugin.Packages.DraggerFramework
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local Constants = require(Plugin.Src.Util.Constants)
local ValueChanged = require(Plugin.Src.Thunks.ValueChanged)
local DraggerSchema = require(Plugin.Src.Util.DraggerSchema.DraggerSchema)
local SetSelectedTrackInstances = require(Plugin.Src.Actions.SetSelectedTrackInstances)
local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)

local GetFFlagCreateSelectionBox = require(Plugin.LuaFlags.GetFFlagCreateSelectionBox)
local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

local DraggerWrapper = Roact.PureComponent:extend("DraggerWrapper")

function DraggerWrapper:init()
	self.state = {
		selection = nil,
	}
end

function DraggerWrapper:willUpdate(nextProps)
	local props = self.props
	if self.selection and props.SelectedTrackInstances ~= nextProps.SelectedTrackInstances then
		self.selection.selectedTrackInstances = nextProps.SelectedTrackInstances
		if not GetFFlagCreateSelectionBox() then
			Selection:Set(nextProps.SelectedTrackInstances)
		end
		local selectionSignal = self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged)
		selectionSignal:Fire()
	end
end

local function mapDraggerContextToProps(draggerContext, props)
	draggerContext.RootInstance = props.RootInstance
	draggerContext.IKMode = props.IKMode
	draggerContext.StartingPose = props.StartingPose
	draggerContext.PinnedParts = props.PinnedParts
	draggerContext.IKEnabled = props.IKEnabled
	draggerContext.Tool = props.Tool
	draggerContext.IsPlaying = props.IsPlaying
	draggerContext.ScrubberSignal = props.Signals:get(Constants.SIGNAL_KEYS.ScrubberChanged)
	draggerContext.OnManipulateJoints = function(instanceName, values)
		if props.IsPlaying then
			return
		end

		for trackName, value in pairs(values) do
			if GetFFlagChannelAnimations() then
				props.ValueChanged(instanceName, {trackName}, Constants.TRACK_TYPES.CFrame, props.Playhead, value, props.Analytics)
			elseif GetFFlagFacialAnimationSupport() then
				props.ValueChanged_deprecated2(instanceName, trackName, Constants.TRACK_TYPES.CFrame, props.Playhead, value, props.Analytics)
			else
				props.ValueChanged_deprecated(instanceName, trackName, props.Playhead, value, props.Analytics)
			end
		end
	end
end

local function setUpDraggerContext(props)
	local plugin = props.Plugin:get()

	local selectionSignal = props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged)

	local selection = DraggerSchema.Selection.new(selectionSignal, props.SetSelectedTrackInstances)
	local draggerContext = DraggerContext_PluginImpl.new(plugin, game, settings(), selection)
	draggerContext.AddWaypoint = function()
		props.AddWaypoint()
	end
	return selection, draggerContext
end

function DraggerWrapper:render()
	local props = self.props

	local tool = props.Tool
	local mouse = props.Mouse:get()

	if not self.draggerContext then
		if props.AnimationData ~= nil then
			self.selection, self.draggerContext = setUpDraggerContext(props)
			self:setState({
				selection = self.selection,
			})
		else
			return
		end
	end

	if props.AnimationData ~= nil then 
		mapDraggerContextToProps(self.draggerContext, props)
	end

	return Roact.createElement(AnimationClipEditorDragger, {
		Context = self.draggerContext,
		Tool = tool,
		Mouse = mouse,
	})
end

local function mapStateToProps(state, props)
	local status = state.Status

	return {
		Tool = state.Status.Tool,
		SelectedTrackInstances = state.Status.SelectedTrackInstances,
		RootInstance = state.Status.RootInstance,
		IKMode = state.Status.IKMode,
		StartingPose = state.Status.StartingPose,
		PinnedParts = state.Status.PinnedParts,
		IKEnabled = state.Status.IKEnabled,
		Playhead = state.Status.Playhead,
		IsPlaying = status.IsPlaying,
		AnimationData = state.AnimationData,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetSelectedTrackInstances = function(tracks)
			dispatch(SetSelectedTrackInstances(tracks))
		end,

		ValueChanged_deprecated2 = function(instanceName, trackName, trackType, tick, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, trackType, tick, value, analytics))
		end,

		-- Remove when GetFFlagFacialAnimationSupport() and GetFFlagChannelAnimations() are retired
		ValueChanged_deprecated = function(instanceName, trackName, tick, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, tick, value, analytics))
		end,

		AddWaypoint = function()
			dispatch(AddWaypoint())
		end,
	}
end


DraggerWrapper = withContext({
	Plugin = ContextServices.Plugin,
	PluginActions = ContextServices.PluginActions,
	Signals = SignalsContext,
	Mouse = ContextServices.Mouse,
	Analytics = ContextServices.Analytics,
})(DraggerWrapper)



return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(DraggerWrapper)
