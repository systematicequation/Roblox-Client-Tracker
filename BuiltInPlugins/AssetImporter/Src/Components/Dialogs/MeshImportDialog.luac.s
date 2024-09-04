PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+26]
  GETTABLEKS R2 R0 K0 ["ImportTree"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K0 ["ImportTree"]
  GETTABLEKS R1 R2 K1 ["ImportName"]
  JUMP [+1]
  LOADNIL R1
  GETTABLEKS R3 R0 K2 ["HasInvalidPackageId"]
  NOT R2 R3
  JUMPIFNOT R2 [+12]
  LOADB R2 0
  GETTABLEKS R3 R0 K3 ["ImportDataCheckedCount"]
  JUMPIFEQKN R3 K4 [0] [+8]
  GETTABLEKS R3 R0 K5 ["ErrorNodeChecked"]
  NOT R2 R3
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 1
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["HasInvalidPackageId"]
  NOT R1 R2
  JUMPIFNOT R1 [+8]
  LOADB R1 0
  GETTABLEKS R2 R0 K3 ["ImportDataCheckedCount"]
  JUMPIFEQKN R2 K4 [0] [+4]
  GETTABLEKS R2 R0 K5 ["ErrorNodeChecked"]
  NOT R1 R2
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ClosePreview"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["SessionQueue"]
  GETTABLEKS R3 R0 K2 ["Filename"]
  GETTABLE R1 R2 R3
  GETTABLEKS R2 R0 K3 ["ClosePreview"]
  CALL R2 0 0
  GETTABLEKS R2 R0 K4 ["QueueController"]
  MOVE R4 R1
  NAMECALL R2 R2 K5 ["uploadItem"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+14]
  JUMPIFNOTEQKS R0 K0 ["Close"] [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["onClose"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["Import"] [+32]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["onImport"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["props"]
  JUMPIFNOTEQKS R0 K5 ["Cancel"] [+9]
  GETTABLEKS R2 R1 K6 ["FileController"]
  GETTABLEKS R4 R1 K7 ["AssetImportSession"]
  NAMECALL R2 R2 K8 ["DEPRECATED_onSessionCanceled"]
  CALL R2 2 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["Import"] [+12]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R1 K6 ["FileController"]
  GETTABLEKS R5 R1 K7 ["AssetImportSession"]
  NAMECALL R3 R3 K9 ["DEPRECATED_onImport"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  DUPTABLE R1 K1 [{"assetName"}]
  LOADK R2 K2 [""]
  SETTABLEKS R2 R1 K0 ["assetName"]
  SETTABLEKS R1 R0 K3 ["state"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_importNameChangedConnection"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onClose"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onImport"]
  NEWCLOSURE R1 P2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K7 ["onButtonPressed"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["FileController"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["AssetImportSession"]
  NAMECALL R0 R0 K2 ["DEPRECATED_onSessionCanceled"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 1
  LOADNIL R4
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+39]
  NEWTABLE R5 0 2
  DUPTABLE R6 K4 [{"Key", "Text"}]
  LOADK R7 K5 ["Close"]
  SETTABLEKS R7 R6 K2 ["Key"]
  LOADK R9 K6 ["Plugin"]
  LOADK R10 K5 ["Close"]
  NAMECALL R7 R2 K7 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["Text"]
  DUPTABLE R7 K10 [{"Key", "Text", "Style", "StyleModifier"}]
  LOADK R8 K11 ["Import"]
  SETTABLEKS R8 R7 K2 ["Key"]
  LOADK R10 K6 ["Plugin"]
  LOADK R11 K11 ["Import"]
  NAMECALL R8 R2 K7 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K3 ["Text"]
  LOADK R8 K12 ["RoundPrimary"]
  SETTABLEKS R8 R7 K8 ["Style"]
  JUMPIF R3 [+4]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["Disabled"]
  JUMPIF R8 [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K9 ["StyleModifier"]
  SETLIST R5 R6 2 [1]
  MOVE R4 R5
  JUMP [+38]
  NEWTABLE R5 0 2
  DUPTABLE R6 K4 [{"Key", "Text"}]
  LOADK R7 K14 ["Cancel"]
  SETTABLEKS R7 R6 K2 ["Key"]
  LOADK R9 K6 ["Plugin"]
  LOADK R10 K14 ["Cancel"]
  NAMECALL R7 R2 K7 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["Text"]
  DUPTABLE R7 K10 [{"Key", "Text", "Style", "StyleModifier"}]
  LOADK R8 K11 ["Import"]
  SETTABLEKS R8 R7 K2 ["Key"]
  LOADK R10 K6 ["Plugin"]
  LOADK R11 K11 ["Import"]
  NAMECALL R8 R2 K7 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K3 ["Text"]
  LOADK R8 K12 ["RoundPrimary"]
  SETTABLEKS R8 R7 K8 ["Style"]
  JUMPIF R3 [+4]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["Disabled"]
  JUMPIF R8 [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K9 ["StyleModifier"]
  SETLIST R5 R6 2 [1]
  MOVE R4 R5
  LOADNIL R5
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R0 K15 ["onClose"]
  JUMP [+2]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K16 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K25 [{"Enabled", "MinContentSize", "Modal", "Resizable", "Title", "Buttons", "OnClose", "OnButtonPressed", "Style"}]
  GETTABLEKS R9 R1 K26 ["ShowPreview"]
  SETTABLEKS R9 R8 K17 ["Enabled"]
  GETIMPORT R9 K29 [Vector2.new]
  LOADN R10 32
  LOADN R11 138
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["MinContentSize"]
  GETUPVAL R10 1
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 5
  CALL R10 0 1
  NOT R9 R10
  JUMP [+1]
  LOADB R9 0
  SETTABLEKS R9 R8 K19 ["Modal"]
  LOADB R9 1
  SETTABLEKS R9 R8 K20 ["Resizable"]
  GETTABLEKS R9 R1 K21 ["Title"]
  SETTABLEKS R9 R8 K21 ["Title"]
  SETTABLEKS R4 R8 K22 ["Buttons"]
  SETTABLEKS R5 R8 K23 ["OnClose"]
  GETTABLEKS R9 R0 K30 ["onButtonPressed"]
  SETTABLEKS R9 R8 K24 ["OnButtonPressed"]
  LOADK R9 K31 ["FullBleed"]
  SETTABLEKS R9 R8 K8 ["Style"]
  DUPTABLE R9 K35 [{"Layout", "AssetImporterUI", "Separator"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K16 ["createElement"]
  LOADK R11 K36 ["UIListLayout"]
  DUPTABLE R12 K38 [{"FillDirection"}]
  GETIMPORT R13 K41 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K37 ["FillDirection"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K32 ["Layout"]
  GETTABLEKS R11 R1 K26 ["ShowPreview"]
  JUMPIFNOT R11 [+10]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K43 [{"LayoutOrder"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K42 ["LayoutOrder"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K33 ["AssetImporterUI"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K45 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R13 K47 [Enum.DominantAxis.Width]
  SETTABLEKS R13 R12 K44 ["DominantAxis"]
  LOADN R13 2
  SETTABLEKS R13 R12 K42 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K34 ["Separator"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_7:
  NAMECALL R1 R0 K0 ["_connect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  JUMPIFNOTEQKS R0 K0 ["ImportName"] [+11]
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"assetName"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["ImportName"]
  SETTABLEKS R4 R3 K1 ["assetName"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ImportTree"]
  JUMPIFEQKNIL R1 [+11]
  GETTABLEKS R2 R1 K2 ["Changed"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["_importNameChangedConnection"]
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["_disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_importNameChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_importNameChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_importNameChangedConnection"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R1 K0 ["ImportTree"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["ImportTree"]
  JUMPIFEQ R3 R4 [+7]
  NAMECALL R3 R0 K2 ["_disconnect"]
  CALL R3 1 0
  NAMECALL R3 R0 K3 ["_connect"]
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R2 K1 [{"assetName"}]
  GETTABLEKS R4 R0 K2 ["ImportTree"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K2 ["ImportTree"]
  GETTABLEKS R3 R4 K3 ["ImportName"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["assetName"]
  RETURN R2 1

PROTO_14:
  DUPTABLE R1 K8 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId", "ShowPreview", "SessionQueue", "Filename"}]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K10 ["importTree"]
  SETTABLEKS R2 R1 K0 ["ImportTree"]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K11 ["assetImportSession"]
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K12 ["importDataCheckedCount"]
  SETTABLEKS R2 R1 K2 ["ImportDataCheckedCount"]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K13 ["errorNodeChecked"]
  SETTABLEKS R2 R1 K3 ["ErrorNodeChecked"]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K14 ["hasInvalidPackageId"]
  SETTABLEKS R2 R1 K4 ["HasInvalidPackageId"]
  GETTABLEKS R3 R0 K15 ["Dialogs"]
  GETTABLEKS R2 R3 K16 ["showPreview"]
  SETTABLEKS R2 R1 K5 ["ShowPreview"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K17 ["Sessions"]
  GETTABLEKS R2 R3 K18 ["sessionQueue"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K6 ["SessionQueue"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K19 ["filename"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["Filename"]
  RETURN R1 1

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_16:
  DUPTABLE R1 K1 [{"ClosePreview"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ClosePreview"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R8 R3 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R3 K15 ["Util"]
  GETTABLEKS R9 R8 K16 ["StyleModifier"]
  GETTABLEKS R10 R3 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["Separator"]
  GETTABLEKS R12 R10 K19 ["StyledDialog"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Components"]
  GETTABLEKS R14 R15 K22 ["AssetImporterUI"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K23 ["Controllers"]
  GETTABLEKS R15 R16 K24 ["FileController"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K23 ["Controllers"]
  GETTABLEKS R16 R17 K25 ["QueueController"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K20 ["Src"]
  GETTABLEKS R18 R19 K26 ["Thunks"]
  GETTABLEKS R17 R18 K27 ["ClosePreview"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K20 ["Src"]
  GETTABLEKS R19 R20 K28 ["Utility"]
  GETTABLEKS R18 R19 K29 ["isAssetNameValid"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K20 ["Src"]
  GETTABLEKS R20 R21 K30 ["Flags"]
  GETTABLEKS R19 R20 K31 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K20 ["Src"]
  GETTABLEKS R21 R22 K30 ["Flags"]
  GETTABLEKS R20 R21 K32 ["getFFlagDebugAssetImportPlugin"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K20 ["Src"]
  GETTABLEKS R22 R23 K30 ["Flags"]
  GETTABLEKS R21 R22 K33 ["getFFlagAssetImportDisallowEmptyRootNames"]
  CALL R20 1 1
  GETTABLEKS R21 R1 K34 ["PureComponent"]
  LOADK R23 K35 ["MeshImportDialog"]
  NAMECALL R21 R21 K36 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K37 [PROTO_0]
  CAPTURE VAL R20
  CAPTURE VAL R17
  DUPCLOSURE R23 K38 [PROTO_4]
  CAPTURE VAL R20
  CAPTURE VAL R18
  CAPTURE VAL R22
  SETTABLEKS R23 R21 K39 ["init"]
  DUPCLOSURE R23 K40 [PROTO_6]
  CAPTURE VAL R22
  CAPTURE VAL R18
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R23 R21 K41 ["render"]
  MOVE R23 R20
  CALL R23 0 1
  JUMPIFNOT R23 [+18]
  DUPCLOSURE R23 K42 [PROTO_7]
  SETTABLEKS R23 R21 K43 ["didMount"]
  DUPCLOSURE R23 K44 [PROTO_9]
  SETTABLEKS R23 R21 K45 ["_connect"]
  DUPCLOSURE R23 K46 [PROTO_10]
  SETTABLEKS R23 R21 K47 ["willUnmount"]
  DUPCLOSURE R23 K48 [PROTO_11]
  SETTABLEKS R23 R21 K49 ["_disconnect"]
  DUPCLOSURE R23 K50 [PROTO_12]
  SETTABLEKS R23 R21 K51 ["didUpdate"]
  DUPCLOSURE R23 K52 [PROTO_13]
  SETTABLEKS R23 R21 K53 ["getDerivedStateFromProps"]
  MOVE R23 R5
  DUPTABLE R24 K54 [{"FileController", "QueueController", "Localization", "Stylizer"}]
  SETTABLEKS R14 R24 K24 ["FileController"]
  MOVE R26 R18
  CALL R26 0 1
  JUMPIFNOT R26 [+2]
  MOVE R25 R15
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K25 ["QueueController"]
  SETTABLEKS R6 R24 K12 ["Localization"]
  SETTABLEKS R7 R24 K14 ["Stylizer"]
  CALL R23 1 1
  MOVE R24 R21
  CALL R23 1 1
  MOVE R21 R23
  DUPCLOSURE R23 K55 [PROTO_14]
  CAPTURE VAL R18
  DUPCLOSURE R24 K56 [PROTO_16]
  CAPTURE VAL R16
  GETTABLEKS R25 R2 K57 ["connect"]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  MOVE R26 R21
  CALL R25 1 -1
  RETURN R25 -1
