--[[
    The Top Bar contains the buttons for displaying the overlay, going back and forwards, importing assets
        as well the search bar.

    Necessary Properties:
        OnOverlayActivated = callback, to display the overlay when the overlay button is clicked.
    Optional Properties:
]]

local Plugin = script.Parent.Parent.Parent
local FFlagStudioAssetManagerAddRecentlyImportedView = game:GetFastFlag("StudioAssetManagerAddRecentlyImportedView")
local FFlagDevFrameworkTooltipCustomContent = game:GetFastFlag("DevFrameworkTooltipCustomContent")

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Button = UI.Button
local HoverArea = UI.HoverArea
local LinkText = UI.LinkText
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local Tooltip = UI.Tooltip

local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local LayoutOrderIterator = Util.LayoutOrderIterator
local StyleModifier = Util.StyleModifier

local UILibrary = require(Plugin.Packages.UILibrary)
local SearchBar = UILibrary.Component.SearchBar
local DEPRECATED_StyledTooltip = UILibrary.Component.StyledTooltip -- Remove with FFlagDevFrameworkTooltipCustomContent
local GetTextSize = UILibrary.Util.GetTextSize

local SetRecentViewToggled = require(Plugin.Src.Actions.SetRecentViewToggled)
local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)
local SetToPreviousScreen = require(Plugin.Src.Actions.SetToPreviousScreen)
local SetToNextScreen = require(Plugin.Src.Actions.SetToNextScreen)
local SetView = require(Plugin.Src.Actions.SetView)

local LaunchBulkImport = require(Plugin.Src.Thunks.LaunchBulkImport)

local Screens = require(Plugin.Src.Util.Screens)
local View = require(Plugin.Src.Util.View)

local BulkImportService = game:GetService("BulkImportService")

local enableBadgesCallout = require(Plugin.Src.Util.AssetManagerUtilities).enableBadgesCallout
local TeachingCallout = enableBadgesCallout() and require(script.Parent.TeachingCallout) or nil

local TopBar = Roact.PureComponent:extend("TopBar")

function TopBar:init()
    self.OnTreeViewButtonActivated = function()
        local props = self.props
        props.OnOverlayActivated()
    end

    self.OnSearchRequested = function(searchTerm)
        local props = self.props
        props.Analytics:report("search")
        props.dispatchSetSearchTerm(searchTerm)
    end
end

function TopBar:render()
    local props = self.props
    local analytics = props.Analytics
    local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")
    local topBarTheme = theme.TopBar
    local localization = props.Localization

    local size = props.Size
    local layoutOrder = props.LayoutOrder

    local enabled = props.Enabled

    local recentViewToggled = props.RecentViewToggled
    local dispatchSetRecentViewToggled = props.dispatchSetRecentViewToggled

    local currentScreen = props.CurrentScreen
    local previousScreens = props.PreviousScreens
    local nextScreens = props.NextScreens
    local dispatchSetToPreviousScreen = props.dispatchSetToPreviousScreen
    local dispatchSetToNextScreen = props.dispatchSetToNextScreen
    local previousButtonEnabled = #previousScreens > 0
    local nextButtonEnabled = #nextScreens > 0

    local bulkImporterRunning = props.BulkImporterRunning
    local dispatchLaunchBulkImporter = props.dispatchLaunchBulkImporter
    local bulkImporterTooltipText = localization:getText("BulkImport", "BulkImportRunning")
    local bulkImporterLinkText = localization:getText("BulkImport", "BulkImportShowLink")
    local tooltipTextExtents = GetTextSize(bulkImporterTooltipText, topBarTheme.Tooltip.TextSize,
        theme.Font, Vector2.new(topBarTheme.Tooltip.Width, math.huge))
    local linkTextExtents = GetTextSize(bulkImporterLinkText, topBarTheme.Tooltip.TextSize,
        theme.Font, Vector2.new(topBarTheme.Tooltip.Width, math.huge))
    local tooltipHeight
	if FFlagDevFrameworkTooltipCustomContent then
		tooltipHeight = tooltipTextExtents.Y + topBarTheme.Tooltip.Padding + linkTextExtents.Y
	else
		tooltipHeight = tooltipTextExtents.Y + 3 * topBarTheme.Tooltip.Padding + linkTextExtents.Y
	end

    local view = props.View
    local dispatchSetView = props.dispatchSetView
    local viewStyle
    if view.Key == View.GRID.Key then
        viewStyle = "ListViewButton"
    elseif view.Key == View.LIST.Key then
        viewStyle = "GridViewButton"
    end

    local searchBarOffset = topBarTheme.Button.Size * 5 + topBarTheme.Padding * 4

    local defaultText = localization:getText("SearchBar", "PlaceholderText")
        .. " " .. localization:getText("Folders", currentScreen.Path)

    local layoutIndex = LayoutOrderIterator.new()

    local explorerOverlayButtonTooltipText = localization:getText("TopBar", "ExplorerOverlayButton")
    local backButtonTooltipText = localization:getText("TopBar", "BackButton")
    local forwardButtonTooltipText = localization:getText("TopBar", "ForwardButton")
    local bulkImportButtonTooltipText = localization:getText("TopBar", "BulkImportButton")
    local gridListToggleButtonTooltipText
    if view.Key == View.GRID.Key then
        gridListToggleButtonTooltipText = localization:getText("TopBar", "ListViewButton")
    elseif view.Key == View.LIST.Key then
        gridListToggleButtonTooltipText = localization:getText("TopBar", "GridViewButton")
    end

    return Roact.createElement("Frame", {
        Size = size,
        LayoutOrder = layoutOrder,

        BackgroundColor3 = theme.BackgroundColor,
        BorderColor3 = theme.BorderColor,
        BorderSizePixel = 1,
    }, {
        TopBarLayout = Roact.createElement("UIListLayout", {
            Padding = UDim.new(0, topBarTheme.Padding),
            FillDirection = Enum.FillDirection.Horizontal,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),

        Padding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, topBarTheme.Padding),
            PaddingRight = UDim.new(0, topBarTheme.Padding),
        }),

        ExplorerOverlayButton = Roact.createElement(Button, {
            Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            Style = "OverlayButton",

            OnClick = function()
                if enabled then
                    self.OnTreeViewButtonActivated()
                end
            end,
        }, {
            HoverArea = enabled and Roact.createElement(HoverArea, {
                Cursor = "PointingHand",
                MouseEnter = self.mouseEnter,
                MouseLeave = self.mouseLeave,
            }),

            Tooltip = enabled and Roact.createElement(Tooltip, {
                Text = explorerOverlayButtonTooltipText,
                Enabled = true,
            }),
        }),

        NavigationButtonsFrame = Roact.createElement("Frame", {
            Size = UDim2.new(0, 2 * topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            BackgroundTransparency = 1,
            LayoutOrder = layoutIndex:getNextOrder(),
        }, {
            ButtonLayout = Roact.createElement("UIListLayout", {
                Padding = UDim.new(0, 0),
                FillDirection = Enum.FillDirection.Horizontal,
                SortOrder = Enum.SortOrder.LayoutOrder,
            }),

            PreviousButton = Roact.createElement(Button, {
                Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
                AnchorPoint = Vector2.new(0.5, 0.5),
                LayoutOrder = 1,

                Style = "PreviousButton",
                StyleModifier = not previousButtonEnabled and StyleModifier.Disabled,

                OnClick = function()
                    if previousButtonEnabled and enabled then
                        dispatchSetToPreviousScreen(previousButtonEnabled)
                        if FFlagStudioAssetManagerAddRecentlyImportedView and recentViewToggled then
                            dispatchSetRecentViewToggled(false)
                        end
                    end
                end,
            }, {
                HoverArea = previousButtonEnabled and enabled and Roact.createElement(HoverArea, {
                    Cursor = "PointingHand",
                    MouseEnter = self.mouseEnter,
                    MouseLeave = self.mouseLeave,
                }),

                Tooltip = previousButtonEnabled and enabled and Roact.createElement(Tooltip, {
                    Text = backButtonTooltipText,
                    Enabled = true,
                }),
            }),

            NextButton = Roact.createElement(Button, {
                Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
                AnchorPoint = Vector2.new(0.5, 0.5),
                LayoutOrder = 2,

                Style = "NextButton",
                StyleModifier = not nextButtonEnabled and StyleModifier.Disabled,

                OnClick = function()
                    if nextButtonEnabled and enabled then
                        dispatchSetToNextScreen(nextButtonEnabled)
                        if FFlagStudioAssetManagerAddRecentlyImportedView and recentViewToggled then
                            dispatchSetRecentViewToggled(false)
                        end
                    end
                end,
            }, {
                HoverArea = nextButtonEnabled and enabled and Roact.createElement(HoverArea, {
                    Cursor = "PointingHand",
                    MouseEnter = self.mouseEnter,
                    MouseLeave = self.mouseLeave,
                }),

                Tooltip = nextButtonEnabled and enabled and Roact.createElement(Tooltip, {
                    Text = forwardButtonTooltipText,
                    Enabled = true,
                }),
            }),
        }),

        BulkImporterButton = Roact.createElement(Button, {
            Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            Style = "BulkImporterButton",
            StyleModifier = bulkImporterRunning and StyleModifier.Disabled,

            OnClick = function()
                if not bulkImporterRunning and enabled then
                    analytics:report("clickBulkImportButton")
                    dispatchLaunchBulkImporter(0)
                end
            end,
        }, {
            DEPRECATED_OpenBulkImporterTooltip = if not FFlagDevFrameworkTooltipCustomContent then Roact.createElement(DEPRECATED_StyledTooltip, {
                Elements = {
                    Roact.createElement("UIListLayout", {
                        Padding = UDim.new(0, topBarTheme.Tooltip.Padding),
                        FillDirection = Enum.FillDirection.Vertical,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                        SortOrder = Enum.SortOrder.LayoutOrder,
                    }),

                    Padding = Roact.createElement("UIPadding", {
                        PaddingTop = UDim.new(0, topBarTheme.Tooltip.Padding),
                        PaddingBottom = UDim.new(0, topBarTheme.Tooltip.Padding),
                    }),

                    Text = Roact.createElement("TextLabel", {
                        Size = UDim2.new(0, tooltipTextExtents.X, 0, tooltipTextExtents.Y),

                        BackgroundTransparency = 1,

                        Font = theme.Font,
                        Text = bulkImporterTooltipText,
                        TextColor3 = theme.TextColor,
                        TextSize = topBarTheme.Tooltip.TextSize,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        TextWrapped = true,

                        LayoutOrder = 1,
                    }),

                    LinkText = Roact.createElement(LinkText, {
                        Text = bulkImporterLinkText,
                        Style = "BulkImporterTooltip",

                        LayoutOrder = 2,

                        OnClick = function()
                            BulkImportService:ShowBulkImportView()
                        end,
                    }),
                },

                TooltipExtents = Vector2.new(topBarTheme.Tooltip.Width, tooltipHeight),
                Enabled = bulkImporterRunning,
            }) else nil,

            OpenBulkImporterTooltip = if FFlagDevFrameworkTooltipCustomContent then Roact.createElement(Tooltip, {
                Content = Roact.createElement(Pane, {
                    Layout = Enum.FillDirection.Vertical,
                    Spacing = topBarTheme.Tooltip.Padding,
                    Style = "Box",
                }, {
                    TextLabel = Roact.createElement(TextLabel, {
                        AutomaticSize = Enum.AutomaticSize.Y,
                        Font = theme.Font,
                        LayoutOrder = 1,
                        Size = UDim2.fromScale(1, 0),
                        Text = bulkImporterTooltipText,
                        TextSize = topBarTheme.Tooltip.TextSize,
                        TextWrapped = true,
                        TextXAlignment = Enum.TextXAlignment.Left,
                    }),

                    LinkText = Roact.createElement(LinkText, {
                        LayoutOrder = 2,
                        Style = "BulkImporterTooltip",
                        Text = bulkImporterLinkText,

                        OnClick = function()
                            BulkImportService:ShowBulkImportView()
                        end,
                    }),
                }),
                ContentExtents = Vector2.new(topBarTheme.Tooltip.Width, tooltipHeight),
                Enabled = bulkImporterRunning,
            }) else nil,

            HoverArea = not bulkImporterRunning and enabled and Roact.createElement(HoverArea, {
                Cursor = "PointingHand",
                MouseEnter = self.mouseEnter,
                MouseLeave = self.mouseLeave,
            }),

            BulkImportButtonTooltip = not bulkImporterRunning and enabled and Roact.createElement(Tooltip, {
                Text = bulkImportButtonTooltipText,
                Enabled = true,
            }),
        }),

        GridListToggleButton = Roact.createElement(Button, {
            Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            Style = viewStyle,
            StyleModifier = bulkImporterRunning and StyleModifier.Disabled,

            OnClick = function()
                if view.Key == View.GRID.Key then
                    dispatchSetView(View.LIST)
                elseif view.Key == View.LIST.Key then
                    dispatchSetView(View.GRID)
                end
            end,
        }, {
            HoverArea = not bulkImporterRunning and enabled and Roact.createElement(HoverArea, {
                Cursor = "PointingHand",
                MouseEnter = self.mouseEnter,
                MouseLeave = self.mouseLeave,
            }),

            Tooltip = enabled and Roact.createElement(Tooltip, {
                Text = gridListToggleButtonTooltipText,
                Enabled = true,
            }),

            TeachingCallout = enableBadgesCallout() and Roact.createElement(TeachingCallout, {
                DefinitionId = "AssetManagerBadgesDevProductCallout",
                LocationId = "GridListToggleButton",
            }),
        }),

        SearchBar = currentScreen.Path ~= Screens.MAIN.Path and Roact.createElement(SearchBar, {
            Size = UDim2.new(1, -searchBarOffset, 1, 0),
            LayoutOrder = layoutIndex:getNextOrder(),

            Enabled = enabled,

            TextSearchDelay = 0,
            DefaultText = defaultText,

            OnSearchRequested = self.OnSearchRequested,
        }),
    })
end

TopBar = withContext({
    Analytics = ContextServices.Analytics,
    Localization = ContextServices.Localization,
    Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
    Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(TopBar)

local function mapStateToProps(state, props)
    local previousScreens = state.Screen.previousScreens
    local nextScreens = state.Screen.nextScreens

	return {
        BulkImporterRunning = state.AssetManagerReducer.bulkImporterRunning,
        CurrentScreen = state.Screen.currentScreen,
        PreviousScreens = previousScreens,
        NextScreens = nextScreens,
        RecentViewToggled = state.AssetManagerReducer.recentViewToggled,
        View = state.AssetManagerReducer.view,
	}
end

local function mapDispatchToProps(dispatch)
	return {
        dispatchLaunchBulkImporter = function(assetType)
            dispatch(LaunchBulkImport(assetType))
        end,
        dispatchSetRecentViewToggled = function(toggled)
            dispatch(SetRecentViewToggled(toggled))
        end,
        dispatchSetSearchTerm = function(searchTerm)
            dispatch(SetSearchTerm(searchTerm))
        end,
        dispatchSetToPreviousScreen = function(enabled)
            if enabled then
                dispatch(SetToPreviousScreen())
            end
        end,
        dispatchSetToNextScreen = function(enabled)
            if enabled then
                dispatch(SetToNextScreen())
            end
        end,
        dispatchSetView = function(view)
            dispatch(SetView(view))
        end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TopBar)