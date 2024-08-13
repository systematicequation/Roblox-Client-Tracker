PROTO_0:
  NEWTABLE R4 0 0
  LOADN R5 1
  GETIMPORT R6 K1 [pairs]
  MOVE R7 R0
  CALL R6 1 3
  FORGPREP_NEXT R6
  LOADNIL R11
  LOADNIL R12
  JUMPIFNOTEQKS R10 K2 ["500"] [+15]
  NAMECALL R14 R2 K3 ["GetImportTree"]
  CALL R14 1 1
  GETTABLEKS R13 R14 K4 ["ExistingPackageId"]
  JUMPIFEQKS R13 K5 [""] [+8]
  GETUPVAL R13 0
  MOVE R14 R3
  LOADK R15 K6 ["HttpError"]
  LOADK R16 K7 ["PackageError"]
  CALL R13 3 1
  MOVE R11 R13
  JUMP [+6]
  GETUPVAL R13 0
  MOVE R14 R3
  LOADK R15 K6 ["HttpError"]
  MOVE R16 R10
  CALL R13 3 1
  MOVE R11 R13
  JUMPIF R11 [+11]
  GETIMPORT R13 K10 [string.format]
  LOADK R14 K11 ["%s %s"]
  LOADK R17 K6 ["HttpError"]
  LOADK R18 K12 ["UnknownStatusCode"]
  NAMECALL R15 R3 K13 ["getText"]
  CALL R15 3 1
  MOVE R16 R10
  CALL R13 3 1
  MOVE R11 R13
  LOADK R13 K14 ["%*: %*"]
  MOVE R15 R9
  MOVE R16 R11
  NAMECALL R13 R13 K9 ["format"]
  CALL R13 3 1
  MOVE R12 R13
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K15 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K23 [{"LayoutOrder", "Text", "TextSize", "TextXAlignment", "AutomaticSize", "Size", "TextWrapped"}]
  GETUPVAL R17 3
  CALL R17 0 1
  JUMPIFNOT R17 [+2]
  MOVE R16 R5
  JUMP [+2]
  LENGTH R17 R4
  ADDK R16 R17 K24 [1]
  SETTABLEKS R16 R15 K16 ["LayoutOrder"]
  SETTABLEKS R12 R15 K17 ["Text"]
  GETTABLEKS R16 R1 K25 ["SubtextSize"]
  SETTABLEKS R16 R15 K18 ["TextSize"]
  GETUPVAL R17 3
  CALL R17 0 1
  JUMPIFNOT R17 [+3]
  GETIMPORT R16 K28 [Enum.TextXAlignment.Left]
  JUMP [+2]
  GETIMPORT R16 K30 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K19 ["TextXAlignment"]
  GETIMPORT R16 K32 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K20 ["AutomaticSize"]
  GETIMPORT R16 K35 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K21 ["Size"]
  GETUPVAL R17 3
  CALL R17 0 1
  JUMPIFNOT R17 [+2]
  LOADB R16 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K22 ["TextWrapped"]
  CALL R13 2 1
  GETUPVAL R14 3
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  SETTABLE R13 R4 R9
  ADDK R5 R5 K24 [1]
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R4 R13 [+5]
  MOVE R15 R4
  MOVE R16 R13
  GETIMPORT R14 K38 [table.insert]
  CALL R14 2 0
  FORGLOOP R6 2 [-107]
  RETURN R4 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["UploadWidget"]
  GETTABLEKS R5 R1 K4 ["ErrorMap"]
  LOADNIL R6
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+20]
  GETIMPORT R7 K6 [next]
  MOVE R8 R5
  CALL R7 1 1
  JUMPIFNOTEQKNIL R7 [+8]
  LOADK R9 K7 ["Upload"]
  LOADK R10 K8 ["FailureDescriptionNoError"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  MOVE R6 R7
  JUMP [+25]
  LOADK R9 K7 ["Upload"]
  LOADK R10 K10 ["FailureDescription"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  MOVE R6 R7
  JUMP [+18]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K11 ["isEmpty"]
  MOVE R9 R5
  CALL R8 1 1
  JUMPIFNOT R8 [+6]
  LOADK R9 K7 ["Upload"]
  LOADK R10 K8 ["FailureDescriptionNoError"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  JUMPIF R7 [+5]
  LOADK R9 K7 ["Upload"]
  LOADK R10 K10 ["FailureDescription"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  MOVE R6 R7
  GETUPVAL R7 2
  MOVE R8 R5
  MOVE R9 R4
  GETTABLEKS R10 R1 K12 ["AssetImportSession"]
  MOVE R11 R2
  CALL R7 4 1
  GETTABLEKS R10 R4 K14 ["TextSize"]
  GETTABLEKS R11 R4 K15 ["SubtextSize"]
  ADD R9 R10 R11
  ADDK R8 R9 K13 [10]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K20 [{"LayoutOrder", "Layout", "VerticalAlignment"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K17 ["LayoutOrder"]
  GETIMPORT R12 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K18 ["Layout"]
  GETIMPORT R12 K26 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K19 ["VerticalAlignment"]
  DUPTABLE R12 K29 [{"Title", "Messages", "ErrorMap"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K31 [{"Layout", "VerticalAlignment", "Size", "LayoutOrder"}]
  GETIMPORT R16 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K18 ["Layout"]
  GETIMPORT R16 K26 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K19 ["VerticalAlignment"]
  GETIMPORT R16 K34 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  MOVE R20 R8
  CALL R16 4 1
  SETTABLEKS R16 R15 K30 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  DUPTABLE R16 K37 [{"Text", "Description"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K16 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K40 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextColor"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K17 ["LayoutOrder"]
  GETTABLEKS R20 R4 K41 ["TextLabelSize"]
  SETTABLEKS R20 R19 K30 ["Size"]
  LOADK R22 K7 ["Upload"]
  LOADK R23 K42 ["Failure"]
  NAMECALL R20 R2 K9 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K35 ["Text"]
  GETTABLEKS R20 R4 K14 ["TextSize"]
  SETTABLEKS R20 R19 K14 ["TextSize"]
  GETTABLEKS R20 R4 K43 ["TextAlignment"]
  SETTABLEKS R20 R19 K38 ["TextXAlignment"]
  GETTABLEKS R20 R4 K44 ["FailureColor"]
  SETTABLEKS R20 R19 K39 ["TextColor"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K35 ["Text"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K16 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K45 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K17 ["LayoutOrder"]
  GETTABLEKS R20 R4 K41 ["TextLabelSize"]
  SETTABLEKS R20 R19 K30 ["Size"]
  SETTABLEKS R6 R19 K35 ["Text"]
  GETTABLEKS R20 R4 K15 ["SubtextSize"]
  SETTABLEKS R20 R19 K14 ["TextSize"]
  GETTABLEKS R20 R4 K43 ["TextAlignment"]
  SETTABLEKS R20 R19 K38 ["TextXAlignment"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K36 ["Description"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K27 ["Title"]
  GETUPVAL R14 6
  CALL R14 0 1
  JUMPIFNOT R14 [+43]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K50 [{"LayoutOrder", "Size", "CanvasSize", "OnCanvasResize", "ScrollingDirection", "AutomaticCanvasSize", "Layout"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  GETIMPORT R16 K34 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  MINUS R20 R8
  CALL R16 4 1
  SETTABLEKS R16 R15 K30 ["Size"]
  GETIMPORT R16 K52 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K46 ["CanvasSize"]
  GETTABLEKS R16 R0 K53 ["onContentResize"]
  SETTABLEKS R16 R15 K47 ["OnCanvasResize"]
  GETIMPORT R16 K55 [Enum.ScrollingDirection.Y]
  SETTABLEKS R16 R15 K48 ["ScrollingDirection"]
  GETIMPORT R16 K57 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K49 ["AutomaticCanvasSize"]
  GETIMPORT R16 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K18 ["Layout"]
  MOVE R16 R7
  CALL R13 3 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K28 ["Messages"]
  GETUPVAL R14 6
  CALL R14 0 1
  JUMPIF R14 [+100]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K59 [{"Layout", "LayoutOrder", "Size", "HorizontalAlignment"}]
  GETIMPORT R16 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K18 ["Layout"]
  LOADN R16 2
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  GETIMPORT R16 K34 [UDim2.new]
  LOADN R17 1
  LOADN R18 216
  LOADN R19 1
  MINUS R20 R8
  CALL R16 4 1
  SETTABLEKS R16 R15 K30 ["Size"]
  GETIMPORT R16 K61 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K58 ["HorizontalAlignment"]
  DUPTABLE R16 K63 [{"ScrollingFrame"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K16 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K50 [{"LayoutOrder", "Size", "CanvasSize", "OnCanvasResize", "ScrollingDirection", "AutomaticCanvasSize", "Layout"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K17 ["LayoutOrder"]
  GETIMPORT R20 K34 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K30 ["Size"]
  GETIMPORT R20 K52 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K46 ["CanvasSize"]
  GETTABLEKS R20 R0 K53 ["onContentResize"]
  SETTABLEKS R20 R19 K47 ["OnCanvasResize"]
  GETIMPORT R20 K55 [Enum.ScrollingDirection.Y]
  SETTABLEKS R20 R19 K48 ["ScrollingDirection"]
  GETIMPORT R20 K57 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K49 ["AutomaticCanvasSize"]
  GETIMPORT R20 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K18 ["Layout"]
  DUPTABLE R20 K65 [{"Pane"}]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K16 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K66 [{"Size", "Layout", "VerticalAlignment", "LayoutOrder", "HorizontalAlignment"}]
  GETTABLEKS R24 R4 K41 ["TextLabelSize"]
  SETTABLEKS R24 R23 K30 ["Size"]
  GETIMPORT R24 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K18 ["Layout"]
  GETIMPORT R24 K26 [Enum.VerticalAlignment.Top]
  SETTABLEKS R24 R23 K19 ["VerticalAlignment"]
  LOADN R24 1
  SETTABLEKS R24 R23 K17 ["LayoutOrder"]
  GETIMPORT R24 K61 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R24 R23 K58 ["HorizontalAlignment"]
  MOVE R24 R7
  CALL R21 3 1
  SETTABLEKS R21 R20 K64 ["Pane"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K62 ["ScrollingFrame"]
  CALL R13 3 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K4 ["ErrorMap"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_2:
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_3:
  DUPTABLE R1 K1 [{"AssetImportSession"}]
  GETTABLEKS R3 R0 K2 ["Preview"]
  GETTABLEKS R2 R3 K3 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAssetImporterPackageMigration"]
  CALL R4 1 1
  MOVE R6 R4
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+7]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Cryo"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Utility"]
  GETTABLEKS R7 R8 K15 ["GetLocalizedString"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K16 ["ContextServices"]
  GETTABLEKS R8 R7 K17 ["withContext"]
  GETTABLEKS R9 R7 K18 ["Localization"]
  GETTABLEKS R11 R1 K19 ["Style"]
  GETTABLEKS R10 R11 K20 ["Stylizer"]
  GETTABLEKS R11 R1 K21 ["UI"]
  GETTABLEKS R12 R11 K22 ["Pane"]
  GETTABLEKS R13 R11 K23 ["ScrollingFrame"]
  GETTABLEKS R14 R11 K24 ["TextLabel"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K11 ["Flags"]
  GETTABLEKS R16 R17 K25 ["getFFlagAssetImportErrorMessageScrollerFix"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K26 ["PureComponent"]
  LOADK R18 K27 ["FailureWidget"]
  NAMECALL R16 R16 K28 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K29 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R15
  DUPCLOSURE R18 K30 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R13
  SETTABLEKS R18 R16 K31 ["render"]
  MOVE R18 R8
  DUPTABLE R19 K32 [{"Localization", "Stylizer"}]
  SETTABLEKS R9 R19 K18 ["Localization"]
  SETTABLEKS R10 R19 K20 ["Stylizer"]
  CALL R18 1 1
  MOVE R19 R16
  CALL R18 1 1
  MOVE R16 R18
  DUPCLOSURE R18 K33 [PROTO_2]
  DUPCLOSURE R19 K34 [PROTO_3]
  GETTABLEKS R20 R3 K35 ["connect"]
  MOVE R21 R19
  MOVE R22 R18
  CALL R20 2 1
  MOVE R21 R16
  CALL R20 1 -1
  RETURN R20 -1
