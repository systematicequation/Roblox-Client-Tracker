local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local AnimatedGradient = require(script.Parent.AnimatedGradient)

local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)
local devOnly = require(UIBloxRoot.Utility.devOnly)

local ASSET_NAME = "component_assets/circle_42_stroke_3"
local ASSET_SIZE = 42

local validateProps = devOnly(t.strictInterface({
	cursorRef = t.table,
	isVisible = t.boolean
}))

return function(props)
	if UIBloxConfig.useAnimatedXboxCursors then
		assert(validateProps(props))
	end

	return withStyle(function(style)
		return Roact.createElement(ImageSetComponent.Label, {
			Image = Images[ASSET_NAME],
			ImageColor3 = UIBloxConfig.useAnimatedXboxCursors and style.Theme.SelectionCursor.AnimatedColor
				or style.Theme.SelectionCursor.Color,
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(ASSET_SIZE, ASSET_SIZE),
			Position = UDim2.new(0.5, -ASSET_SIZE / 2, 0.5, -ASSET_SIZE / 2),

			[Roact.Ref] = props.cursorRef,
		}, {
			AnimatedGradient = (UIBloxConfig.useAnimatedXboxCursors and props.isVisible)
				and Roact.createElement(AnimatedGradient) or nil
		})
	end)
end
