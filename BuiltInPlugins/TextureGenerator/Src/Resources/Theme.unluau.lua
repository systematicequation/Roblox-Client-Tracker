-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Style
local var4 = var3.StyleKey
local var5 = var3.ComponentSymbols
local var6 = var2.UIData
local var7 = require(var6.Alert.style)
local var8 = require(var0.Src.Types)
var5:add("EntryArea")
local var36 = {}
var36.BackgroundColor = var4.Titlebar
var5.EntryArea = var36
var5:add("GenerationAngleHelp")
local var41 = {}
var41.AnchorPoint = Vector2.new(0, 0)
local var46 = {}
var46.Color = var4.TextSecondary
var46.Image = "rbxasset://textures/StudioSharedUI/Help.png"
var46.Size = UDim2.fromOffset(16, 16)
var41.HelpImage = var46
local var53 = {}
var53.Top = 8
var53.Left = 8
var53.Right = 8
var41.Padding = var53
var41.Position = UDim2.new(0, 0, 0, 0)
var41.Spacing = 8
var41.TextStyle = "Label"
var41.ZIndex = 1
var5.GenerationAngleHelp = var41
var5:add("PreviewArea")
local var69 = {}
var69.GenerateButtonSize = UDim2.fromOffset(130, 32)
var69.GenerateButtonStyle = "RoundPrimary"
var69.LeftIcon = "rbxasset://textures/DeveloperFramework/icon_backward.png"
var69.RightIcon = "rbxasset://textures/DeveloperFramework/icon_forward.png"
var69.Padding = 8
var69.PreviewLabelSize = UDim2.new(1, 0, 0, 24)
var69.PreviewLabelStyle = "Label"
var69.PromptLabelSize = UDim2.new(1, 0, 0, 80)
var69.Size = UDim2.new(1, 0, 0, 300)
var5.PreviewArea = var69
local var14 = UDim2.fromOffset(75, 32)
local var15 = UDim2.fromOffset(42, 42)
local var16 = UDim2.fromOffset(32, 32)
local var17 = {}
var17.Left = 0
var17.Right = 4
local var18 = var17.Left + var17.Right
local var19 = var15.X.Offset + var14.X.Offset + var18
var5:add("GenerationCard")
local var134 = {}
var134.BackgroundColor = var4.MainBackground
var134.CancelButtonSize = var14
var134.CancelButtonStyle = "Round"
var134.InstanceViewSize = var15
var134.MenuButtonSize = var16
var134.Padding = var17
var134.PreviewImageSize = UDim2.fromOffset(42, 42)
var134.ProgressBarWidth = UDim.new(1, var19)
var134.PromptLabelProgressSize = UDim2.new(1, var19, 0, 40)
var134.PromptLabelSize = UDim2.new(1, var15.X.Offset + var16.X.Offset + var18, 0, 40)
var134.StrokeColor = var4.Border
var134.SelectedStrokeColor = var4.DialogMainButton
var134.ErrorStrokeColor = var4.WarningMain
var5.GenerationCard = var134
var5:add("ViewSelector")
local var159 = {}
var159.BackgroundColor = var4.Titlebar
var159.DisablePan = true
var159.DisableZoom = true
var159.InitialFocusDirection = Vector3.new(0, 0, 1)
var159.LightColor = Color3.new(1, 1, 1)
var159.LightDirection = Vector3.new(1, 1, 1)
var159.Size = UDim2.new(1, 0, 0, 300)
var5.ViewSelector = var159
local var186 = var1.Dictionary
var186 = var7
local var188 = {}
local var192 = {}
var192.HorizontalPadding = UDim.new(0, 12)
var188.&EntryError = var1.Dictionary.join(var7.&Error, var192)
var5.Alert = var186.join(var186, var188)
local var200 = var1.Dictionary
var200 = require(var6.Image.style)
local var202 = {}
local var203 = {}
var203.Color = var4.TextPrimary
var202.&Colored = var203
local var205 = {}
var205.Color = var4.WarningMain
var202.&ColoredWarning = var205
local var207 = {}
var207.Image = var4.PreviewAreaNext
var207.Color = var4.TextPrimary
var207.AnchorPoint = Vector2.new(0.5, 0.5)
var207.Size = UDim2.fromOffset(16, 16)
var207.Position = UDim2.fromScale(0.5, 0.5)
var202.&PreviewAreaNext = var207
local var222 = {}
var222.Image = var4.PreviewAreaPrevious
var222.Color = var4.TextPrimary
var222.AnchorPoint = Vector2.new(0.5, 0.5)
var222.Size = UDim2.fromOffset(16, 16)
var222.Position = UDim2.fromScale(0.5, 0.5)
var202.&PreviewAreaPrevious = var222
var5.Image = var200.join(var200, var202)
local var239 = var1.Dictionary
var239 = require(var6.IconButton.style)
local var241 = {}
local var26 = {}
var26.BackgroundColor = var4.SecondaryMain
var26.Color = var4.SecondaryMuted
var26.Cursor = "PointingHand"
var26.HoverColor = var4.SecondaryStatesHoverBackground
var26.IconScaleType = Enum.ScaleType.Fit
var26.IconSize = 16
var26.ImageTransparency = 0.5
var26.Size = UDim2.fromOffset(24, 24)
var241.&PreviewAreaImageRotateButton = var26
var5.IconButton = var239.join(var239, var241)
return {}
