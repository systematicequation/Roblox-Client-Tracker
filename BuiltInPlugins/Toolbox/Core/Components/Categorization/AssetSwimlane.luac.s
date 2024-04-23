PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["selectContextualAssets marked for removal by FFlagToolboxPortContextualReccomendationsToNewPackage"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["contextualAssets"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClickSeeAllAssets"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["SectionName"]
  JUMPIF R1 [+3]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["PathName"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["CategoryName"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["SortName"]
  LOADNIL R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["QueryParams"]
  CALL R0 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADN R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R1 K0 ["Asset"]
  GETTABLEKS R2 R3 K1 ["Id"]
  LOADB R3 0
  GETUPVAL R4 0
  JUMPIFNOTEQ R4 R2 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["canHoverAsset"]
  CALL R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K20 [{"assetId", "assetData", "assetTileLocation", "canInsertAsset", "isHovered", "logImpression", "onAssetHovered", "onAssetHoverEnded", "onAssetPreviewButtonClicked", "onSearchByCreator", "parentAbsolutePosition", "parentSize", "shouldLogOnMount", "swimlaneCategory", "tryInsert", "tryOpenAssetConfig"}]
  SETTABLEKS R2 R6 K4 ["assetId"]
  SETTABLEKS R1 R6 K5 ["assetData"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K21 ["ASSET_TILE_LOCATION"]
  GETTABLEKS R7 R8 K22 ["BROWSE"]
  SETTABLEKS R7 R6 K6 ["assetTileLocation"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K23 ["CanInsertAsset"]
  SETTABLEKS R7 R6 K7 ["canInsertAsset"]
  SETTABLEKS R3 R6 K8 ["isHovered"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K24 ["LogAssetImpression"]
  SETTABLEKS R7 R6 K9 ["logImpression"]
  GETUPVAL R7 6
  SETTABLEKS R7 R6 K10 ["onAssetHovered"]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K11 ["onAssetHoverEnded"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K25 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R7 R6 K12 ["onAssetPreviewButtonClicked"]
  GETUPVAL R8 8
  CALL R8 0 1
  JUMPIFNOT R8 [+4]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K26 ["OnSearchByCreator"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K13 ["onSearchByCreator"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K27 ["ParentAbsolutePosition"]
  SETTABLEKS R7 R6 K14 ["parentAbsolutePosition"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K28 ["ParentAbsoluteSize"]
  SETTABLEKS R7 R6 K15 ["parentSize"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K29 ["ShouldLogAssetOnMount"]
  SETTABLEKS R7 R6 K16 ["shouldLogOnMount"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K30 ["SwimlaneCategory"]
  SETTABLEKS R7 R6 K17 ["swimlaneCategory"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K31 ["TryInsert"]
  SETTABLEKS R7 R6 K18 ["tryInsert"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R7 R6 K19 ["tryOpenAssetConfig"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldShowPrices"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["CategoryName"]
  CALL R1 1 1
  LOADNIL R2
  JUMPIFNOT R1 [+8]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["ASSET_HEIGHT"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["PRICE_HEIGHT"]
  ADD R2 R3 R4
  JUMP [+3]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["ASSET_HEIGHT"]
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+10]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["SectionName"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R3 R4 [+3]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K6 ["createElement"]
  GETUPVAL R4 5
  DUPTABLE R5 K16 [{"Data", "IsLoading", "LayoutOrder", "OnClickSeeAll", "OnRenderItem", "Size", "Total", "Title", "ZIndex"}]
  GETTABLEKS R6 R0 K17 ["assets"]
  SETTABLEKS R6 R5 K7 ["Data"]
  GETTABLEKS R6 R0 K18 ["loading"]
  SETTABLEKS R6 R5 K8 ["IsLoading"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["LayoutOrder"]
  SETTABLEKS R6 R5 K9 ["LayoutOrder"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K10 ["OnClickSeeAll"]
  GETUPVAL R6 7
  SETTABLEKS R6 R5 K11 ["OnRenderItem"]
  GETIMPORT R6 K21 [UDim2.new]
  LOADN R7 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K22 ["SwimlaneWidth"]
  LOADN R9 0
  MOVE R10 R2
  CALL R6 4 1
  SETTABLEKS R6 R5 K12 ["Size"]
  GETTABLEKS R6 R0 K23 ["total"]
  SETTABLEKS R6 R5 K13 ["Total"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K14 ["Title"]
  SETTABLEKS R6 R5 K14 ["Title"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["ZIndex"]
  SETTABLEKS R6 R5 K15 ["ZIndex"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETUPVAL R3 3
  CALL R3 0 1
  JUMP [+3]
  GETUPVAL R3 4
  GETUPVAL R4 5
  CALL R3 1 1
  GETUPVAL R4 6
  LOADN R5 0
  CALL R4 1 2
  GETUPVAL R6 7
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  NEWTABLE R8 0 6
  GETTABLEKS R9 R0 K1 ["CategoryName"]
  GETTABLEKS R10 R0 K2 ["OnClickSeeAllAssets"]
  GETTABLEKS R11 R0 K3 ["PathName"]
  GETTABLEKS R12 R0 K4 ["QueryParams"]
  GETTABLEKS R13 R0 K5 ["SectionName"]
  GETTABLEKS R14 R0 K6 ["SortName"]
  SETLIST R8 R9 6 [1]
  CALL R6 2 1
  GETUPVAL R7 7
  NEWCLOSURE R8 P1
  CAPTURE VAL R5
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R8 7
  NEWCLOSURE R9 P2
  CAPTURE VAL R5
  NEWTABLE R10 0 0
  CALL R8 2 1
  GETUPVAL R9 7
  NEWCLOSURE R10 P3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE UPVAL U11
  NEWTABLE R11 0 13
  MOVE R12 R1
  MOVE R13 R7
  MOVE R14 R8
  GETTABLEKS R15 R0 K7 ["CanInsertAsset"]
  GETTABLEKS R16 R0 K8 ["LogAssetImpression"]
  GETTABLEKS R17 R0 K9 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R18 R0 K10 ["OnSearchByCreator"]
  GETTABLEKS R19 R0 K11 ["ParentAbsolutePosition"]
  GETTABLEKS R20 R0 K12 ["ParentAbsoluteSize"]
  GETTABLEKS R21 R0 K13 ["ShouldLogAssetOnMount"]
  GETTABLEKS R22 R0 K14 ["SwimlaneCategory"]
  GETTABLEKS R23 R0 K15 ["TryInsert"]
  GETTABLEKS R24 R0 K16 ["TryOpenAssetConfig"]
  SETLIST R11 R12 13 [1]
  CALL R9 2 1
  GETUPVAL R10 7
  NEWCLOSURE R11 P4
  CAPTURE UPVAL U12
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U13
  CAPTURE UPVAL U8
  CAPTURE UPVAL U14
  CAPTURE VAL R6
  CAPTURE VAL R9
  NEWTABLE R12 0 7
  MOVE R13 R6
  MOVE R14 R9
  GETTABLEKS R15 R0 K1 ["CategoryName"]
  GETTABLEKS R16 R0 K17 ["LayoutOrder"]
  GETTABLEKS R17 R0 K18 ["SwimlaneWidth"]
  GETTABLEKS R18 R0 K19 ["Title"]
  GETTABLEKS R19 R0 K20 ["ZIndex"]
  SETLIST R12 R13 7 [1]
  CALL R10 2 1
  GETUPVAL R11 2
  CALL R11 0 1
  JUMPIFNOT R11 [+19]
  GETTABLEKS R11 R0 K5 ["SectionName"]
  GETUPVAL R13 10
  GETTABLEKS R12 R13 K21 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R11 R12 [+13]
  GETTABLEKS R12 R3 K22 ["assetsInCameraViewport"]
  LENGTH R11 R12
  JUMPIFEQKN R11 K23 [0] [+6]
  GETTABLEKS R12 R3 K24 ["assetsInCameraVicinity"]
  LENGTH R11 R12
  JUMPIFNOTEQKN R11 K23 [0] [+3]
  LOADNIL R11
  RETURN R11 1
  GETUPVAL R12 15
  GETTABLEKS R11 R12 K25 ["Generator"]
  DUPTABLE R12 K36 [{"assetsInCameraViewport", "assetsInCameraVicinity", "networkInterface", "categoryName", "includeUnverifiedCreators", "qualityFilterData", "sortName", "queryParams", "sectionName", "initialPageSize", "render", "searchSource"}]
  GETTABLEKS R14 R0 K5 ["SectionName"]
  GETUPVAL R16 10
  GETTABLEKS R15 R16 K21 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R14 R15 [+4]
  GETTABLEKS R13 R3 K22 ["assetsInCameraViewport"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K22 ["assetsInCameraViewport"]
  GETTABLEKS R14 R0 K5 ["SectionName"]
  GETUPVAL R16 10
  GETTABLEKS R15 R16 K21 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R14 R15 [+4]
  GETTABLEKS R13 R3 K24 ["assetsInCameraVicinity"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K24 ["assetsInCameraVicinity"]
  GETTABLEKS R13 R2 K26 ["networkInterface"]
  SETTABLEKS R13 R12 K26 ["networkInterface"]
  GETTABLEKS R13 R0 K1 ["CategoryName"]
  SETTABLEKS R13 R12 K27 ["categoryName"]
  GETTABLEKS R13 R0 K37 ["IncludeUnverifiedCreators"]
  SETTABLEKS R13 R12 K28 ["includeUnverifiedCreators"]
  GETUPVAL R14 16
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  GETTABLEKS R13 R0 K38 ["QualityFilterData"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K29 ["qualityFilterData"]
  GETTABLEKS R13 R0 K6 ["SortName"]
  SETTABLEKS R13 R12 K30 ["sortName"]
  GETTABLEKS R13 R0 K4 ["QueryParams"]
  SETTABLEKS R13 R12 K31 ["queryParams"]
  GETTABLEKS R13 R0 K5 ["SectionName"]
  SETTABLEKS R13 R12 K32 ["sectionName"]
  GETTABLEKS R13 R0 K39 ["InitialPageSize"]
  SETTABLEKS R13 R12 K33 ["initialPageSize"]
  SETTABLEKS R10 R12 K34 ["render"]
  GETTABLEKS R13 R0 K35 ["searchSource"]
  SETTABLEKS R13 R12 K35 ["searchSource"]
  CALL R11 1 -1
  RETURN R11 -1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["SectionName"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["CategoryName"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["SortName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["QueryParams"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["PathName"]
  GETTABLEKS R6 R0 K6 ["OnClickSeeAllAssets"]
  MOVE R7 R6
  OR R8 R1 R5
  MOVE R9 R2
  MOVE R10 R3
  LOADNIL R11
  MOVE R12 R4
  CALL R7 5 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"hoveredAssetId"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["hoveredAssetId"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onClickSeeAllAssets"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"hoveredAssetId"}]
  SETTABLEKS R0 R3 K0 ["hoveredAssetId"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"hoveredAssetId"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K0 ["hoveredAssetId"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R3 R1 K0 ["Asset"]
  GETTABLEKS R2 R3 K1 ["Id"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["Modal"]
  LOADB R4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["hoveredAssetId"]
  JUMPIFNOTEQ R5 R2 [+4]
  GETTABLEKS R4 R3 K5 ["canHoverAsset"]
  CALL R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K23 [{"assetId", "assetData", "assetTileLocation", "canInsertAsset", "isHovered", "logImpression", "onAssetHovered", "onAssetHoverEnded", "onAssetPreviewButtonClicked", "onSearchByCreator", "parentAbsolutePosition", "parentSize", "shouldLogOnMount", "swimlaneCategory", "tryInsert", "tryOpenAssetConfig"}]
  SETTABLEKS R2 R7 K7 ["assetId"]
  SETTABLEKS R1 R7 K8 ["assetData"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K24 ["ASSET_TILE_LOCATION"]
  GETTABLEKS R8 R9 K25 ["BROWSE"]
  SETTABLEKS R8 R7 K9 ["assetTileLocation"]
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K10 ["canInsertAsset"]
  SETTABLEKS R4 R7 K11 ["isHovered"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K26 ["LogAssetImpression"]
  SETTABLEKS R8 R7 K12 ["logImpression"]
  GETUPVAL R8 7
  SETTABLEKS R8 R7 K13 ["onAssetHovered"]
  GETUPVAL R8 8
  SETTABLEKS R8 R7 K14 ["onAssetHoverEnded"]
  GETUPVAL R8 9
  SETTABLEKS R8 R7 K15 ["onAssetPreviewButtonClicked"]
  GETUPVAL R9 10
  CALL R9 0 1
  JUMPIFNOT R9 [+4]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K27 ["OnSearchByCreator"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K16 ["onSearchByCreator"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K28 ["ParentAbsolutePosition"]
  SETTABLEKS R8 R7 K17 ["parentAbsolutePosition"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K29 ["ParentAbsoluteSize"]
  SETTABLEKS R8 R7 K18 ["parentSize"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K30 ["ShouldLogAssetOnMount"]
  SETTABLEKS R8 R7 K19 ["shouldLogOnMount"]
  GETUPVAL R8 11
  SETTABLEKS R8 R7 K20 ["swimlaneCategory"]
  GETUPVAL R8 12
  SETTABLEKS R8 R7 K21 ["tryInsert"]
  GETUPVAL R8 13
  SETTABLEKS R8 R7 K22 ["tryOpenAssetConfig"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldShowPrices"]
  GETUPVAL R2 1
  CALL R1 1 1
  LOADNIL R2
  JUMPIFNOT R1 [+8]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["ASSET_HEIGHT"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["PRICE_HEIGHT"]
  ADD R2 R3 R4
  JUMP [+3]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["ASSET_HEIGHT"]
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R3 4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R3 R4 [+3]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 6
  DUPTABLE R5 K14 [{"Data", "IsLoading", "LayoutOrder", "OnClickSeeAll", "OnRenderItem", "Size", "Total", "Title", "ZIndex"}]
  GETTABLEKS R6 R0 K15 ["assets"]
  SETTABLEKS R6 R5 K5 ["Data"]
  GETTABLEKS R6 R0 K16 ["loading"]
  SETTABLEKS R6 R5 K6 ["IsLoading"]
  GETUPVAL R6 7
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  GETUPVAL R7 8
  GETTABLEKS R6 R7 K17 ["onClickSeeAllAssets"]
  SETTABLEKS R6 R5 K8 ["OnClickSeeAll"]
  GETUPVAL R6 9
  SETTABLEKS R6 R5 K9 ["OnRenderItem"]
  GETIMPORT R6 K20 [UDim2.new]
  LOADN R7 0
  GETUPVAL R8 10
  LOADN R9 0
  MOVE R10 R2
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["Size"]
  GETTABLEKS R6 R0 K21 ["total"]
  SETTABLEKS R6 R5 K11 ["Total"]
  GETUPVAL R6 11
  SETTABLEKS R6 R5 K12 ["Title"]
  GETUPVAL R6 12
  SETTABLEKS R6 R5 K13 ["ZIndex"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["assetsInCameraViewport"]
  GETTABLEKS R4 R1 K3 ["assetsInCameraVicinity"]
  GETTABLEKS R5 R1 K4 ["CanInsertAsset"]
  GETTABLEKS R6 R1 K5 ["CategoryName"]
  GETTABLEKS R7 R1 K6 ["InitialPageSize"]
  GETTABLEKS R8 R1 K7 ["LayoutOrder"]
  GETTABLEKS R10 R1 K8 ["Network"]
  GETTABLEKS R9 R10 K9 ["networkInterface"]
  GETTABLEKS R10 R1 K10 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R11 R1 K11 ["QueryParams"]
  GETTABLEKS R12 R1 K12 ["SearchTerm"]
  GETTABLEKS R13 R1 K13 ["SectionName"]
  GETTABLEKS R14 R1 K14 ["SwimlaneCategory"]
  GETTABLEKS R15 R1 K15 ["SortName"]
  GETTABLEKS R16 R1 K16 ["Title"]
  GETTABLEKS R17 R1 K17 ["TryInsert"]
  GETTABLEKS R18 R1 K18 ["TryOpenAssetConfig"]
  GETTABLEKS R19 R1 K19 ["ZIndex"]
  GETTABLEKS R20 R1 K20 ["SwimlaneWidth"]
  NEWCLOSURE R21 P0
  CAPTURE VAL R0
  NEWCLOSURE R22 P1
  CAPTURE VAL R0
  NEWCLOSURE R23 P2
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R10
  CAPTURE UPVAL U3
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R18
  NEWCLOSURE R24 P3
  CAPTURE UPVAL U4
  CAPTURE VAL R6
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  CAPTURE VAL R13
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R23
  CAPTURE VAL R20
  CAPTURE VAL R16
  CAPTURE VAL R19
  GETUPVAL R26 7
  GETTABLEKS R25 R26 K21 ["Generator"]
  DUPTABLE R26 K31 [{"assetsInCameraViewport", "assetsInCameraVicinity", "networkInterface", "categoryName", "includeUnverifiedCreators", "qualityFilterData", "sortName", "queryParams", "sectionName", "initialPageSize", "render", "searchSource"}]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K32 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R13 R28 [+3]
  MOVE R27 R3
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K2 ["assetsInCameraViewport"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K32 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R13 R28 [+3]
  MOVE R27 R4
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K3 ["assetsInCameraVicinity"]
  SETTABLEKS R9 R26 K9 ["networkInterface"]
  SETTABLEKS R6 R26 K22 ["categoryName"]
  GETTABLEKS R27 R1 K33 ["IncludeUnverifiedCreators"]
  SETTABLEKS R27 R26 K23 ["includeUnverifiedCreators"]
  GETUPVAL R28 8
  CALL R28 0 1
  JUMPIFNOT R28 [+3]
  GETTABLEKS R27 R1 K34 ["QualityFilterData"]
  JUMP [+1]
  LOADNIL R27
  SETTABLEKS R27 R26 K24 ["qualityFilterData"]
  SETTABLEKS R15 R26 K25 ["sortName"]
  SETTABLEKS R11 R26 K26 ["queryParams"]
  SETTABLEKS R13 R26 K27 ["sectionName"]
  SETTABLEKS R7 R26 K28 ["initialPageSize"]
  SETTABLEKS R24 R26 K29 ["render"]
  GETTABLEKS R27 R1 K30 ["searchSource"]
  SETTABLEKS R27 R26 K30 ["searchSource"]
  CALL R25 1 -1
  RETURN R25 -1

PROTO_14:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["contextualAssets"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  DUPTABLE R3 K3 [{"assetsInCameraViewport", "assetsInCameraVicinity"}]
  GETTABLEKS R4 R2 K1 ["assetsInCameraViewport"]
  SETTABLEKS R4 R3 K1 ["assetsInCameraViewport"]
  GETTABLEKS R4 R2 K2 ["assetsInCameraVicinity"]
  SETTABLEKS R4 R3 K2 ["assetsInCameraVicinity"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagToolboxFunctionalComponentsForContextualRecs"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIFNOT R2 [+175]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Core"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["Asset"]
  GETTABLEKS R4 R5 K12 ["Asset"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Core"]
  GETTABLEKS R6 R7 K13 ["Types"]
  GETTABLEKS R5 R6 K14 ["AssetLogicTypes"]
  CALL R4 1 1
  GETTABLEKS R7 R0 K6 ["Core"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K15 ["Categorization"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Core"]
  GETTABLEKS R8 R9 K13 ["Types"]
  GETTABLEKS R7 R8 K16 ["Category"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Core"]
  GETTABLEKS R9 R10 K17 ["Util"]
  GETTABLEKS R8 R9 K18 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Core"]
  GETTABLEKS R10 R11 K13 ["Types"]
  GETTABLEKS R9 R10 K19 ["HomeTypes"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Core"]
  GETTABLEKS R11 R12 K20 ["ContextServices"]
  GETTABLEKS R10 R11 K21 ["ModalContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Core"]
  GETTABLEKS R12 R13 K20 ["ContextServices"]
  GETTABLEKS R11 R12 K22 ["NetworkContext"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Core"]
  GETTABLEKS R13 R14 K11 ["Components"]
  GETTABLEKS R12 R13 K23 ["ResultsFetcher"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R5 K24 ["Swimlane"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Core"]
  GETTABLEKS R15 R16 K25 ["Hooks"]
  GETTABLEKS R14 R15 K26 ["useSelector"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Core"]
  GETTABLEKS R16 R17 K25 ["Hooks"]
  GETTABLEKS R15 R16 K27 ["useContextualAssets"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K6 ["Core"]
  GETTABLEKS R18 R19 K17 ["Util"]
  GETTABLEKS R17 R18 K28 ["SharedFlags"]
  GETTABLEKS R16 R17 K29 ["getFFlagToolboxFixInventoryGridSearch"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R20 R0 K6 ["Core"]
  GETTABLEKS R19 R20 K17 ["Util"]
  GETTABLEKS R18 R19 K28 ["SharedFlags"]
  GETTABLEKS R17 R18 K30 ["getFFlagToolboxContextualRecommendationsShadowTraffic"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Core"]
  GETTABLEKS R19 R20 K7 ["Flags"]
  GETTABLEKS R18 R19 K31 ["getFFlagQualityFiltersInToolboxSearch"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K6 ["Core"]
  GETTABLEKS R20 R21 K7 ["Flags"]
  GETTABLEKS R19 R20 K32 ["getFFlagToolboxPortContextualReccomendationsToNewPackage"]
  CALL R18 1 1
  GETTABLEKS R19 R2 K33 ["useState"]
  GETTABLEKS R20 R2 K34 ["useCallback"]
  DUPCLOSURE R21 K35 [PROTO_0]
  CAPTURE VAL R18
  DUPCLOSURE R22 K36 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R17
  RETURN R22 1
  GETTABLEKS R2 R0 K9 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K37 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K38 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K39 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K40 ["Dash"]
  CALL R6 1 1
  GETTABLEKS R9 R0 K6 ["Core"]
  GETTABLEKS R8 R9 K11 ["Components"]
  GETTABLEKS R7 R8 K15 ["Categorization"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K24 ["Swimlane"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K41 ["HorizontalList"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Core"]
  GETTABLEKS R12 R13 K11 ["Components"]
  GETTABLEKS R11 R12 K23 ["ResultsFetcher"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K6 ["Core"]
  GETTABLEKS R14 R15 K11 ["Components"]
  GETTABLEKS R13 R14 K12 ["Asset"]
  GETTABLEKS R12 R13 K12 ["Asset"]
  CALL R11 1 1
  GETTABLEKS R13 R0 K6 ["Core"]
  GETTABLEKS R12 R13 K17 ["Util"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K18 ["Constants"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Core"]
  GETTABLEKS R16 R17 K20 ["ContextServices"]
  GETTABLEKS R15 R16 K21 ["ModalContext"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K6 ["Core"]
  GETTABLEKS R17 R18 K20 ["ContextServices"]
  GETTABLEKS R16 R17 K22 ["NetworkContext"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Core"]
  GETTABLEKS R18 R19 K42 ["Models"]
  GETTABLEKS R17 R18 K43 ["AssetInfo"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Core"]
  GETTABLEKS R19 R20 K13 ["Types"]
  GETTABLEKS R18 R19 K14 ["AssetLogicTypes"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K6 ["Core"]
  GETTABLEKS R20 R21 K13 ["Types"]
  GETTABLEKS R19 R20 K16 ["Category"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K6 ["Core"]
  GETTABLEKS R21 R22 K13 ["Types"]
  GETTABLEKS R20 R21 K19 ["HomeTypes"]
  CALL R19 1 1
  GETTABLEKS R21 R3 K20 ["ContextServices"]
  GETTABLEKS R20 R21 K44 ["withContext"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R25 R0 K6 ["Core"]
  GETTABLEKS R24 R25 K17 ["Util"]
  GETTABLEKS R23 R24 K28 ["SharedFlags"]
  GETTABLEKS R22 R23 K29 ["getFFlagToolboxFixInventoryGridSearch"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R26 R0 K6 ["Core"]
  GETTABLEKS R25 R26 K17 ["Util"]
  GETTABLEKS R24 R25 K28 ["SharedFlags"]
  GETTABLEKS R23 R24 K30 ["getFFlagToolboxContextualRecommendationsShadowTraffic"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K6 ["Core"]
  GETTABLEKS R25 R26 K7 ["Flags"]
  GETTABLEKS R24 R25 K31 ["getFFlagQualityFiltersInToolboxSearch"]
  CALL R23 1 1
  GETTABLEKS R24 R4 K45 ["PureComponent"]
  LOADK R26 K46 ["AssetSwimlane"]
  NAMECALL R24 R24 K47 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K48 [PROTO_8]
  SETTABLEKS R25 R24 K49 ["init"]
  DUPCLOSURE R25 K50 [PROTO_13]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R18
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R23
  SETTABLEKS R25 R24 K51 ["render"]
  DUPCLOSURE R25 K52 [PROTO_14]
  MOVE R26 R20
  DUPTABLE R27 K55 [{"Modal", "Network"}]
  SETTABLEKS R14 R27 K53 ["Modal"]
  SETTABLEKS R15 R27 K54 ["Network"]
  CALL R26 1 1
  MOVE R27 R24
  CALL R26 1 1
  MOVE R24 R26
  GETTABLEKS R26 R5 K56 ["connect"]
  MOVE R27 R25
  CALL R26 1 1
  MOVE R27 R24
  CALL R26 1 -1
  RETURN R26 -1
