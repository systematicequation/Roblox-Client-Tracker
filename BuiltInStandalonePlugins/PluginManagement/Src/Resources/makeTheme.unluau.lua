-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Style
local var1 = var0.StyleKey
local var2 = {}
var1.HttpOverviewTextColor = Color3.fromRGB(136, 136, 136)
var1.EmphasisTextColor = Color3.fromRGB(255, 255, 255)
var1.ScrollbarColor = Color3.fromRGB(204, 204, 204)
var1.SubTitleTextColor = Color3.fromRGB(170, 170, 170)
local var37 = {}
var37.Weight = 1
var37.StretchMargin = 7
var37.Color = Color3.fromRGB(170, 170, 170)
var2.Separator = var37
local var4 = {}
var1.HttpOverviewTextColor = Color3.fromRGB(46, 46, 46)
var1.EmphasisTextColor = Color3.fromRGB(0, 0, 0)
var1.ScrollbarColor = Color3.fromRGB(25, 25, 25)
var1.SubTitleTextColor = Color3.fromRGB(0, 0, 0)
local var70 = {}
var70.Weight = 1
var70.StretchMargin = 7
local var77 = Color3.fromRGB(0, 0, 0)
var70.Color = var77
var4.Separator = var70
var77 = var2
local var6 = var0.Themes.StudioTheme.new(var77, var4)
local var81 = {}
var81.BackgroundColor = var1.MainBackground
var81.ButtonColor = var1.Button
var81.HttpOverviewTextColor = var1.HttpOverviewTextColor
var81.ProgressBarColor = var1.DialogMainButtonSelected
var81.HoverColor = var1.ButtonHover
var81.BorderColor = var1.Border
var81.SubTextColor = var1.SubText
var81.InfoTextColor = var1.DimmedText
var81.SubTitleTextColor = var1.SubTitleTextColor
var81.EmphasisTextColor = var1.EmphasisTextColor
var81.TextColor = var1.MainText
var81.ErrorColor = var1.ErrorText
var81.LinkColor = var1.LinkText
var81.Green = Color3.fromRGB(64, 166, 81)
var81.White = Color3.fromRGB(255, 255, 255)
var81.DisabledColor = var1.MainTextDisabled
var81.ScrollbarColor = var1.ScrollbarColor
var81.ScrollbarTransparency = 0.7
var81.ScrollbarSize = 8
var81.Font = Enum.Font.SourceSans
var81.FontBold = Enum.Font.SourceSansSemibold
var6:extend(var81)
return var6
