PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOTEQKN R1 K0 [1] [+12]
  GETUPVAL R2 0
  GETUPVAL R5 1
  NOT R4 R5
  NAMECALL R2 R2 K1 ["ToggleSelectionHighlights"]
  CALL R2 2 0
  GETUPVAL R2 2
  GETUPVAL R4 1
  NOT R3 R4
  CALL R2 1 0
  RETURN R0 0
  JUMPIFNOTEQKN R1 K2 [2] [+6]
  GETUPVAL R2 0
  LOADB R4 0
  NAMECALL R2 R2 K3 ["ToggleTeamCreate"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"LayoutOrder", "OnClick", "Size", "StyleModifier"}]
  SETTABLEKS R1 R6 K1 ["LayoutOrder"]
  SETTABLEKS R2 R6 K2 ["OnClick"]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 32
  CALL R7 4 1
  SETTABLEKS R7 R6 K3 ["Size"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["Hover"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K4 ["StyleModifier"]
  NEWTABLE R7 0 1
  MOVE R8 R0
  SETLIST R7 R8 1 [1]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CollaboratorsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["use"]
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K4 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["useState"]
  LOADB R4 0
  CALL R3 1 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["useState"]
  LOADB R6 1
  CALL R5 1 2
  GETUPVAL R10 3
  LOADK R14 K7 ["Settings"]
  LOADK R15 K8 ["ShowSelections"]
  NAMECALL R12 R1 K9 ["getText"]
  CALL R12 3 1
  LOADN R13 22
  GETIMPORT R14 K13 [Enum.Font.SourceSans]
  GETUPVAL R15 4
  NAMECALL R10 R10 K14 ["GetTextSize"]
  CALL R10 5 1
  GETTABLEKS R9 R10 K15 ["X"]
  ADDK R8 R9 K6 [12]
  GETUPVAL R10 3
  LOADK R14 K7 ["Settings"]
  LOADK R15 K16 ["DisableTeamCreate"]
  NAMECALL R12 R1 K9 ["getText"]
  CALL R12 3 1
  LOADN R13 22
  GETIMPORT R14 K13 [Enum.Font.SourceSans]
  GETUPVAL R15 4
  NAMECALL R10 R10 K14 ["GetTextSize"]
  CALL R10 5 1
  GETTABLEKS R9 R10 K15 ["X"]
  FASTCALL2 MATH_MAX R8 R9 [+3]
  GETIMPORT R7 K19 [math.max]
  CALL R7 2 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K20 ["createElement"]
  LOADK R9 K21 ["Frame"]
  DUPTABLE R10 K27 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position", "ZIndex"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K22 ["BackgroundTransparency"]
  GETIMPORT R11 K30 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETTABLEKS R16 R2 K31 ["footer"]
  GETTABLEKS R15 R16 K32 ["height"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Size"]
  GETIMPORT R11 K34 [Vector2.new]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["AnchorPoint"]
  GETIMPORT R11 K36 [UDim2.fromScale]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["Position"]
  LOADN R11 2
  SETTABLEKS R11 R10 K26 ["ZIndex"]
  DUPTABLE R11 K40 [{"Border", "Button", "Menu"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K20 ["createElement"]
  LOADK R13 K41 ["UIStroke"]
  DUPTABLE R14 K45 [{"ApplyStrokeMode", "Thickness", "Color"}]
  GETIMPORT R15 K46 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R15 R14 K42 ["ApplyStrokeMode"]
  LOADN R15 1
  SETTABLEKS R15 R14 K43 ["Thickness"]
  GETTABLEKS R16 R2 K31 ["footer"]
  GETTABLEKS R15 R16 K47 ["borderColor"]
  SETTABLEKS R15 R14 K44 ["Color"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K37 ["Border"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K20 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K52 [{"OnClick", "LeftIcon", "IconColor", "Size", "Style", "Position", "AnchorPoint"}]
  NEWCLOSURE R15 P0
  CAPTURE VAL R4
  SETTABLEKS R15 R14 K48 ["OnClick"]
  GETTABLEKS R16 R2 K31 ["footer"]
  GETTABLEKS R15 R16 K53 ["moreIcon"]
  SETTABLEKS R15 R14 K49 ["LeftIcon"]
  GETTABLEKS R16 R2 K31 ["footer"]
  GETTABLEKS R15 R16 K54 ["iconColor"]
  SETTABLEKS R15 R14 K50 ["IconColor"]
  GETIMPORT R15 K56 [UDim2.fromOffset]
  LOADN R16 16
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["Size"]
  LOADK R15 K57 ["IconOnly"]
  SETTABLEKS R15 R14 K51 ["Style"]
  GETIMPORT R15 K30 [UDim2.new]
  LOADN R16 1
  LOADN R17 252
  LOADK R18 K58 [0.5]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K25 ["Position"]
  GETIMPORT R15 K34 [Vector2.new]
  LOADN R16 1
  LOADK R17 K58 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["AnchorPoint"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K38 ["Button"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K20 ["createElement"]
  LOADK R13 K21 ["Frame"]
  DUPTABLE R14 K59 [{"Position", "AnchorPoint", "BackgroundTransparency"}]
  GETIMPORT R15 K30 [UDim2.new]
  LOADN R16 1
  LOADN R17 252
  LOADK R18 K58 [0.5]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K25 ["Position"]
  GETIMPORT R15 K34 [Vector2.new]
  LOADN R16 1
  LOADK R17 K58 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["AnchorPoint"]
  LOADN R15 1
  SETTABLEKS R15 R14 K22 ["BackgroundTransparency"]
  NEWTABLE R15 0 1
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K20 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K65 [{"Hide", "Items", "OnItemActivated", "OnRenderItem", "OnFocusLost", "Style"}]
  NOT R19 R3
  SETTABLEKS R19 R18 K60 ["Hide"]
  NEWTABLE R19 0 2
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K20 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K68 [{"Text", "TextXAlignment"}]
  LOADK R25 K7 ["Settings"]
  LOADK R26 K8 ["ShowSelections"]
  NAMECALL R23 R1 K9 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K66 ["Text"]
  GETIMPORT R23 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K67 ["TextXAlignment"]
  DUPTABLE R23 K73 [{"Padding", "Image"}]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K20 ["createElement"]
  LOADK R25 K74 ["UIPadding"]
  DUPTABLE R26 K76 [{"PaddingLeft"}]
  GETIMPORT R27 K78 [UDim.new]
  LOADN R28 0
  LOADN R29 10
  CALL R27 2 1
  SETTABLEKS R27 R26 K75 ["PaddingLeft"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K71 ["Padding"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K20 ["createElement"]
  GETUPVAL R25 8
  DUPTABLE R26 K79 [{"Image", "Size", "Position", "AnchorPoint"}]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R28 R2 K31 ["footer"]
  GETTABLEKS R27 R28 K80 ["checkedIcon"]
  JUMPIF R27 [+4]
  GETTABLEKS R28 R2 K31 ["footer"]
  GETTABLEKS R27 R28 K81 ["uncheckedIcon"]
  SETTABLEKS R27 R26 K72 ["Image"]
  GETIMPORT R27 K56 [UDim2.fromOffset]
  LOADN R28 16
  LOADN R29 16
  CALL R27 2 1
  SETTABLEKS R27 R26 K23 ["Size"]
  GETIMPORT R27 K30 [UDim2.new]
  LOADN R28 1
  LOADN R29 248
  LOADK R30 K58 [0.5]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K25 ["Position"]
  GETIMPORT R27 K34 [Vector2.new]
  LOADN R28 1
  LOADK R29 K58 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K24 ["AnchorPoint"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K72 ["Image"]
  CALL R20 3 1
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K20 ["createElement"]
  GETUPVAL R22 7
  DUPTABLE R23 K83 [{"Text", "TextXAlignment", "TextColor"}]
  LOADK R26 K7 ["Settings"]
  LOADK R27 K16 ["DisableTeamCreate"]
  NAMECALL R24 R1 K9 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K66 ["Text"]
  GETIMPORT R24 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K67 ["TextXAlignment"]
  GETTABLEKS R25 R2 K31 ["footer"]
  GETTABLEKS R24 R25 K84 ["disableTeamCreateColor"]
  SETTABLEKS R24 R23 K82 ["TextColor"]
  DUPTABLE R24 K85 [{"Padding"}]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K20 ["createElement"]
  LOADK R26 K74 ["UIPadding"]
  DUPTABLE R27 K76 [{"PaddingLeft"}]
  GETIMPORT R28 K78 [UDim.new]
  LOADN R29 0
  LOADN R30 10
  CALL R28 2 1
  SETTABLEKS R28 R27 K75 ["PaddingLeft"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K71 ["Padding"]
  CALL R21 3 -1
  SETLIST R19 R20 -1 [1]
  SETTABLEKS R19 R18 K61 ["Items"]
  NEWCLOSURE R19 P1
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R19 R18 K62 ["OnItemActivated"]
  DUPCLOSURE R19 K86 [PROTO_2]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  SETTABLEKS R19 R18 K63 ["OnRenderItem"]
  NEWCLOSURE R19 P3
  CAPTURE VAL R4
  SETTABLEKS R19 R18 K64 ["OnFocusLost"]
  DUPTABLE R19 K90 [{"Width", "MaxHeight", "Offset"}]
  SETTABLEKS R7 R19 K87 ["Width"]
  LOADN R20 120
  SETTABLEKS R20 R19 K88 ["MaxHeight"]
  GETIMPORT R20 K34 [Vector2.new]
  LOADN R21 0
  LOADN R22 12
  CALL R20 2 1
  SETTABLEKS R20 R19 K89 ["Offset"]
  SETTABLEKS R19 R18 K51 ["Style"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  SETTABLEKS R12 R11 K39 ["Menu"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["Localization"]
  GETTABLEKS R6 R2 K10 ["Style"]
  GETTABLEKS R5 R6 K11 ["Stylizer"]
  GETTABLEKS R7 R2 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["StyleModifier"]
  GETTABLEKS R7 R2 K14 ["UI"]
  GETTABLEKS R8 R7 K15 ["IconButton"]
  GETTABLEKS R9 R7 K16 ["DropdownMenu"]
  GETTABLEKS R10 R7 K17 ["TextLabel"]
  GETTABLEKS R11 R7 K18 ["Button"]
  GETTABLEKS R12 R7 K19 ["Image"]
  GETIMPORT R13 K21 [game]
  LOADK R15 K22 ["TextService"]
  NAMECALL R13 R13 K23 ["GetService"]
  CALL R13 2 1
  GETIMPORT R14 K26 [Vector2.new]
  LOADN R15 232
  LOADN R16 1
  CALL R14 2 1
  DUPCLOSURE R15 K27 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R6
  RETURN R15 1
