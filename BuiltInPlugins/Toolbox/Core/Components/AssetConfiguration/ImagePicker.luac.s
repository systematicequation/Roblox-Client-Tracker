PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["ChooseThumbnail"]
  JUMPIFNOT R3 [+8]
  GETUPVAL R3 0
  DUPTABLE R5 K3 [{"hovered"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K2 ["hovered"]
  NAMECALL R3 R3 K4 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  DUPTABLE R5 K1 [{"hovered"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K0 ["hovered"]
  NAMECALL R3 R3 K2 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R2 K1 [{"hovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["hovered"]
  SETTABLEKS R2 R0 K2 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["onMouseEnter"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onMouseLeave"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R5 R4 K2 ["IconFile"]
  GETTABLEKS R6 R4 K3 ["ThumbnailStatus"]
  GETTABLEKS R7 R3 K4 ["hovered"]
  LOADNIL R8
  LOADB R9 1
  JUMPIFEQKS R6 K5 ["Completed"] [+5]
  JUMPIFEQKNIL R6 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  MOVE R11 R7
  JUMPIF R11 [+6]
  MOVE R11 R9
  JUMPIFNOT R11 [+4]
  JUMPIFEQKNIL R5 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  NOT R10 R11
  JUMPIFNOT R5 [+9]
  GETTABLEKS R11 R4 K6 ["Localization"]
  LOADK R13 K7 ["AssetConfigPreview"]
  LOADK R14 K8 ["Preview"]
  NAMECALL R11 R11 K9 ["getText"]
  CALL R11 3 1
  MOVE R8 R11
  JUMP [+11]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R11 R4 K6 ["Localization"]
  LOADK R13 K3 ["ThumbnailStatus"]
  MOVE R14 R6
  NAMECALL R11 R11 K9 ["getText"]
  CALL R11 3 1
  MOVE R8 R11
  JUMP [+1]
  LOADK R8 K10 [""]
  MOVE R11 R8
  MOVE R12 R10
  RETURN R11 2

PROTO_4:
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 4 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Size"]
  GETTABLEKS R4 R1 K3 ["Position"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["IconFile"]
  GETTABLEKS R7 R1 K6 ["AssetId"]
  GETTABLEKS R8 R1 K7 ["ChooseThumbnail"]
  GETTABLEKS R9 R2 K8 ["hovered"]
  GETTABLEKS R12 R1 K9 ["Localization"]
  NAMECALL R10 R0 K10 ["getStatus"]
  CALL R10 2 2
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["PLUGIN_TEMP"]
  JUMPIFNOT R6 [+5]
  NAMECALL R13 R6 K12 ["GetTemporaryId"]
  CALL R13 1 1
  MOVE R12 R13
  JUMP [+13]
  JUMPIFNOT R7 [+12]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K13 ["constructAssetThumbnailUrl"]
  MOVE R14 R7
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K14 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K14 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
  CALL R13 3 1
  MOVE R12 R13
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K15 ["createElement"]
  LOADK R14 K16 ["ImageButton"]
  NEWTABLE R15 16 0
  SETTABLEKS R4 R15 K3 ["Position"]
  SETTABLEKS R3 R15 K2 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K18 ["BorderSizePixel"]
  LOADB R16 1
  SETTABLEKS R16 R15 K19 ["ClipsDescendants"]
  SETTABLEKS R12 R15 K20 ["Image"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K21 ["Event"]
  GETTABLEKS R16 R17 K22 ["Activated"]
  SETTABLE R8 R15 R16
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K21 ["Event"]
  GETTABLEKS R16 R17 K23 ["MouseEnter"]
  GETTABLEKS R17 R0 K24 ["onMouseEnter"]
  SETTABLE R17 R15 R16
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K21 ["Event"]
  GETTABLEKS R16 R17 K25 ["mouseLeave"]
  GETTABLEKS R17 R0 K26 ["onMouseLeave"]
  SETTABLE R17 R15 R16
  SETTABLEKS R5 R15 K4 ["LayoutOrder"]
  DUPTABLE R16 K30 [{"ChangeIndication", "StatusFrame", "ChangeLabel"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K15 ["createElement"]
  LOADK R18 K31 ["ImageLabel"]
  DUPTABLE R19 K36 [{"Visible", "AnchorPoint", "Position", "Size", "Image", "ImageColor3", "BackgroundTransparency", "ImageRectSize"}]
  SETTABLEKS R9 R19 K32 ["Visible"]
  GETIMPORT R20 K39 [Vector2.new]
  LOADN R21 0
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K33 ["AnchorPoint"]
  GETIMPORT R20 K41 [UDim2.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K3 ["Position"]
  GETIMPORT R20 K41 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADK R23 K42 [1.5]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K2 ["Size"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K43 ["GRADIENT"]
  SETTABLEKS R20 R19 K20 ["Image"]
  GETIMPORT R20 K45 [Color3.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R20 3 1
  SETTABLEKS R20 R19 K34 ["ImageColor3"]
  LOADN R20 1
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  GETUPVAL R20 4
  SETTABLEKS R20 R19 K35 ["ImageRectSize"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K27 ["ChangeIndication"]
  MOVE R17 R11
  JUMPIFNOT R17 [+87]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K15 ["createElement"]
  LOADK R18 K46 ["Frame"]
  DUPTABLE R19 K48 [{"Position", "Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R20 K41 [UDim2.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 1
  LOADN R24 216
  CALL R20 4 1
  SETTABLEKS R20 R19 K3 ["Position"]
  GETIMPORT R20 K41 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 40
  CALL R20 4 1
  SETTABLEKS R20 R19 K2 ["Size"]
  GETIMPORT R20 K45 [Color3.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R20 3 1
  SETTABLEKS R20 R19 K47 ["BackgroundColor3"]
  LOADK R20 K49 [0.5]
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  DUPTABLE R20 K51 [{"Status"}]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K15 ["createElement"]
  LOADK R22 K52 ["TextLabel"]
  DUPTABLE R23 K57 [{"AnchorPoint", "Size", "Position", "Text", "TextColor3", "TextSize", "Font", "BackgroundTransparency"}]
  GETIMPORT R24 K39 [Vector2.new]
  LOADK R25 K49 [0.5]
  LOADK R26 K49 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K33 ["AnchorPoint"]
  GETIMPORT R24 K41 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 1
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K2 ["Size"]
  GETIMPORT R24 K41 [UDim2.new]
  LOADK R25 K49 [0.5]
  LOADN R26 0
  LOADK R27 K49 [0.5]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K3 ["Position"]
  SETTABLEKS R10 R23 K53 ["Text"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K58 ["WHITE"]
  SETTABLEKS R24 R23 K54 ["TextColor3"]
  GETUPVAL R24 6
  SETTABLEKS R24 R23 K55 ["TextSize"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K59 ["FONT"]
  SETTABLEKS R24 R23 K56 ["Font"]
  LOADN R24 1
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K50 ["Status"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K28 ["StatusFrame"]
  MOVE R17 R9
  JUMPIFNOT R17 [+59]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K15 ["createElement"]
  LOADK R18 K52 ["TextLabel"]
  DUPTABLE R19 K61 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "Text", "TextColor3", "TextSize", "Font", "ZIndex"}]
  GETIMPORT R20 K39 [Vector2.new]
  LOADN R21 0
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K33 ["AnchorPoint"]
  GETIMPORT R20 K41 [UDim2.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 1
  LOADN R24 241
  CALL R20 4 1
  SETTABLEKS R20 R19 K3 ["Position"]
  GETIMPORT R20 K41 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 30
  CALL R20 4 1
  SETTABLEKS R20 R19 K2 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  GETTABLEKS R20 R1 K9 ["Localization"]
  LOADK R22 K62 ["AssetConfigPreview"]
  LOADK R23 K63 ["Change"]
  NAMECALL R20 R20 K64 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K53 ["Text"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K58 ["WHITE"]
  SETTABLEKS R20 R19 K54 ["TextColor3"]
  GETUPVAL R20 6
  SETTABLEKS R20 R19 K55 ["TextSize"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K59 ["FONT"]
  SETTABLEKS R20 R19 K56 ["Font"]
  LOADN R20 2
  SETTABLEKS R20 R19 K60 ["ZIndex"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["ChangeLabel"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Core"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K10 ["ContextHelper"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K11 ["Images"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K12 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R4 K13 ["Urls"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R4 K14 ["Colors"]
  CALL R9 1 1
  GETTABLEKS R10 R5 K15 ["withLocalization"]
  GETTABLEKS R11 R3 K16 ["ContextServices"]
  GETTABLEKS R12 R11 K17 ["withContext"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K8 ["Core"]
  GETTABLEKS R16 R17 K9 ["Util"]
  GETTABLEKS R15 R16 K18 ["SharedFlags"]
  GETTABLEKS R14 R15 K19 ["getFFlagToolboxCleanupLegacyContext"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K20 ["PureComponent"]
  LOADK R16 K21 ["ImagePicker"]
  NAMECALL R14 R14 K22 ["extend"]
  CALL R14 2 1
  GETTABLEKS R15 R7 K23 ["FONT_SIZE_MEDIUM"]
  GETIMPORT R16 K26 [Vector2.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  DUPCLOSURE R17 K27 [PROTO_2]
  SETTABLEKS R17 R14 K28 ["init"]
  DUPCLOSURE R17 K29 [PROTO_3]
  SETTABLEKS R17 R14 K30 ["getStatus"]
  MOVE R17 R13
  CALL R17 0 1
  JUMPIF R17 [+4]
  DUPCLOSURE R17 K31 [PROTO_5]
  CAPTURE VAL R10
  SETTABLEKS R17 R14 K32 ["render"]
  MOVE R18 R13
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADK R17 K32 ["render"]
  JUMP [+1]
  LOADK R17 K33 ["renderContent"]
  DUPCLOSURE R18 K34 [PROTO_6]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R15
  SETTABLE R18 R14 R17
  MOVE R17 R12
  DUPTABLE R18 K37 [{"Stylizer", "Localization"}]
  GETTABLEKS R19 R11 K35 ["Stylizer"]
  SETTABLEKS R19 R18 K35 ["Stylizer"]
  GETTABLEKS R19 R11 K36 ["Localization"]
  SETTABLEKS R19 R18 K36 ["Localization"]
  CALL R17 1 1
  MOVE R18 R14
  CALL R17 1 1
  MOVE R14 R17
  RETURN R14 1
