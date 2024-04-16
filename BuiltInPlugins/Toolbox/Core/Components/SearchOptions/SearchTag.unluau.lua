-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Util.Images)
local var5 = require(var0.Core.Util.Constants)
local var6 = require(var0.Core.Components.RoundFrame)
local var7 = var3.ContextServices
local var8 = var3.Util.GetTextSize
local var9 = var5.SEARCH_TAG_HEIGHT
local var10 = var2.PureComponent:extend("SearchTag")
local var36 = {}
var36.Name = ""
var36.prefix = ""
var10.defaultProps = var36
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.prefix
   local var2 = arg1.props.Name
   local var3 = var8(var2, nil, nil, Vector2.new(0, 0)).X
   local var4 = var8(var1, var5.FONT_SIZE_MEDIUM, var5.FONT_BOLD, Vector2.new(0, 0)).X
   local var76 = {}
   var76.Size = UDim2.new(0, var4 + var3 + 10 + 16, 0, var9)
   var76.BackgroundColor3 = var0.searchTag.backgroundColor
   var76.BorderColor3 = var0.searchTag.borderColor
   var76.AnchorPoint = Vector2.new(0.5, 0.5)
   local var96 = UDim2.new(0.5, 0, 0.5, 0)
   var76.Position = var96
   local var98 = arg1.props.LayoutOrder
   var76.LayoutOrder = var96
   local var99 = {}
   local var103 = {}
   var103.PaddingLeft = UDim.new(0, 4)
   var103.PaddingRight = UDim.new(0, 4)
   var99.UIPadding = var2.createElement("UIPadding", var103)
   local var116 = {}
   var116.Font = var5.FONT_BOLD
   var116.TextSize = var5.FONT_SIZE_MEDIUM
   var116.TextColor3 = var0.searchTag.textColor
   var116.Size = UDim2.new(0, var4, 1, 0)
   var116.BackgroundTransparency = 1
   var116.ZIndex = 2
   var116.Text = var1
   var99.ByLabel = var2.createElement("TextLabel", var116)
   local var135 = {}
   var135.Font = var5.FONT
   var135.TextSize = var5.FONT_SIZE_MEDIUM
   var135.TextColor3 = var0.searchTag.textColor
   var135.Size = UDim2.new(0, var3, 1, 0)
   var135.Position = UDim2.new(0, var4 + 4, 0, 0)
   var135.BackgroundTransparency = 1
   var135.ZIndex = 2
   var135.Text = var2
   var99.NameLabel = var2.createElement("TextLabel", var135)
   local var160 = {}
   var160.AnchorPoint = Vector2.new(1, 0.5)
   var160.Position = UDim2.new(1, 0, 0.5, 0)
   var160.Size = UDim2.new(0, 10, 0, 10)
   var160.BackgroundTransparency = 1
   var160.Image = var4.DELETE_BUTTON
   var160.ImageColor3 = var0.searchTag.textColor
   var2.Event.Activated = arg1.props.onDelete
   var99.DeleteButton = var2.createElement("ImageButton", var160)
   return var2.createElement(var6, var76, var99)
end

function var10.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.prefix
   local var2 = arg1.props.Name
   local var3 = var8(var2, nil, nil, Vector2.new(0, 0)).X
   local var4 = var8(var1, var5.FONT_SIZE_MEDIUM, var5.FONT_BOLD, Vector2.new(0, 0)).X
   local var76 = {}
   var76.Size = UDim2.new(0, var4 + var3 + 10 + 16, 0, var9)
   var76.BackgroundColor3 = var0.searchTag.backgroundColor
   var76.BorderColor3 = var0.searchTag.borderColor
   var76.AnchorPoint = Vector2.new(0.5, 0.5)
   local var96 = UDim2.new(0.5, 0, 0.5, 0)
   var76.Position = var96
   local var98 = arg1.props.LayoutOrder
   var76.LayoutOrder = var96
   local var99 = {}
   local var103 = {}
   var103.PaddingLeft = UDim.new(0, 4)
   var103.PaddingRight = UDim.new(0, 4)
   var99.UIPadding = var2.createElement("UIPadding", var103)
   local var116 = {}
   var116.Font = var5.FONT_BOLD
   var116.TextSize = var5.FONT_SIZE_MEDIUM
   var116.TextColor3 = var0.searchTag.textColor
   var116.Size = UDim2.new(0, var4, 1, 0)
   var116.BackgroundTransparency = 1
   var116.ZIndex = 2
   var116.Text = var1
   var99.ByLabel = var2.createElement("TextLabel", var116)
   local var135 = {}
   var135.Font = var5.FONT
   var135.TextSize = var5.FONT_SIZE_MEDIUM
   var135.TextColor3 = var0.searchTag.textColor
   var135.Size = UDim2.new(0, var3, 1, 0)
   var135.Position = UDim2.new(0, var4 + 4, 0, 0)
   var135.BackgroundTransparency = 1
   var135.ZIndex = 2
   var135.Text = var2
   var99.NameLabel = var2.createElement("TextLabel", var135)
   local var160 = {}
   var160.AnchorPoint = Vector2.new(1, 0.5)
   var160.Position = UDim2.new(1, 0, 0.5, 0)
   var160.Size = UDim2.new(0, 10, 0, 10)
   var160.BackgroundTransparency = 1
   var160.Image = var4.DELETE_BUTTON
   var160.ImageColor3 = var0.searchTag.textColor
   var2.Event.Activated = arg1.props.onDelete
   var99.DeleteButton = var2.createElement("ImageButton", var160)
   return var2.createElement(var6, var76, var99)
end

fun0 = var7.withContext
local var187 = {}
var187.Stylizer = var7.Stylizer
var10 = fun0(var187)(var10)
return var10
