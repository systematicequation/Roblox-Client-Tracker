PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnClickBack"]
  JUMPIFNOT R1 [+2]
  MOVE R2 R1
  CALL R2 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["CategoryName"]
  GETTABLEKS R3 R1 K2 ["OnClickSubcategory"]
  GETTABLEKS R4 R1 K3 ["OnClickSeeAllAssets"]
  GETTABLEKS R5 R1 K4 ["SortName"]
  GETTABLEKS R6 R1 K5 ["SubcategoryDict"]
  GETTABLE R7 R6 R0
  GETTABLEKS R8 R7 K6 ["childCount"]
  JUMPIFNOTEQKN R8 K7 [0] [+11]
  JUMPIFNOT R4 [+9]
  MOVE R8 R4
  LOADNIL R9
  MOVE R10 R2
  MOVE R11 R5
  LOADNIL R12
  GETTABLEKS R13 R7 K8 ["queryParams"]
  CALL R8 5 0
  RETURN R0 0
  JUMPIFNOT R3 [+28]
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+14]
  MOVE R8 R3
  NEWTABLE R9 0 1
  MOVE R10 R0
  SETLIST R9 R10 1 [1]
  GETTABLEKS R10 R7 K9 ["children"]
  MOVE R11 R2
  MOVE R12 R5
  GETTABLEKS R13 R7 K8 ["queryParams"]
  CALL R8 5 0
  RETURN R0 0
  MOVE R8 R3
  NEWTABLE R9 0 1
  MOVE R10 R0
  SETLIST R9 R10 1 [1]
  GETTABLEKS R10 R7 K9 ["children"]
  MOVE R11 R2
  MOVE R12 R5
  CALL R8 4 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"maxTileHeight"}]
  GETTABLEKS R3 R0 K0 ["maxTileHeight"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Y"]
  FASTCALL2 MATH_MAX R3 R4 [+3]
  GETIMPORT R2 K5 [math.max]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["maxTileHeight"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SubcategoryDict"]
  NEWTABLE R2 0 0
  GETIMPORT R3 K3 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  LOADNIL R8
  LOADNIL R9
  GETTABLEKS R10 R7 K4 ["thumbnail"]
  JUMPIFNOT R10 [+20]
  GETIMPORT R10 K7 [Color3.fromHex]
  GETTABLEKS R12 R7 K4 ["thumbnail"]
  GETTABLEKS R11 R12 K8 ["backgroundColor"]
  CALL R10 1 1
  MOVE R8 R10
  GETTABLEKS R11 R7 K4 ["thumbnail"]
  GETTABLEKS R10 R11 K9 ["assetId"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["constructAssetThumbnailUrl"]
  MOVE R12 R10
  GETUPVAL R13 2
  GETUPVAL R14 2
  CALL R11 3 1
  MOVE R9 R11
  GETTABLEKS R10 R7 K11 ["name"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K20 [{"BackgroundColor", "Image", "Key", "LayoutOrder", "OnClick", "Title", "OnAbsoluteSizeChanged"}]
  SETTABLEKS R8 R13 K13 ["BackgroundColor"]
  SETTABLEKS R9 R13 K14 ["Image"]
  GETTABLEKS R14 R7 K11 ["name"]
  SETTABLEKS R14 R13 K15 ["Key"]
  GETTABLEKS R14 R7 K21 ["index"]
  SETTABLEKS R14 R13 K16 ["LayoutOrder"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K22 ["onClickSubcategory"]
  SETTABLEKS R14 R13 K17 ["OnClick"]
  GETTABLEKS R14 R7 K23 ["displayName"]
  SETTABLEKS R14 R13 K18 ["Title"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K24 ["onTileSizeChanged"]
  SETTABLEKS R14 R13 K19 ["OnAbsoluteSizeChanged"]
  CALL R11 2 1
  SETTABLE R11 R2 R10
  FORGLOOP R3 2 [-61]
  RETURN R2 1

PROTO_5:
  DUPTABLE R2 K1 [{"maxTileHeight"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K0 ["maxTileHeight"]
  SETTABLEKS R2 R0 K2 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["onClickBack"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K4 ["onClickSubcategory"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["onTileSizeChanged"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K6 ["getSubcategoryElements"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Position"]
  GETTABLEKS R6 R1 K5 ["Size"]
  GETTABLEKS R7 R1 K6 ["Stylizer"]
  GETTABLEKS R8 R0 K7 ["getSubcategoryElements"]
  CALL R8 0 1
  LOADK R10 K8 ["< "]
  LOADK R13 K9 ["General"]
  LOADK R14 K10 ["BackToHome"]
  DUPTABLE R15 K12 [{"assetType"}]
  GETUPVAL R17 0
  MOVE R18 R3
  CALL R17 1 1
  GETTABLEKS R18 R1 K13 ["CategoryName"]
  GETTABLE R16 R17 R18
  SETTABLEKS R16 R15 K11 ["assetType"]
  NAMECALL R11 R3 K14 ["getText"]
  CALL R11 4 1
  CONCAT R9 R10 R11
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K15 ["createElement"]
  LOADK R11 K16 ["Frame"]
  DUPTABLE R12 K18 [{"BackgroundColor3", "LayoutOrder", "Position", "Size"}]
  GETTABLEKS R13 R7 K19 ["backgroundColor"]
  SETTABLEKS R13 R12 K17 ["BackgroundColor3"]
  SETTABLEKS R4 R12 K3 ["LayoutOrder"]
  SETTABLEKS R5 R12 K4 ["Position"]
  SETTABLEKS R6 R12 K5 ["Size"]
  DUPTABLE R13 K21 [{"ScrollingFrame"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K15 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K29 [{"AutoSizeCanvas", "AutomaticCanvasSize", "CanvasSize", "Layout", "EnableScrollBarBackground", "Padding", "Size", "Spacing"}]
  LOADB R17 1
  SETTABLEKS R17 R16 K22 ["AutoSizeCanvas"]
  GETIMPORT R17 K33 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K23 ["AutomaticCanvasSize"]
  GETIMPORT R17 K36 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K24 ["CanvasSize"]
  GETIMPORT R17 K39 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K25 ["Layout"]
  LOADB R17 1
  SETTABLEKS R17 R16 K26 ["EnableScrollBarBackground"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K40 ["MAIN_VIEW_PADDING"]
  SETTABLEKS R17 R16 K27 ["Padding"]
  SETTABLEKS R6 R16 K5 ["Size"]
  GETIMPORT R17 K42 [UDim.new]
  LOADN R18 0
  GETUPVAL R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K28 ["Spacing"]
  DUPTABLE R17 K45 [{"BackButton", "InnerGrid"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K15 ["createElement"]
  GETUPVAL R19 5
  DUPTABLE R20 K49 [{"LayoutOrder", "OnClick", "Style", "Text"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K3 ["LayoutOrder"]
  GETTABLEKS R21 R0 K50 ["onClickBack"]
  SETTABLEKS R21 R20 K46 ["OnClick"]
  LOADK R21 K51 ["Unobtrusive"]
  SETTABLEKS R21 R20 K47 ["Style"]
  SETTABLEKS R9 R20 K48 ["Text"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K43 ["BackButton"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K15 ["createElement"]
  GETUPVAL R19 6
  DUPTABLE R20 K54 [{"AutomaticSize", "CutOffs", "ItemHeight", "LayoutOrder", "Size"}]
  GETIMPORT R21 K33 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K31 ["AutomaticSize"]
  NEWTABLE R21 0 3
  DUPTABLE R22 K57 [{"ColumnCount", "MinWidth"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K55 ["ColumnCount"]
  LOADN R23 0
  SETTABLEKS R23 R22 K56 ["MinWidth"]
  DUPTABLE R23 K57 [{"ColumnCount", "MinWidth"}]
  LOADN R24 2
  SETTABLEKS R24 R23 K55 ["ColumnCount"]
  LOADN R24 120
  SETTABLEKS R24 R23 K56 ["MinWidth"]
  DUPTABLE R24 K57 [{"ColumnCount", "MinWidth"}]
  LOADN R25 3
  SETTABLEKS R25 R24 K55 ["ColumnCount"]
  LOADN R25 224
  SETTABLEKS R25 R24 K56 ["MinWidth"]
  SETLIST R21 R22 3 [1]
  SETTABLEKS R21 R20 K52 ["CutOffs"]
  GETIMPORT R21 K42 [UDim.new]
  LOADN R22 0
  GETTABLEKS R23 R2 K58 ["maxTileHeight"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K53 ["ItemHeight"]
  LOADN R21 2
  SETTABLEKS R21 R20 K3 ["LayoutOrder"]
  GETIMPORT R21 K36 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K5 ["Size"]
  MOVE R21 R8
  CALL R18 3 1
  SETTABLEKS R18 R17 K44 ["InnerGrid"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K20 ["ScrollingFrame"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Core"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K10 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K11 ["Urls"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K12 ["ContextServices"]
  GETTABLEKS R8 R7 K13 ["withContext"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K8 ["Core"]
  GETTABLEKS R11 R12 K14 ["Localization"]
  GETTABLEKS R10 R11 K15 ["getLocalizedCategoryMap"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K8 ["Core"]
  GETTABLEKS R13 R14 K16 ["Components"]
  GETTABLEKS R12 R13 K17 ["Categorization"]
  GETTABLEKS R11 R12 K18 ["IconTile"]
  CALL R10 1 1
  GETTABLEKS R12 R2 K19 ["UI"]
  GETTABLEKS R11 R12 K20 ["LinkText"]
  GETTABLEKS R13 R2 K19 ["UI"]
  GETTABLEKS R12 R13 K21 ["ResponsiveGrid"]
  GETTABLEKS R14 R2 K19 ["UI"]
  GETTABLEKS R13 R14 K22 ["ScrollingFrame"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K8 ["Core"]
  GETTABLEKS R16 R17 K23 ["Types"]
  GETTABLEKS R15 R16 K24 ["HomeTypes"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K8 ["Core"]
  GETTABLEKS R18 R19 K9 ["Util"]
  GETTABLEKS R17 R18 K25 ["SharedFlags"]
  GETTABLEKS R16 R17 K26 ["getFFlagToolboxTrackCurrentSubcategory"]
  CALL R15 1 1
  GETTABLEKS R16 R5 K27 ["MAIN_VIEW_PADDING"]
  GETTABLEKS R17 R5 K28 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
  GETTABLEKS R18 R3 K29 ["PureComponent"]
  LOADK R20 K30 ["SubcategoriesView"]
  NAMECALL R18 R18 K31 ["extend"]
  CALL R18 2 1
  DUPTABLE R19 K33 [{"Size"}]
  GETIMPORT R20 K36 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K32 ["Size"]
  SETTABLEKS R19 R18 K37 ["defaultProps"]
  DUPCLOSURE R19 K38 [PROTO_5]
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R3
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K39 ["init"]
  DUPCLOSURE R19 K40 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R19 R18 K41 ["render"]
  MOVE R19 R8
  DUPTABLE R20 K43 [{"Localization", "Stylizer"}]
  GETTABLEKS R21 R7 K14 ["Localization"]
  SETTABLEKS R21 R20 K14 ["Localization"]
  GETTABLEKS R21 R7 K42 ["Stylizer"]
  SETTABLEKS R21 R20 K42 ["Stylizer"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  RETURN R18 1
