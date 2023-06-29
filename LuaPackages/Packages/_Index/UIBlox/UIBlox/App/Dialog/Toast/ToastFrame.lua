local ToastRoot = script.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ToastIcon = require(ToastRoot.ToastIcon)
local ToastText = require(ToastRoot.ToastText)

local PrimarySystemButton = require(AppRoot.Button.PrimarySystemButton)

local StandardButtonSize = require(UIBloxRoot.Core.Button.Enum.StandardButtonSize)
local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)

local ToastFrame = Roact.PureComponent:extend("ToastFrame")

ToastFrame.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	buttonProps = t.optional(t.strictInterface({
		buttonDimensions = t.Vector2,
		buttonText = t.string,
		onActivated = t.callback,
	})),
	iconProps = t.optional(ToastIcon.validateProps),
	iconChildren = t.optional(t.table),
	isCompact = t.optional(t.boolean),
	layoutOrder = t.optional(t.integer),
	padding = t.numberMin(0),
	position = t.optional(t.UDim2),
	size = t.UDim2,
	subtitleTextProps = t.optional(ToastText.validateProps),
	textFrameSize = t.UDim2,
	titleTextProps = ToastText.validateProps,
})

ToastFrame.defaultProps = {
	padding = 0,
	size = UDim2.new(1, 0, 1, 0),
	textFrameSize = UDim2.new(1, 0, 1, 0),
}

function ToastFrame:render()
	local buttonProps = if UIBloxConfig.enableToastButton then self.props.buttonProps else nil
	local buttonText = buttonProps and buttonProps.buttonText
	local buttonHeight = buttonProps and buttonProps.buttonDimensions.Y
	local buttonWidth = buttonProps and buttonProps.buttonDimensions.X
	local isCompact = if UIBloxConfig.enableToastButton then self.props.isCompact else nil
	local iconProps = self.props.iconProps
	local onActivated = buttonProps and buttonProps.onActivated
	local padding = self.props.padding
	local subtitleTextProps = self.props.subtitleTextProps

	return Roact.createElement("Frame", {
		AnchorPoint = self.props.anchorPoint,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		LayoutOrder = self.props.layoutOrder,
		Position = self.props.position,
		Size = self.props.size,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = if UIBloxConfig.enableToastButton and isCompact
				then Enum.FillDirection.Vertical
				else Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, padding),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = if UIBloxConfig.enableToastButton
				then if isCompact then Enum.HorizontalAlignment.Center else Enum.HorizontalAlignment.Left
				else nil,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		UIPadding = (padding > 0) and Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, padding),
			PaddingLeft = UDim.new(0, padding),
			PaddingRight = UDim.new(0, padding),
			PaddingTop = UDim.new(0, padding),
		}),
		ToastIcon = if not UIBloxConfig.enableToastButton
			then iconProps and Roact.createElement(
				ToastIcon,
				Cryo.Dictionary.join(iconProps, {
					LayoutOrder = 1,
				}),
				self.props.iconChildren
			)
			else nil,
		ToastTextFrame = if not UIBloxConfig.enableToastButton
			then Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = self.props.textFrameSize,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				ToastTitle = Roact.createElement(
					ToastText,
					Cryo.Dictionary.join(self.props.titleTextProps, {
						LayoutOrder = 1,
					})
				),
				ToastSubtitle = subtitleTextProps and Roact.createElement(
					ToastText,
					Cryo.Dictionary.join(subtitleTextProps, {
						LayoutOrder = 2,
					})
				),
			})
			else nil,
		ToastMessageFrame = if UIBloxConfig.enableToastButton
			then Roact.createElement("Frame", {
				AnchorPoint = self.props.anchorPoint,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ClipsDescendants = true,
				LayoutOrder = 1,
				Position = self.props.position,
				Size = if not buttonProps
					then self.props.size
					elseif isCompact then UDim2.new(1, 0, 1, -buttonHeight)
					else UDim2.new(1, -buttonWidth, 1, 0),
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, padding),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = if isCompact then Enum.VerticalAlignment.Top else Enum.VerticalAlignment.Center,
				}),
				ToastIcon = iconProps and Roact.createElement(
					ToastIcon,
					Cryo.Dictionary.join(iconProps, {
						LayoutOrder = 1,
					}),
					self.props.iconChildren
				),
				ToastTextFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Size = self.props.textFrameSize,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					ToastTitle = Roact.createElement(
						ToastText,
						Cryo.Dictionary.join(self.props.titleTextProps, {
							LayoutOrder = 1,
						})
					),
					ToastSubtitle = subtitleTextProps and Roact.createElement(
						ToastText,
						Cryo.Dictionary.join(subtitleTextProps, {
							LayoutOrder = 2,
						})
					),
				}),
			})
			else nil,
		ToastButton = if UIBloxConfig.enableToastButton
			then buttonProps and Roact.createElement(PrimarySystemButton, {
				fitContent = not isCompact,
				layoutOrder = 2,
				maxWidth = if not isCompact then buttonProps.buttonDimensions.X else nil,
				onActivated = onActivated,
				standardSize = StandardButtonSize.Small,
				text = buttonText,
			})
			else nil,
	})
end

return ToastFrame
