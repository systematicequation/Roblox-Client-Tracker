local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Packages = UIBlox.Parent

local shouldUseRefactorInteractable = UIBloxConfig.refactorInteractable or false

if shouldUseRefactorInteractable == false then
	return require(script.Parent.Interactable_DEPRECATED)
end

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

local ControlStateEnum = require(Core.Control.Enum.ControlState)
local ControlStateEventEnum = require(UIBlox.Core.Control.Enum.ControlStateEvent)
local useGuiControlState = require(Core.Control.Hooks.useGuiControlState)
local useInteractionFeedback = require(Core.Control.Hooks.useInteractionFeedback)

local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

type ControlState = ControlStateEnum.ControlState
export type ControlStateChangedCallback = useGuiControlState.ControlStateChangedCallback

type Table = { [any]: any }
type Props = {
	component: (React.ReactElement | string)?,
	isDisabled: boolean?,
	userInteractionEnabled: boolean?,
	onStateChanged: ControlStateChangedCallback,
	children: Table?,

	-- Note that this component can accept all valid properties of the Roblox ImageButton instance
	[any]: any,
}

local Interactable = function(props: Props, forwardedRef: React.Ref<Instance>)
	local guiObjectRef = if forwardedRef then forwardedRef else React.createRef()
	local isDisabled = React.useRef(nil) :: { current: boolean? }
	local triggerFeedback: any = if UIBloxConfig.enableInteractionFeedback then useInteractionFeedback() else nil

	-- This is a temporarily solution to handle the userInteractionEnabled prop until GuiState.NonInteractable is released
	-- userInteractionEnabled will just set a prop on an instance when GuiState.NonInteractable is released
	-- TODO: Refactor with GuiState.NonInteractable UISYS-2497
	local userInteractionEnabled =
		React.useRef(if props.userInteractionEnabled ~= nil then props.userInteractionEnabled else true)

	local onGuiStateChange = React.useCallback(function(oldState: ControlState, newState: ControlState)
		if UIBloxConfig.enableInteractionFeedback then
			-- TODO: UIBLOX-705, pass props.interactionID as first argument to triggerFeedback once default prop drilling is complete
			triggerFeedback(nil, oldState, newState)
		end
		if props.onStateChanged then
			props.onStateChanged(oldState, newState)
		end
	end, { props.onStateChanged } :: { any })

	local wrappedRef, guiStateTable = useGuiControlState(
		guiObjectRef :: React.Ref<Instance>,
		onGuiStateChange,
		userInteractionEnabled.current :: boolean
	)

	-- TODO: Refactor with GuiState.NonInteractable
	local wrappedActivated = React.useCallback(function(...)
		if userInteractionEnabled.current == false or props.isDisabled then
			return nil
		end
		if props[React.Event.Activated] then
			return props[React.Event.Activated](...)
		end
		return nil
	end, { props[React.Event.Activated], props.isDisabled } :: { any })

	React.useEffect(function()
		if props.isDisabled ~= nil then
			isDisabled.current = props.isDisabled
			if props.isDisabled then
				guiStateTable.events[ControlStateEventEnum.Disabled]()
			else
				guiStateTable.events[ControlStateEventEnum.Enabled]()
			end
		else
			if isDisabled.current == nil then
				isDisabled.current = false
				guiStateTable.events[ControlStateEventEnum.Enabled]()
			elseif isDisabled.current == true then
				isDisabled.current = false
				guiStateTable.events[ControlStateEventEnum.Enabled]()
			end
		end
	end, { props.isDisabled })

	-- TODO: Refactor with GuiState.NonInteractable UISYS-2497
	React.useEffect(function()
		if props.userInteractionEnabled ~= nil then
			userInteractionEnabled.current = props.userInteractionEnabled
		else
			userInteractionEnabled.current = true
		end
	end, { props.userInteractionEnabled })

	local component = props.component or ImageSetComponent.Button

	local mergedProps = Cryo.Dictionary.join(props, {
		ref = wrappedRef,
		onStateChanged = Cryo.None,
		isDisabled = Cryo.None,
		userInteractionEnabled = Cryo.None,
		[React.Event.Activated] = wrappedActivated,
	})

	return React.createElement(component, mergedProps)
end

return React.forwardRef(Interactable)
