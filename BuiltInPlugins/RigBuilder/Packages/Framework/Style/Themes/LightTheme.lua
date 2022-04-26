local Framework = script.Parent.Parent.Parent
local StyleKey = require(Framework.Style.StyleKey)
local Colors = require(Framework.Style.Colors)

local FFlagEnablePublishPlaceAsStylizer = game:GetFastFlag("EnablePublishPlaceAsStylizer")
local FFlagEnableGameSettingsStylizer = game:GetFastFlag("EnableGameSettingsStylizer")

return {
	[StyleKey.Border] = Color3.fromRGB(182, 182, 182),
	[StyleKey.BrightText] = Colors.Black,
	[StyleKey.Button] = Colors.White,
	[StyleKey.ButtonText] = Colors.Black,
	[StyleKey.ButtonHover] = Color3.fromRGB(228, 238, 254),
	[StyleKey.ButtonDisabled] = Colors.White,
	[StyleKey.ButtonTextDisabled] = Color3.fromRGB(102, 102, 102),
	[StyleKey.ButtonPressed] = Color3.fromRGB(219, 219, 219),
	[StyleKey.ButtonSelected] = Color3.fromRGB(228, 238, 254),
	[StyleKey.ImageButtonBackground] = Color3.fromRGB(182, 182, 182),
	[StyleKey.ImageButtonHover] = Colors.lighter(Color3.fromRGB(182, 182, 182), 0.26),

	[StyleKey.Icon] = Color3.fromRGB(128, 128, 128),
	[StyleKey.IconBackgroundColor] = if FFlagEnablePublishPlaceAsStylizer then Colors.Gray_Lightest else nil,
	[StyleKey.IconImageColor] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(151, 151, 151) else nil,

	[StyleKey.ToolbarBackgroundColor] = Color3.fromRGB(0, 0, 0),
	[StyleKey.ToolbarButtonBackgroundColor] = Color3.fromRGB(39, 39, 39),

	[StyleKey.CategoryItem] = Color3.fromRGB(233, 233, 233),
	[StyleKey.CurrentMarker] = Colors.Blue,
	[StyleKey.CurrentMarkerSelected] = Colors.Blue,

	[StyleKey.DialogButton] = Colors.White,
	[StyleKey.DialogButtonBorder] = Colors.Gray_Light,
	[StyleKey.DialogButtonHover] = Colors.Blue_Light,
	[StyleKey.DialogButtonPressed] = Color3.fromRGB(219, 219, 219),
	[StyleKey.DialogButtonText] = Colors.Black,
	[StyleKey.DialogMainButton] = Colors.Blue,
	[StyleKey.DialogMainButtonDisabled] = Color3.fromRGB(153, 218, 255),
	[StyleKey.DialogMainButtonHover] = Colors.Blue_Light,
	[StyleKey.DialogMainButtonPressed] = Colors.Blue_Dark,
	[StyleKey.DialogMainButtonSelected] = Colors.Blue_Dark,
	[StyleKey.DialogMainButtonText] = Colors.White,
	[StyleKey.DialogMainButtonTextDisabled] = Colors.White,
	[StyleKey.DimmedText] = Color3.fromRGB(136, 136, 136),
	[StyleKey.Dropdown] = Colors.White,

	[StyleKey.ErrorText] = Colors.Red,

	[StyleKey.InputFieldBackground] = Colors.White,
	[StyleKey.InputFieldBackgroundDisabled] = Color3.fromRGB(231, 231, 231),
	[StyleKey.InputFieldBorder] = Color3.fromRGB(200, 200, 200),
	[StyleKey.InputFieldBorderDisabled] = Color3.fromRGB(182, 182, 182),
	[StyleKey.InputFieldBorderHover] = Colors.Blue,
	[StyleKey.InputFieldBorderSelected] = Colors.Blue,
	[StyleKey.Item] = Colors.White,
	[StyleKey.ItemHovered] = Colors.Gray,
	[StyleKey.ItemSelected] = Colors.Blue_Dark,

	[StyleKey.Light] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(243, 243, 243) else nil,
	[StyleKey.LinkText] = Colors.Blue_Light,

	[StyleKey.MainBackground] = Colors.White,
	[StyleKey.MainButton] = Color3.fromRGB(228, 238, 254),
	[StyleKey.MainText] = Colors.Black,
	[StyleKey.MainTextDisabled] = Color3.fromRGB(120, 120, 120),
	[StyleKey.MainTextHover] = Colors.Black,
	[StyleKey.MainTextSelected] = Colors.White,
	[StyleKey.MenuBarBackground] = if FFlagEnablePublishPlaceAsStylizer or FFlagEnableGameSettingsStylizer then Colors.Gray_Lightest else nil,
	[StyleKey.MenuEntryHighlight] = if FFlagEnablePublishPlaceAsStylizer or FFlagEnableGameSettingsStylizer then Colors.Blue else nil,
	[StyleKey.MenuEntryHover] = if FFlagEnablePublishPlaceAsStylizer or FFlagEnableGameSettingsStylizer then Colors.Gray_Light else nil,
	[StyleKey.Mid] = Color3.fromRGB(238, 238, 238),
	[StyleKey.SubBackground] = Colors.Gray_Lighter,
	[StyleKey.SubBackground2] = Colors.Gray_Lightest,

	[StyleKey.RadioButtonDisabledImage] = "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot.png",
	[StyleKey.RibbonTab] = Color3.fromRGB(243, 243, 243),

	[StyleKey.ScrollBarBackground] = Color3.fromRGB(238, 238, 238),
	[StyleKey.ScrollBar] = Colors.Gray_Light,
	[StyleKey.SliderKnobColor] = Colors.White,
	[StyleKey.SliderKnobImage] = "rbxasset://textures/DeveloperFramework/slider_knob_light.png",
	[StyleKey.SliderBackground] = Color3.fromRGB(204, 204, 204),
	[StyleKey.SubText] = Colors.Gray_Mid,

	[StyleKey.Tab] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(242, 242, 242) else nil,
	[StyleKey.TabHovered] = if FFlagEnablePublishPlaceAsStylizer then Colors.White else nil,
	[StyleKey.TabSelected] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(228, 238, 254) else nil,

	[StyleKey.TableItem] = Colors.Gray_Lightest,
	[StyleKey.TableItemSelected] = if FFlagEnablePublishPlaceAsStylizer then Color3.fromRGB(104, 148, 217) else nil,
	[StyleKey.Titlebar] = Color3.fromRGB(227, 227, 227),
	[StyleKey.TitlebarText] = Colors.Black,
	[StyleKey.ToggleOnImage] = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
	[StyleKey.ToggleOffImage] = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
	[StyleKey.ToggleDisabledImage] = "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",

	[StyleKey.CheckboxUncheckedImage] = "rbxasset://textures/DeveloperFramework/checkbox_unchecked_light.png",
	[StyleKey.CheckboxCheckedImage] = "rbxasset://textures/DeveloperFramework/checkbox_checked_light.png",
	[StyleKey.CheckboxIndeterminateImage] = "rbxasset://textures/DeveloperFramework/checkbox_indeterminate_light.png",
	[StyleKey.CheckboxDisabledImage] = "rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_light.png",

	[StyleKey.CheckedFieldBackgroundHover] = Color3.fromRGB(89, 93, 100),


	[StyleKey.WarningText] = Color3.fromRGB(255, 128, 0),

	Font = Enum.Font.SourceSans,
	TextSize = 18,
}
