--!strict
--[[
    Implementation of the Unified Color System.
    See: https://www.figma.com/file/afPf1YESNBS6BWiyzgPdlM/Color-System-(Core)?node-id=945%3A1
]]

return {
	Black = { [0] = Color3.fromHex("#121212") },
	White = { [0] = Color3.fromHex("#FFFFFF") },
	Gray = {
		[10] = Color3.fromHex("#FAFAFA"),
		[20] = Color3.fromHex("#F6F6F6"),
		[30] = Color3.fromHex("#EDEDED"),
		[40] = Color3.fromHex("#E1E1E1"),
		[50] = Color3.fromHex("#CBCBCB"),
		[60] = Color3.fromHex("#989898"),
		[70] = Color3.fromHex("#565656"),
		[80] = Color3.fromHex("#3B3B3B"),
		[90] = Color3.fromHex("#2C2C2C"),
		[100] = Color3.fromHex("#222222"),
		[110] = Color3.fromHex("#1D1D1D"),
		[120] = Color3.fromHex("#171717"),
	},
	Blue = {
		[10] = Color3.fromHex("#D5F0FF"),
		[20] = Color3.fromHex("#AAE0FF"),
		[30] = Color3.fromHex("#80D0FF"),
		[40] = Color3.fromHex("#55C1FF"),
		[50] = Color3.fromHex("#2BB1FF"),
		[60] = Color3.fromHex("#00A2FF"),
		[70] = Color3.fromHex("#008BDB"),
		[80] = Color3.fromHex("#0074B6"),
		[90] = Color3.fromHex("#005D92"),
		[100] = Color3.fromHex("#00456D"),
		[110] = Color3.fromHex("#002E49"),
		[120] = Color3.fromHex("#001724"),
	},
	Green = {
		[10] = Color3.fromHex("#C9FFE6"),
		[20] = Color3.fromHex("#90FFCC"),
		[30] = Color3.fromHex("#5CFFB5"),
		[40] = Color3.fromHex("#26FF9C"),
		[50] = Color3.fromHex("#00E87E"),
		[60] = Color3.fromHex("#00B864"),
		[70] = Color3.fromHex("#009E56"),
		[80] = Color3.fromHex("#008347"),
		[90] = Color3.fromHex("#006939"),
		[100] = Color3.fromHex("#004F2B"),
		[110] = Color3.fromHex("#00351D"),
		[120] = Color3.fromHex("#001A0E"),
	},
	Purple = {
		[10] = Color3.fromHex("#E7DDFA"),
		[20] = Color3.fromHex("#CEBBF6"),
		[30] = Color3.fromHex("#B69AF1"),
		[40] = Color3.fromHex("#9E78EC"),
		[50] = Color3.fromHex("#8556E8"),
		[60] = Color3.fromHex("#6D34E3"),
		[70] = Color3.fromHex("#581DD2"),
		[80] = Color3.fromHex("#4918AF"),
		[90] = Color3.fromHex("#3B138C"),
		[100] = Color3.fromHex("#2C0E69"),
		[110] = Color3.fromHex("#1D0A46"),
		[120] = Color3.fromHex("#0F0523"),
	},
	Yellow = {
		[10] = Color3.fromHex("#FEF6E0"),
		[20] = Color3.fromHex("#FCECC1"),
		[30] = Color3.fromHex("#FBE3A2"),
		[40] = Color3.fromHex("#FADA82"),
		[50] = Color3.fromHex("#F8D063"),
		[60] = Color3.fromHex("#F7C744"),
		[65] = Color3.fromHex("#FFCE0B"),
		[70] = Color3.fromHex("#F5BA19"),
		[80] = Color3.fromHex("#D8A009"),
		[90] = Color3.fromHex("#AD8007"),
		[100] = Color3.fromHex("#816006"),
		[110] = Color3.fromHex("#564004"),
		[120] = Color3.fromHex("#2B2002"),
	},
	Orange = {
		[10] = Color3.fromHex("#FCE9DE"),
		[20] = Color3.fromHex("#FAD3BC"),
		[30] = Color3.fromHex("#F7BD9A"),
		[40] = Color3.fromHex("#F4A679"),
		[50] = Color3.fromHex("#F29057"),
		[60] = Color3.fromHex("#EF7A36"),
		[70] = Color3.fromHex("#E96113"),
		[80] = Color3.fromHex("#C2510F"),
		[90] = Color3.fromHex("#9B410C"),
		[100] = Color3.fromHex("#743109"),
		[110] = Color3.fromHex("#4E2006"),
		[120] = Color3.fromHex("#271003"),
	},
	Red = {
		[10] = Color3.fromHex("#FDE0DF"),
		[20] = Color3.fromHex("#FBC1BE"),
		[30] = Color3.fromHex("#F9A29E"),
		[40] = Color3.fromHex("#F6837E"),
		[50] = Color3.fromHex("#F4645D"),
		[60] = Color3.fromHex("#F2453D"),
		[70] = Color3.fromHex("#EF1E14"),
		[80] = Color3.fromHex("#CB160E"),
		[90] = Color3.fromHex("#A2120B"),
		[100] = Color3.fromHex("#7A0D08"),
		[110] = Color3.fromHex("#510905"),
		[120] = Color3.fromHex("#290403"),
	},
	Magenta = {
		[10] = Color3.fromHex("#FAE0F7"),
		[20] = Color3.fromHex("#F5C1EE"),
		[30] = Color3.fromHex("#F1A2E6"),
		[40] = Color3.fromHex("#EC83DE"),
		[50] = Color3.fromHex("#E764D5"),
		[60] = Color3.fromHex("#E245CD"),
		[70] = Color3.fromHex("#DB22C2"),
		[80] = Color3.fromHex("#B61CA2"),
		[90] = Color3.fromHex("#921781"),
		[100] = Color3.fromHex("#6D1161"),
		[110] = Color3.fromHex("#490B41"),
		[120] = Color3.fromHex("#240620"),
	},
	Turquoise = {
		[10] = Color3.fromHex("#CDFFFF"),
		[20] = Color3.fromHex("#9AFFFF"),
		[30] = Color3.fromHex("#68FFFF"),
		[40] = Color3.fromHex("#36FFFF"),
		[50] = Color3.fromHex("#03FFFF"),
		[60] = Color3.fromHex("#00D0D0"),
		[70] = Color3.fromHex("#00B2B2"),
		[80] = Color3.fromHex("#009595"),
		[90] = Color3.fromHex("#007777"),
		[100] = Color3.fromHex("#005959"),
		[110] = Color3.fromHex("#003B3B"),
		[120] = Color3.fromHex("#001E1E"),
	},
}
