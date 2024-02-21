-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Styling.createStyleRule
local var83 = require(var0.Src.Util.SharedFlags.getFFlagNotificationsMarkAllAsRead)()
if var83 then
   var83 = var1
   local var86 = {}
   var86.Size = UDim2.new(1, 0, 1, 0)
   var86.BackgroundColor3 = "$BackgroundPaper"
   var86.BorderSizePixel = 0
   local var98 = {}
   var98.Size = UDim2.new(1, 65532, 1, 65498)
   var98.Position = UDim2.new(0, 0, 0, 38)
   var98.CanvasSize = UDim2.new(1, 65532, 1, 65498)
   var98.AutomaticCanvasSize = Enum.AutomaticSize.Y
   var98.BackgroundTransparency = 1
   var98.BorderSizePixel = 0
   var98.ScrollBarThickness = 6
   var98.ScrollBarImageColor3 = "$NotificationScrollBarColor"
   var98.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
   var98.ScrollingDirection = Enum.ScrollingDirection.Y
   local var133 = {}
   var133.FillDirection = Enum.FillDirection.Vertical
   var133.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var133.SortOrder = Enum.SortOrder.LayoutOrder
   var133.VerticalAlignment = Enum.VerticalAlignment.Top
   var133.Padding = UDim.new(0, 4)
   local var149 = var1("::UIListLayout", var133)
   local var0 = var1(">> .Component-NotificationTrayScrollingFrame", var98, {})
   local var156 = {}
   var156.Size = UDim2.new(1, 0, 0, 0)
   var156.AutomaticSize = Enum.AutomaticSize.Y
   var156.BackgroundTransparency = 1
   local var168 = {}
   var168.PaddingTop = UDim.new(0, 12)
   var168.PaddingBottom = UDim.new(0, 12)
   local var1 = var1("::UIPadding", var168)
   local var2 = var1(">> .Component-NotificationTrayLoading", var156, {})
   return var83(".Component-NotificationTray", var86, {})
end
var83 = var1
local var194 = {}
var194.Size = UDim2.new(1, 0, 1, 0)
var194.BackgroundColor3 = "$BackgroundDefault"
var194.BorderSizePixel = 0
local var207 = {}
var207.FillDirection = Enum.FillDirection.Vertical
var207.HorizontalAlignment = Enum.HorizontalAlignment.Left
var207.SortOrder = Enum.SortOrder.LayoutOrder
var207.VerticalAlignment = Enum.VerticalAlignment.Top
local var4 = var1("::UIListLayout", var207)
local var223 = {}
var223.Size = UDim2.new(1, 65531, 1, 65493)
var223.CanvasSize = UDim2.new(1, 65531, 1, 65493)
var223.AutomaticCanvasSize = Enum.AutomaticSize.Y
var223.BackgroundTransparency = 1
var223.BorderSizePixel = 0
var223.ScrollBarThickness = 6
var223.ScrollBarImageColor3 = "$NotificationScrollBarColor"
var223.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
var223.ScrollingDirection = Enum.ScrollingDirection.Y
local var251 = {}
var251.FillDirection = Enum.FillDirection.Vertical
var251.HorizontalAlignment = Enum.HorizontalAlignment.Left
var251.SortOrder = Enum.SortOrder.LayoutOrder
var251.VerticalAlignment = Enum.VerticalAlignment.Top
var251.Padding = UDim.new(0, 6)
local var261 = var1("::UIListLayout", var251)
local var5 = var1(">> .Component-NotificationTrayScrollingFrame", var223, {})
local var265 = {}
var265.Size = UDim2.new(1, 0, 0, 0)
var265.AutomaticSize = Enum.AutomaticSize.Y
var265.BackgroundTransparency = 1
local var284 = {}
var284.PaddingTop = UDim.new(0, 12)
var284.PaddingBottom = UDim.new(0, 12)
local var6 = var1("::UIPadding", var284)
local var7 = var1(">> .Component-NotificationTrayLoading", var265, {})
return var83(".Component-NotificationTray", var194, {})
