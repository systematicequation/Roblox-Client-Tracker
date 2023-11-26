PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ConvertCharacters"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Analytics"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["RevertCharacters"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Analytics"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["convertCharacters"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["revertCharacters"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["processResultMessage"]
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  GETTABLEKS R6 R1 K5 ["Size"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["new"]
  CALL R7 0 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K12 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
  SETTABLEKS R3 R10 K2 ["LayoutOrder"]
  SETTABLEKS R6 R10 K5 ["Size"]
  GETIMPORT R11 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K8 ["Layout"]
  GETIMPORT R11 K18 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K9 ["HorizontalAlignment"]
  GETIMPORT R11 K20 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K10 ["VerticalAlignment"]
  GETTABLEKS R11 R5 K11 ["Spacing"]
  SETTABLEKS R11 R10 K11 ["Spacing"]
  DUPTABLE R11 K23 [{"ResultContainer", "FooterButtons"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K27 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundColor3", "BorderSizePixel", "Padding", "Size", "Spacing"}]
  GETIMPORT R15 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K8 ["Layout"]
  GETIMPORT R15 K18 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K9 ["HorizontalAlignment"]
  GETIMPORT R15 K20 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K10 ["VerticalAlignment"]
  GETTABLEKS R15 R5 K28 ["ProcessResultBackgroundColor"]
  SETTABLEKS R15 R14 K24 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K25 ["BorderSizePixel"]
  GETTABLEKS R15 R5 K29 ["ResultContainerPadding"]
  SETTABLEKS R15 R14 K26 ["Padding"]
  GETTABLEKS R15 R5 K30 ["ResultContainerSize"]
  SETTABLEKS R15 R14 K5 ["Size"]
  GETTABLEKS R15 R5 K31 ["ResultContainerSpacing"]
  SETTABLEKS R15 R14 K11 ["Spacing"]
  DUPTABLE R15 K34 [{"Separator", "ProcessResult"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K37 [{"DominantAxis", "LayoutOrder", "Style"}]
  GETIMPORT R19 K39 [Enum.DominantAxis.Width]
  SETTABLEKS R19 R18 K35 ["DominantAxis"]
  NAMECALL R19 R7 K40 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  GETTABLEKS R19 R5 K41 ["SeparatorStyle"]
  SETTABLEKS R19 R18 K36 ["Style"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K32 ["Separator"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K44 [{"Size", "LayoutOrder", "Text", "TextXAlignment"}]
  GETTABLEKS R19 R5 K45 ["ResultSize"]
  SETTABLEKS R19 R18 K5 ["Size"]
  NAMECALL R19 R7 K40 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  ORK R19 R4 K46 [""]
  SETTABLEKS R19 R18 K42 ["Text"]
  GETIMPORT R19 K47 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K43 ["TextXAlignment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["ProcessResult"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K21 ["ResultContainer"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K49 [{"LayoutOrder", "Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  NAMECALL R15 R7 K40 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K2 ["LayoutOrder"]
  GETIMPORT R15 K52 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K5 ["Size"]
  GETIMPORT R15 K54 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K48 ["AutomaticSize"]
  GETIMPORT R15 K56 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K8 ["Layout"]
  GETIMPORT R15 K58 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R15 R14 K9 ["HorizontalAlignment"]
  GETIMPORT R15 K60 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K10 ["VerticalAlignment"]
  GETTABLEKS R15 R5 K61 ["ButtonSpacing"]
  SETTABLEKS R15 R14 K11 ["Spacing"]
  GETTABLEKS R15 R5 K62 ["ButtonPadding"]
  SETTABLEKS R15 R14 K26 ["Padding"]
  DUPTABLE R15 K65 [{"RevertButton", "ConvertButton"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K67 [{"Size", "Text", "OnClick", "LayoutOrder"}]
  GETTABLEKS R19 R5 K68 ["ConvertButtonSize"]
  SETTABLEKS R19 R18 K5 ["Size"]
  LOADK R21 K69 ["CharacterConversion"]
  LOADK R22 K70 ["Revert"]
  NAMECALL R19 R2 K71 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K42 ["Text"]
  GETTABLEKS R19 R0 K72 ["revertCharacters"]
  SETTABLEKS R19 R18 K66 ["OnClick"]
  NAMECALL R19 R7 K40 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K63 ["RevertButton"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K67 [{"Size", "Text", "OnClick", "LayoutOrder"}]
  GETTABLEKS R19 R5 K73 ["RevertButtonSize"]
  SETTABLEKS R19 R18 K5 ["Size"]
  LOADK R21 K69 ["CharacterConversion"]
  LOADK R22 K74 ["Convert"]
  NAMECALL R19 R2 K71 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K42 ["Text"]
  GETTABLEKS R19 R0 K75 ["convertCharacters"]
  SETTABLEKS R19 R18 K66 ["OnClick"]
  NAMECALL R19 R7 K40 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K64 ["ConvertButton"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K22 ["FooterButtons"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_4:
  DUPTABLE R2 K1 [{"selection"}]
  GETTABLEKS R4 R0 K2 ["CharacterConversion"]
  GETTABLEKS R3 R4 K0 ["selection"]
  SETTABLEKS R3 R2 K0 ["selection"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K2 [{"ConvertCharacters", "RevertCharacters"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ConvertCharacters"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["RevertCharacters"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Thunks"]
  GETTABLEKS R5 R6 K11 ["ConvertCharacters"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Thunks"]
  GETTABLEKS R6 R7 K12 ["RevertCharacters"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K13 ["ContextServices"]
  GETTABLEKS R7 R1 K14 ["UI"]
  GETTABLEKS R8 R7 K15 ["Pane"]
  GETTABLEKS R9 R7 K16 ["Button"]
  GETTABLEKS R10 R7 K17 ["Separator"]
  GETTABLEKS R11 R7 K18 ["TextLabel"]
  GETTABLEKS R12 R1 K19 ["Util"]
  GETTABLEKS R13 R12 K20 ["LayoutOrderIterator"]
  GETTABLEKS R14 R2 K21 ["PureComponent"]
  LOADK R16 K22 ["CharacterConversionPaneFooter"]
  NAMECALL R14 R14 K23 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K24 [PROTO_2]
  SETTABLEKS R15 R14 K25 ["init"]
  DUPCLOSURE R15 K26 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K27 ["render"]
  GETTABLEKS R15 R6 K28 ["withContext"]
  DUPTABLE R16 K33 [{"Analytics", "Plugin", "Localization", "Stylizer"}]
  GETTABLEKS R17 R6 K29 ["Analytics"]
  SETTABLEKS R17 R16 K29 ["Analytics"]
  GETTABLEKS R17 R6 K30 ["Plugin"]
  SETTABLEKS R17 R16 K30 ["Plugin"]
  GETTABLEKS R17 R6 K31 ["Localization"]
  SETTABLEKS R17 R16 K31 ["Localization"]
  GETTABLEKS R17 R6 K32 ["Stylizer"]
  SETTABLEKS R17 R16 K32 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  DUPCLOSURE R15 K34 [PROTO_4]
  DUPCLOSURE R16 K35 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R5
  GETTABLEKS R17 R3 K36 ["connect"]
  MOVE R18 R15
  MOVE R19 R16
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  RETURN R17 -1
