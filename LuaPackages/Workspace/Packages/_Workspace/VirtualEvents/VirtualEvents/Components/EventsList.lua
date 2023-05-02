local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local RoactAppExperiment = require(VirtualEvents.Parent.RoactAppExperiment)
local PaginatedVerticalList = require(script.Parent.PaginatedVerticalList)
local ExposureLogger = require(script.Parent.ExposureLogger)
local sortEventsByStartDate = require(VirtualEvents.Common.sortEventsByStartDate)
local types = require(VirtualEvents.types)
local EventRow = require(script.Parent.EventRow)
local getFStringEventsOnExperienceDetailsPageLayer =
	require(VirtualEvents.Parent.SharedFlags).getFStringEventsOnExperienceDetailsPageLayer
local getFFlagRemoveVirtualEventsExperiment =
	require(VirtualEvents.Parent.SharedFlags).getFFlagRemoveVirtualEventsExperiment

type VirtualEvent = GraphQLServer.VirtualEvent

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local useUserExperiment = RoactAppExperiment.useUserExperiment

local PADDING = UDim.new(0, 12)

local defaultProps = {
	initialEventsShown = 1,
	extraEventsShownOnLoad = 3,
	isDesktopGrid = false,
}

export type Props = {
	virtualEvents: { VirtualEvent },
	currentTime: DateTime,
	layoutOrder: number?,
	initialEventsShown: number?,
	extraEventsShownOnLoad: number?,
	onRsvpChanged: ((virtualEvent: VirtualEvent, newRsvpStatus: types.RsvpStatus) -> ())?,
	onJoinEvent: ((virtualEvent: VirtualEvent) -> ())?,
	onTileActivated: ((virtualEvent: VirtualEvent) -> ())?,
	onEventImpression: ((virtualEvent: VirtualEvent) -> ())?,
	mockVirtualEventsMVPEnabled: boolean?, -- Remove this line with FFlagRemoveVirtualEventsExperiment
	isDesktopGrid: boolean?,
}

type InternalProps = Props & typeof(defaultProps)

local function EventsList(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)

	local virtualEventsMVPEnabled = if getFFlagRemoveVirtualEventsExperiment()
		then nil
		else useUserExperiment({
			getFStringEventsOnExperienceDetailsPageLayer(),
		}, function(layerVariables)
			local layer = layerVariables[getFStringEventsOnExperienceDetailsPageLayer()]
			return if layer then layer.virtualEventsMVPEnabled else nil
		end, false)

	if props.mockVirtualEventsMVPEnabled ~= nil then
		virtualEventsMVPEnabled = props.mockVirtualEventsMVPEnabled
	end

	local style = useStyle()
	local text = useLocalization({
		title = "Feature.VirtualEvents.EventsListTitle",
	})

	local onRsvpChanged = React.useCallback(function(virtualEvent: VirtualEvent, newRsvpStatus: types.RsvpStatus)
		if props.onRsvpChanged then
			props.onRsvpChanged(virtualEvent, newRsvpStatus)
		end
	end, { props.onRsvpChanged })

	local onJoinEvent = React.useCallback(function(virtualEvent: VirtualEvent)
		if props.onJoinEvent then
			props.onJoinEvent(virtualEvent)
		end
	end, {})

	local onTileActivated = React.useCallback(function(virtualEvent: VirtualEvent)
		if props.onTileActivated then
			props.onTileActivated(virtualEvent)
		end
	end, {})

	local onImpression = React.useCallback(function(virtualEvent: VirtualEvent)
		if props.onEventImpression then
			props.onEventImpression(virtualEvent)
		end
	end, { props.onEventImpression })

	if #props.virtualEvents == 0 then
		return nil :: any
	end

	local sortedVirtualEvents = sortEventsByStartDate(props.virtualEvents)

	local items = {}
	for _, virtualEvent in sortedVirtualEvents do
		local element = React.createElement(EventRow, {
			virtualEvent = virtualEvent,
			onRsvpChanged = function(...)
				onRsvpChanged(virtualEvent, ...)
			end,
			onJoinEvent = function()
				onJoinEvent(virtualEvent)
			end,
			onTileActivated = function()
				onTileActivated(virtualEvent)
			end,
			onImpression = function()
				onImpression(virtualEvent)
			end,
		})

		table.insert(items, element)
	end

	if getFFlagRemoveVirtualEventsExperiment() then
		return React.createElement("Frame", {
			LayoutOrder = props.layoutOrder,
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = PADDING,
			}),

			Title = React.createElement(StyledTextLabel, {
				layoutOrder = 1,
				text = text.title,
				colorStyle = style.Theme.TextEmphasis,
				fontStyle = style.Font.Header1,
			}),

			PaginatedList = React.createElement(PaginatedVerticalList, {
				layoutOrder = 2,
				initialItemsShown = props.initialEventsShown,
				extraItemsShownOnLoad = props.extraEventsShownOnLoad,
				items = items,
				isDesktopGrid = props.isDesktopGrid,
			}),
		})
	else
		return React.createElement("Frame", {
			LayoutOrder = props.layoutOrder,
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			ExposureLogger = React.createElement(ExposureLogger, {
				exposureLayer = getFStringEventsOnExperienceDetailsPageLayer(),
			}),

			-- Remove this wrapper when cleaning up the experiment
			Wrapper = if virtualEventsMVPEnabled
				then React.createElement("Frame", {
					Size = UDim2.fromScale(1, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
				}, {
					Layout = React.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = PADDING,
					}),

					Title = React.createElement(StyledTextLabel, {
						layoutOrder = 1,
						text = text.title,
						colorStyle = style.Theme.TextEmphasis,
						fontStyle = style.Font.Header1,
					}),

					PaginatedList = React.createElement(PaginatedVerticalList, {
						layoutOrder = 2,
						initialItemsShown = props.initialEventsShown,
						extraItemsShownOnLoad = props.extraEventsShownOnLoad,
						items = items,
						isDesktopGrid = props.isDesktopGrid,
					}),
				})
				else nil,
		})
	end
end

return EventsList
