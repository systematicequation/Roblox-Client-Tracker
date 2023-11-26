PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["AssetId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K3 [tostring]
  CALL R3 1 1
  NAMECALL R1 R1 K4 ["CopyToClipboard"]
  CALL R1 2 0
  GETUPVAL R1 1
  DUPTABLE R3 K6 [{"copied"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["copied"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"copied"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["copied"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onCopyClicked"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R1 R3 K2 ["Stylizer"]
  GETTABLEKS R5 R4 K3 ["copied"]
  GETTABLEKS R6 R3 K4 ["YPos"]
  GETTABLEKS R7 R3 K5 ["AssetId"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  LOADK R9 K7 ["Frame"]
  DUPTABLE R10 K12 [{"BackgroundTransparency", "Position", "AnchorPoint", "Size"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K8 ["BackgroundTransparency"]
  GETIMPORT R11 K15 [UDim2.new]
  LOADK R12 K16 [0.5]
  LOADN R13 0
  LOADN R14 0
  MOVE R15 R6
  CALL R11 4 1
  SETTABLEKS R11 R10 K9 ["Position"]
  GETIMPORT R11 K18 [Vector2.new]
  LOADK R12 K16 [0.5]
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["AnchorPoint"]
  GETIMPORT R11 K15 [UDim2.new]
  LOADN R12 0
  LOADN R13 111
  LOADN R14 0
  LOADN R15 24
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  DUPTABLE R11 K21 [{"LayoutContainer", "CopiedLabel"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["createElement"]
  LOADK R13 K7 ["Frame"]
  DUPTABLE R14 K22 [{"BackgroundTransparency", "Size"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K8 ["BackgroundTransparency"]
  GETIMPORT R15 K15 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K11 ["Size"]
  DUPTABLE R15 K26 [{"UIListLayout", "IDLabel", "CopyButton"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["createElement"]
  LOADK R17 K23 ["UIListLayout"]
  DUPTABLE R18 K32 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R19 K35 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K27 ["FillDirection"]
  GETIMPORT R19 K37 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R19 R18 K28 ["HorizontalAlignment"]
  GETIMPORT R19 K38 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K29 ["VerticalAlignment"]
  GETIMPORT R19 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K30 ["SortOrder"]
  GETIMPORT R19 K42 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K31 ["Padding"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["UIListLayout"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["createElement"]
  LOADK R17 K43 ["TextLabel"]
  DUPTABLE R18 K50 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "TextXAlignment", "LayoutOrder"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K8 ["BackgroundTransparency"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K51 ["FONT"]
  SETTABLEKS R19 R18 K44 ["Font"]
  LOADK R20 K52 ["ID: "]
  MOVE R21 R7
  CONCAT R19 R20 R21
  SETTABLEKS R19 R18 K45 ["Text"]
  GETTABLEKS R20 R1 K53 ["uploadResult"]
  GETTABLEKS R19 R20 K54 ["idText"]
  SETTABLEKS R19 R18 K46 ["TextColor3"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K55 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R19 R18 K47 ["TextSize"]
  GETIMPORT R19 K15 [UDim2.new]
  LOADN R20 0
  LOADN R21 86
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K11 ["Size"]
  GETIMPORT R19 K56 [Enum.TextYAlignment.Center]
  SETTABLEKS R19 R18 K48 ["TextYAlignment"]
  GETIMPORT R19 K57 [Enum.TextXAlignment.Center]
  SETTABLEKS R19 R18 K49 ["TextXAlignment"]
  LOADN R19 1
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K24 ["IDLabel"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["createElement"]
  LOADK R17 K58 ["ImageButton"]
  NEWTABLE R18 8 0
  GETIMPORT R19 K15 [UDim2.new]
  LOADN R20 0
  LOADN R21 20
  LOADN R22 0
  LOADN R23 20
  CALL R19 4 1
  SETTABLEKS R19 R18 K11 ["Size"]
  LOADK R19 K59 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
  SETTABLEKS R19 R18 K60 ["Image"]
  GETTABLEKS R20 R1 K53 ["uploadResult"]
  GETTABLEKS R19 R20 K61 ["buttonColor"]
  SETTABLEKS R19 R18 K62 ["ImageColor3"]
  LOADN R19 1
  SETTABLEKS R19 R18 K8 ["BackgroundTransparency"]
  LOADN R19 2
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K63 ["Event"]
  GETTABLEKS R19 R20 K64 ["MouseButton1Click"]
  GETTABLEKS R20 R0 K65 ["onCopyClicked"]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["CopyButton"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K19 ["LayoutContainer"]
  MOVE R12 R5
  JUMPIFNOT R12 [+67]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["createElement"]
  LOADK R13 K43 ["TextLabel"]
  DUPTABLE R14 K66 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "AnchorPoint", "Position", "TextYAlignment", "TextXAlignment"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K8 ["BackgroundTransparency"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K51 ["FONT"]
  SETTABLEKS R15 R14 K44 ["Font"]
  GETTABLEKS R15 R3 K67 ["Localization"]
  LOADK R17 K68 ["AssetConfigUpload"]
  LOADK R18 K69 ["IDCopied"]
  NAMECALL R15 R15 K70 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K45 ["Text"]
  GETTABLEKS R16 R1 K53 ["uploadResult"]
  GETTABLEKS R15 R16 K71 ["greenText"]
  SETTABLEKS R15 R14 K46 ["TextColor3"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K55 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R15 R14 K47 ["TextSize"]
  GETIMPORT R15 K15 [UDim2.new]
  LOADN R16 0
  LOADN R17 64
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K11 ["Size"]
  GETIMPORT R15 K18 [Vector2.new]
  LOADN R16 0
  LOADK R17 K16 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K10 ["AnchorPoint"]
  GETIMPORT R15 K15 [UDim2.new]
  LOADN R16 0
  LOADN R17 116
  LOADK R18 K16 [0.5]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K9 ["Position"]
  GETIMPORT R15 K56 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K48 ["TextYAlignment"]
  GETIMPORT R15 K57 [Enum.TextXAlignment.Center]
  SETTABLEKS R15 R14 K49 ["TextXAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["CopiedLabel"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["StudioService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K11 ["Core"]
  GETTABLEKS R4 R5 K12 ["Util"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R4 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R4 K14 ["ContextHelper"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["withLocalization"]
  GETIMPORT R9 K9 [require]
  GETTABLEKS R10 R2 K16 ["Framework"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K17 ["ContextServices"]
  GETTABLEKS R9 R8 K18 ["withContext"]
  GETTABLEKS R10 R3 K19 ["PureComponent"]
  LOADK R12 K20 ["CopyID"]
  NAMECALL R10 R10 K21 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K22 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K23 ["init"]
  DUPCLOSURE R11 K24 [PROTO_3]
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K25 ["render"]
  DUPCLOSURE R11 K26 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K27 ["renderContent"]
  MOVE R11 R9
  DUPTABLE R12 K30 [{"Stylizer", "Localization"}]
  GETTABLEKS R13 R8 K28 ["Stylizer"]
  SETTABLEKS R13 R12 K28 ["Stylizer"]
  GETTABLEKS R13 R8 K29 ["Localization"]
  SETTABLEKS R13 R12 K29 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
