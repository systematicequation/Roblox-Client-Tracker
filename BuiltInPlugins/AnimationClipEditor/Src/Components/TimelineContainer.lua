--[[
	Container for the Timeline. Responsible for calculating proper time intervals.
	Also handles logic to scrub through the timeline.

	Properties:
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		int LastTick = The last tick of the animation
		int TrackPadding = amount of total padding
		int FrameRate = the rate (frames per second) of the animation
		int LayoutOrder = The layout order of the frame, if in a Layout.
		Vector2 ParentSize = size of the frame this frame is parented to
		int Playhead = current tick the scrubber is on
]]
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Constants = require(Plugin.Src.Util.Constants)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local KeyboardListener = Framework.UI.KeyboardListener
local Input = require(Plugin.Src.Util.Input)
local Timeline = require(Plugin.Src.Components.Timeline.Timeline)

local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

local TimelineContainer = Roact.PureComponent:extend("TimelineContainer")

local function getExponent(value)
	local tens = -1
	while value > 1 do
		tens = tens + 1
		value = value / 10
	end
	return tens
end

local function calculateIntervals(width, startTick, endTick)
	local length = endTick - startTick
	local scale = Constants.TICK_SPACING * length / width
	local powTen = math.pow(10, getExponent(scale))
	local mult3 = 3 * powTen

	if scale < mult3 then
		return powTen, math.max(powTen / Constants.NUM_TICKS, 1)
	else
		return mult3, math.max(mult3 / Constants.NUM_TICKS, 1)
	end
end

function TimelineContainer:init()
	self.moveToTick = function(tick)
		local props = self.props

		if props.SnapMode == Constants.SNAP_MODES.Keyframes then
			props.SnapToNearestKeyframe(tick, props.ParentSize.X - props.TrackPadding)
		elseif props.SnapMode == Constants.SNAP_MODES.Frames then
			props.SnapToNearestFrame(tick)
		else
			props.StepAnimation(tick)
		end
	end

	self.onScrubberMoved = function(input)
		if self.props.StepAnimation then
			local tick = TrackUtils.getKeyframeFromPosition(
				input.Position,
				self.props.StartTick,
				self.props.EndTick,
				self.props.ParentPosition.X + (self.props.TrackPadding / 2),
				self.props.ParentSize.X - self.props.TrackPadding)

			tick = math.clamp(tick,
				self.props.StartTick,
				self.props.EndTick)
			if GetFFlagUseTicks() then
				self.moveToTick(tick)
			else
				if self.props.SnapToKeys then
					self.props.SnapToNearestKeyframe(tick, self.props.ParentSize.X - self.props.TrackPadding)
				else
					self.props.StepAnimation(tick)
				end
			end
		end
	end

	self.onTimelineClicked = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.onScrubberMoved(input)
		end
	end

	self.moveScrubberForward = function()
		local tick = self.props.Playhead + 5
		tick = math.clamp(tick,
			self.props.StartTick,
			self.props.EndTick)
		if GetFFlagUseTicks() then
			self.moveToTick(tick)
		else
			if self.props.SnapToKeys then
				self.props.SnapToNearestKeyframe(tick, self.props.ParentSize.X - self.props.TrackPadding)
			else
				self.props.StepAnimation(tick)
			end
		end
	end

	self.moveScrubberBackward= function()
		local tick = self.props.Playhead - 5
		tick = math.clamp(tick,
			self.props.StartTick,
			self.props.EndTick)
		if GetFFlagUseTicks() then
			self.moveToTick(tick)
		else
			if self.props.SnapToKeys then
				self.props.SnapToNearestKeyframe(tick, self.props.ParentSize.X - self.props.TrackPadding)
			else
				self.props.StepAnimation(tick)
			end
		end
	end
end

function TimelineContainer:render()
	local props = self.props
	local theme = props.Theme:get("PluginTheme")
	local startTick = props.StartTick
	local endTick = props.EndTick
	local lastTick = props.LastTick
	local displayFrameRate = props.DisplayFrameRate
	local showAsSeconds = props.ShowAsSeconds
	local layoutOrder = props.LayoutOrder
	local parentSize = props.ParentSize
	local animationData = props.AnimationData

	if GetFFlagUseTicks() then
		startTick = startTick * displayFrameRate / Constants.TICK_FREQUENCY
		endTick = endTick * displayFrameRate / Constants.TICK_FREQUENCY
		-- lastTick is optional
		lastTick = lastTick and (lastTick * displayFrameRate / Constants.TICK_FREQUENCY) or nil
	end

	local majorInterval, minorInterval = calculateIntervals(
		parentSize.X - self.props.TrackPadding,
		startTick,
		endTick)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, Constants.TIMELINE_HEIGHT),
		LayoutOrder = layoutOrder,
		BorderSizePixel = 1,
		BackgroundColor3 = theme.timelineTheme.backgroundColor,
		BorderColor3 = theme.borderColor,
		ZIndex = 1,
	}, {
		Timeline = Roact.createElement(Timeline, {
			StartTick = startTick,
			EndTick = endTick,
			LastTick = lastTick,
			MajorInterval = majorInterval,
			MinorInterval = minorInterval,
			Position = UDim2.new(0, self.props.TrackPadding / 2, 0, 0),
			Height = Constants.TIMELINE_HEIGHT,
			Width = parentSize.X - self.props.TrackPadding,
			TickHeightScale = 0.7,
			SmallTickHeightScale = 0.3,
			SampleRate = displayFrameRate,
			ShowAsTime = showAsSeconds,
			OnInputBegan = self.onTimelineClicked,
			OnDragMoved = self.onScrubberMoved,
			AnimationData = animationData,
			DisplayFrameRate = displayFrameRate,
		}),
		KeyboardListener = Roact.createElement(KeyboardListener, {
			OnKeyPressed = function(input)
				if Input.isLeftBracket(input.KeyCode) then
					self.moveScrubberBackward()
				end
				if Input.isRightBracket(input.KeyCode) then
					self.moveScrubberForward()
				end
			end,
		}),
	})
end

if FFlagAnimationClipEditorWithContext then
	TimelineContainer = withContext({
		Theme = ContextServices.Theme,
	})(TimelineContainer)
else
	ContextServices.mapToProps(TimelineContainer, {
		Theme = ContextServices.Theme,
	})
end



return TimelineContainer
