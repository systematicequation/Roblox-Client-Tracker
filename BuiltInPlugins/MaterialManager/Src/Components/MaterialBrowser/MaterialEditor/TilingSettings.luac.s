PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"studsPerTile"}]
  SETTABLEKS R0 R3 K0 ["studsPerTile"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"studsPerTileMessage", "status"}]
  MOVE R4 R0
  JUMPIF R4 [+3]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["None"]
  SETTABLEKS R4 R3 K0 ["studsPerTileMessage"]
  JUMPIFNOT R0 [+3]
  GETIMPORT R4 K7 [Enum.PropertyStatus.Warning]
  JUMP [+2]
  GETIMPORT R4 K9 [Enum.PropertyStatus.Ok]
  SETTABLEKS R4 R3 K1 ["status"]
  NAMECALL R1 R1 K10 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  GETUPVAL R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["state"]
  GETTABLEKS R3 R4 K3 ["studsPerTile"]
  CALL R2 1 1
  JUMPIFNOT R2 [+14]
  GETTABLEKS R3 R0 K4 ["GeneralServiceController"]
  GETTABLEKS R5 R0 K5 ["PBRMaterial"]
  MOVE R6 R2
  NAMECALL R3 R3 K6 ["setStudsPerTile"]
  CALL R3 3 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["setStudsPerTileStatus"]
  LOADNIL R4
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R3 0
  DUPTABLE R5 K8 [{"studsPerTile"}]
  GETUPVAL R6 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["props"]
  GETTABLEKS R8 R9 K5 ["PBRMaterial"]
  GETTABLEKS R7 R8 K9 ["StudsPerTile"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K3 ["studsPerTile"]
  NAMECALL R3 R3 K10 ["setState"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["setStudsPerTileStatus"]
  LOADK R6 K11 ["CreateDialog"]
  LOADK R7 K12 ["ErrorStudsPerTile"]
  NAMECALL R4 R1 K13 ["getText"]
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  JUMPIFNOT R0 [+9]
  GETTABLEKS R3 R2 K1 ["GeneralServiceController"]
  GETTABLEKS R5 R2 K2 ["PBRMaterial"]
  GETUPVAL R7 1
  GETTABLE R6 R7 R1
  NAMECALL R3 R3 K3 ["setMaterialPattern"]
  CALL R3 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["TilingSettings"]
  GETTABLEKS R2 R0 K2 ["dispatchSetExpandedPane"]
  MOVE R3 R1
  GETTABLEKS R5 R0 K3 ["ExpandedPane"]
  NOT R4 R5
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"studsPerTile"}]
  GETUPVAL R2 0
  GETTABLEKS R5 R0 K2 ["props"]
  GETTABLEKS R4 R5 K3 ["PBRMaterial"]
  GETTABLEKS R3 R4 K4 ["StudsPerTile"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["studsPerTile"]
  SETTABLEKS R1 R0 K5 ["state"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["materialPatterns"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onStudsPerTileChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K8 ["setStudsPerTileStatus"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K9 ["onFocusLost"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K10 ["onMaterialPatternSelected"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K11 ["onExpandedChanged"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETIMPORT R3 K3 [ipairs]
  GETUPVAL R4 0
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R9 R0 K4 ["materialPatterns"]
  LOADK R12 K5 ["MaterialPatterns"]
  GETUPVAL R13 1
  MOVE R14 R7
  CALL R13 1 -1
  NAMECALL R10 R2 K6 ["getText"]
  CALL R10 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K9 [table.insert]
  CALL R8 -1 0
  FORGLOOP R3 2 [inext] [-14]
  NEWTABLE R5 0 0
  NAMECALL R3 R0 K10 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["studsPerTile"]
  GETUPVAL R4 0
  GETTABLEKS R7 R0 K2 ["props"]
  GETTABLEKS R6 R7 K3 ["PBRMaterial"]
  GETTABLEKS R5 R6 K4 ["StudsPerTile"]
  CALL R4 1 1
  JUMPIFEQ R3 R4 [+32]
  GETTABLEKS R3 R2 K1 ["studsPerTile"]
  GETTABLEKS R5 R0 K0 ["state"]
  GETTABLEKS R4 R5 K1 ["studsPerTile"]
  JUMPIFNOTEQ R3 R4 [+24]
  DUPTABLE R5 K7 [{"studsPerTile", "studsPerTileMessage", "status"}]
  GETUPVAL R6 0
  GETTABLEKS R9 R0 K2 ["props"]
  GETTABLEKS R8 R9 K3 ["PBRMaterial"]
  GETTABLEKS R7 R8 K4 ["StudsPerTile"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K1 ["studsPerTile"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["None"]
  SETTABLEKS R6 R5 K5 ["studsPerTileMessage"]
  GETIMPORT R6 K12 [Enum.PropertyStatus.Ok]
  SETTABLEKS R6 R5 K6 ["status"]
  NAMECALL R3 R0 K13 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["TilingSettings"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["new"]
  CALL R4 0 1
  LOADN R5 1
  GETIMPORT R6 K6 [ipairs]
  GETUPVAL R7 1
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R12 R1 K7 ["PBRMaterial"]
  GETTABLEKS R11 R12 K8 ["MaterialPattern"]
  JUMPIFNOTEQ R10 R11 [+2]
  MOVE R5 R9
  FORGLOOP R6 2 [inext] [-8]
  DUPTABLE R6 K10 [{"StudsPerTile", "MaterialPattern"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K17 [{"LabelColumnWidth", "LayoutOrder", "Text", "StatusText", "Status"}]
  GETTABLEKS R10 R1 K18 ["LabelWidth"]
  JUMPIF R10 [+2]
  GETTABLEKS R10 R2 K12 ["LabelColumnWidth"]
  SETTABLEKS R10 R9 K12 ["LabelColumnWidth"]
  NAMECALL R10 R4 K19 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  LOADK R12 K20 ["MaterialTiling"]
  LOADK R13 K9 ["StudsPerTile"]
  NAMECALL R10 R3 K21 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["Text"]
  GETTABLEKS R11 R0 K22 ["state"]
  GETTABLEKS R10 R11 K23 ["studsPerTileMessage"]
  SETTABLEKS R10 R9 K15 ["StatusText"]
  GETTABLEKS R11 R0 K22 ["state"]
  GETTABLEKS R10 R11 K24 ["status"]
  SETTABLEKS R10 R9 K16 ["Status"]
  NEWTABLE R10 0 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K29 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
  LOADK R14 K30 ["FilledRoundedBorder"]
  SETTABLEKS R14 R13 K25 ["Style"]
  GETTABLEKS R14 R2 K31 ["DialogColumnSize"]
  SETTABLEKS R14 R13 K26 ["Size"]
  GETTABLEKS R15 R0 K22 ["state"]
  GETTABLEKS R14 R15 K32 ["studsPerTile"]
  SETTABLEKS R14 R13 K14 ["Text"]
  GETTABLEKS R14 R0 K33 ["onStudsPerTileChanged"]
  SETTABLEKS R14 R13 K27 ["OnTextChanged"]
  GETTABLEKS R14 R0 K34 ["onFocusLost"]
  SETTABLEKS R14 R13 K28 ["OnFocusLost"]
  CALL R11 2 -1
  SETLIST R10 R11 4294967295 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["StudsPerTile"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K35 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
  GETTABLEKS R10 R1 K18 ["LabelWidth"]
  JUMPIF R10 [+2]
  GETTABLEKS R10 R2 K12 ["LabelColumnWidth"]
  SETTABLEKS R10 R9 K12 ["LabelColumnWidth"]
  NAMECALL R10 R4 K19 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  LOADK R12 K20 ["MaterialTiling"]
  LOADK R13 K36 ["Pattern"]
  NAMECALL R10 R3 K21 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["Text"]
  NEWTABLE R10 0 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K40 [{"Style", "Items", "Size", "OnItemActivated", "SelectedIndex"}]
  GETTABLEKS R14 R2 K41 ["CustomSelectInput"]
  SETTABLEKS R14 R13 K25 ["Style"]
  GETTABLEKS R14 R0 K42 ["materialPatterns"]
  SETTABLEKS R14 R13 K37 ["Items"]
  GETTABLEKS R14 R2 K31 ["DialogColumnSize"]
  SETTABLEKS R14 R13 K26 ["Size"]
  GETTABLEKS R14 R0 K43 ["onMaterialPatternSelected"]
  SETTABLEKS R14 R13 K38 ["OnItemActivated"]
  SETTABLEKS R5 R13 K39 ["SelectedIndex"]
  CALL R11 2 -1
  SETLIST R10 R11 4294967295 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["MaterialPattern"]
  GETTABLEKS R7 R1 K44 ["Expandable"]
  JUMPIFNOT R7 [+39]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K49 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
  GETTABLEKS R10 R1 K13 ["LayoutOrder"]
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  GETTABLEKS R10 R2 K45 ["ContentPadding"]
  SETTABLEKS R10 R9 K45 ["ContentPadding"]
  GETTABLEKS R10 R2 K50 ["ItemSpacing"]
  SETTABLEKS R10 R9 K46 ["ContentSpacing"]
  LOADK R12 K20 ["MaterialTiling"]
  LOADK R13 K51 ["Tiling"]
  NAMECALL R10 R3 K21 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["Text"]
  GETTABLEKS R10 R2 K52 ["CustomExpandablePane"]
  SETTABLEKS R10 R9 K25 ["Style"]
  GETTABLEKS R10 R1 K53 ["ExpandedPane"]
  SETTABLEKS R10 R9 K47 ["Expanded"]
  GETTABLEKS R10 R0 K54 ["onExpandedChanged"]
  SETTABLEKS R10 R9 K48 ["OnExpandedChanged"]
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 7
  DUPTABLE R9 K59 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "HorizontalAlignment"}]
  GETIMPORT R10 K62 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K55 ["AutomaticSize"]
  GETTABLEKS R10 R1 K13 ["LayoutOrder"]
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  GETIMPORT R10 K65 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K56 ["Layout"]
  GETTABLEKS R10 R2 K50 ["ItemSpacing"]
  SETTABLEKS R10 R9 K57 ["Spacing"]
  GETIMPORT R10 K67 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K58 ["HorizontalAlignment"]
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1

PROTO_9:
  DUPTABLE R1 K2 [{"ExpandedPane", "Material"}]
  GETTABLEKS R4 R0 K3 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K0 ["ExpandedPane"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["TilingSettings"]
  GETTABLE R2 R3 R4
  SETTABLEKS R2 R1 K0 ["ExpandedPane"]
  GETTABLEKS R3 R0 K3 ["MaterialBrowserReducer"]
  GETTABLEKS R2 R3 K1 ["Material"]
  SETTABLEKS R2 R1 K1 ["Material"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K1 [{"dispatchSetExpandedPane"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetExpandedPane"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R6 R3 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["LayoutOrderIterator"]
  GETTABLEKS R7 R3 K13 ["Style"]
  GETTABLEKS R6 R7 K14 ["Stylizer"]
  GETTABLEKS R7 R3 K15 ["ContextServices"]
  GETTABLEKS R8 R7 K16 ["withContext"]
  GETTABLEKS R9 R7 K17 ["Analytics"]
  GETTABLEKS R10 R7 K18 ["Localization"]
  GETTABLEKS R11 R3 K19 ["UI"]
  GETTABLEKS R12 R11 K20 ["Pane"]
  GETTABLEKS R13 R11 K21 ["ExpandablePane"]
  GETTABLEKS R14 R11 K22 ["DEPRECATED_TextInput"]
  GETTABLEKS R15 R11 K23 ["SelectInput"]
  GETTABLEKS R17 R0 K5 ["Src"]
  GETTABLEKS R16 R17 K24 ["Actions"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R16 K25 ["SetExpandedPane"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K5 ["Src"]
  GETTABLEKS R20 R21 K26 ["Reducers"]
  GETTABLEKS R19 R20 K27 ["MainReducer"]
  CALL R18 1 1
  GETTABLEKS R20 R0 K5 ["Src"]
  GETTABLEKS R19 R20 K28 ["Controllers"]
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R19 K29 ["GeneralServiceController"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R26 R0 K5 ["Src"]
  GETTABLEKS R25 R26 K30 ["Components"]
  GETTABLEKS R24 R25 K31 ["MaterialBrowser"]
  GETTABLEKS R23 R24 K32 ["MaterialEditor"]
  GETTABLEKS R22 R23 K33 ["LabeledElement"]
  CALL R21 1 1
  GETTABLEKS R24 R0 K5 ["Src"]
  GETTABLEKS R23 R24 K34 ["Resources"]
  GETTABLEKS R22 R23 K35 ["Constants"]
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R22 K36 ["getMaterialPatterns"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R22 K37 ["getMaterialPatternName"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R22 K38 ["getSettingsNames"]
  CALL R25 1 1
  GETTABLEKS R27 R0 K5 ["Src"]
  GETTABLEKS R26 R27 K11 ["Util"]
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R26 K39 ["getNumberFromText"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R29 R26 K40 ["getTextFromNumber"]
  CALL R28 1 1
  MOVE R29 R23
  CALL R29 0 1
  MOVE R30 R25
  CALL R30 0 1
  GETTABLEKS R31 R2 K41 ["PureComponent"]
  LOADK R33 K42 ["TilingSettings"]
  NAMECALL R31 R31 K43 ["extend"]
  CALL R31 2 1
  DUPCLOSURE R32 K44 [PROTO_5]
  CAPTURE VAL R28
  CAPTURE VAL R2
  CAPTURE VAL R27
  CAPTURE VAL R29
  CAPTURE VAL R30
  SETTABLEKS R32 R31 K45 ["init"]
  DUPCLOSURE R32 K46 [PROTO_6]
  CAPTURE VAL R29
  CAPTURE VAL R24
  SETTABLEKS R32 R31 K47 ["didMount"]
  DUPCLOSURE R32 K48 [PROTO_7]
  CAPTURE VAL R28
  CAPTURE VAL R2
  SETTABLEKS R32 R31 K49 ["didUpdate"]
  DUPCLOSURE R32 K50 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R29
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R32 R31 K51 ["render"]
  MOVE R32 R8
  DUPTABLE R33 K52 [{"Analytics", "GeneralServiceController", "Localization", "Stylizer"}]
  SETTABLEKS R9 R33 K17 ["Analytics"]
  SETTABLEKS R20 R33 K29 ["GeneralServiceController"]
  SETTABLEKS R10 R33 K18 ["Localization"]
  SETTABLEKS R6 R33 K14 ["Stylizer"]
  CALL R32 1 1
  MOVE R33 R31
  CALL R32 1 1
  MOVE R31 R32
  GETTABLEKS R32 R4 K53 ["connect"]
  DUPCLOSURE R33 K54 [PROTO_9]
  CAPTURE VAL R30
  DUPCLOSURE R34 K55 [PROTO_11]
  CAPTURE VAL R17
  CALL R32 2 1
  MOVE R33 R31
  CALL R32 1 -1
  RETURN R32 -1
