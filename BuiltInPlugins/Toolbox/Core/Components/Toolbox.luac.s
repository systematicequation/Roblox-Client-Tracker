PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Settings"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Network"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Network"]
  GETTABLEKS R1 R2 K3 ["networkInterface"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Settings"]
  LOADK R4 K4 ["Plugin"]
  NAMECALL R2 R2 K5 ["get"]
  CALL R2 2 1
  NAMECALL R3 R2 K6 ["loadInitialSettings"]
  CALL R3 1 1
  LOADNIL R4
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+10]
  NAMECALL R5 R2 K7 ["getLayoutMode"]
  CALL R5 1 1
  MOVE R4 R5
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K8 ["setLayoutMode"]
  MOVE R6 R4
  CALL R5 1 0
  LOADNIL R5
  LOADNIL R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["getBackgroundForStudioTheme"]
  CALL R7 0 1
  LOADN R5 1
  LOADK R6 K10 [""]
  GETTABLEKS R8 R3 K11 ["categoryName"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K12 ["getTabForCategoryName"]
  MOVE R10 R8
  CALL R9 1 1
  GETUPVAL R10 3
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["CREATIONS"]
  JUMPIFNOTEQ R9 R10 [+16]
  GETUPVAL R10 4
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K14 ["DEFAULT_TAB"]
  JUMP [+3]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["INVENTORY"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K16 ["DEFAULT"]
  GETTABLEKS R8 R10 K17 ["name"]
  DUPTABLE R10 K25 [{"categories", "categoryName", "creator", "searchTerm", "sortIndex", "targetPage", "selectedBackgroundIndex", "requestReason"}]
  SETTABLEKS R9 R10 K18 ["categories"]
  SETTABLEKS R8 R10 K11 ["categoryName"]
  GETTABLEKS R11 R3 K19 ["creator"]
  SETTABLEKS R11 R10 K19 ["creator"]
  SETTABLEKS R6 R10 K20 ["searchTerm"]
  SETTABLEKS R5 R10 K21 ["sortIndex"]
  LOADN R11 1
  SETTABLEKS R11 R10 K22 ["targetPage"]
  SETTABLEKS R7 R10 K23 ["selectedBackgroundIndex"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K26 ["InitLoad"]
  SETTABLEKS R11 R10 K24 ["requestReason"]
  LOADB R11 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K15 ["INVENTORY"]
  JUMPIFEQ R9 R12 [+8]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["CREATIONS"]
  JUMPIFEQ R9 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  JUMPIFNOT R11 [+8]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K27 ["getToolboxManageableGroups"]
  MOVE R13 R1
  MOVE R14 R2
  MOVE R15 R10
  CALL R12 3 0
  GETUPVAL R12 6
  GETTABLEKS R14 R0 K0 ["props"]
  GETTABLEKS R13 R14 K28 ["IXP"]
  CALL R12 1 1
  JUMPIFNOT R12 [+18]
  LOADB R12 0
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K29 ["ListView"]
  JUMPIFNOTEQ R4 R13 [+13]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["getTabForCategoryName"]
  MOVE R14 R8
  CALL R13 1 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K15 ["INVENTORY"]
  JUMPIFEQ R13 R14 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  JUMPIF R12 [+8]
  GETTABLEKS R14 R0 K0 ["props"]
  GETTABLEKS R13 R14 K30 ["updatePageInfo"]
  MOVE R14 R1
  MOVE R15 R2
  MOVE R16 R10
  CALL R13 3 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["X"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["TOOLBOX_MIN_WIDTH"]
  FASTCALL2 MATH_MAX R2 R3 [+3]
  GETIMPORT R1 K5 [math.max]
  CALL R1 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["state"]
  GETTABLEKS R2 R3 K7 ["toolboxWidth"]
  JUMPIFEQ R2 R1 [+8]
  GETUPVAL R2 1
  DUPTABLE R4 K8 [{"toolboxWidth"}]
  SETTABLEKS R1 R4 K7 ["toolboxWidth"]
  NAMECALL R2 R2 K9 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["showSearchOptions"]
  JUMPIF R0 [+30]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["categoryName"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["getCategoryByName"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["getTabKeyForCategoryName"]
  MOVE R4 R1
  CALL R3 1 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["ToolboxAssetTypeToEngine"]
  GETTABLEKS R6 R2 K7 ["assetType"]
  GETTABLE R4 R5 R6
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["MarketplaceSearchFilterOpened"]
  MOVE R6 R4
  MOVE R7 R3
  CALL R5 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K9 ["Modal"]
  GETTABLEKS R2 R1 K10 ["onSearchOptionsToggled"]
  NOT R3 R0
  CALL R2 1 0
  GETUPVAL R2 0
  DUPTABLE R4 K11 [{"showSearchOptions"}]
  NOT R5 R0
  SETTABLEKS R5 R4 K1 ["showSearchOptions"]
  NAMECALL R2 R2 K12 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["CREATIONS_KEY"]
  JUMPIFNOTEQ R2 R0 [+21]
  GETIMPORT R2 K2 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  MOVE R7 R6
  JUMPIFNOT R7 [+7]
  LOADB R7 1
  GETTABLEKS R8 R6 K3 ["selectable"]
  JUMPIFEQKNIL R8 [+3]
  GETTABLEKS R7 R6 K3 ["selectable"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R6 K4 ["name"]
  RETURN R8 1
  FORGLOOP R2 2 [inext] [-14]
  GETTABLEN R3 R1 1
  GETTABLEKS R2 R3 K4 ["name"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["MARKETPLACE_KEY"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["CREATOR_ROBLOX"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getCategories"]
  MOVE R3 R0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["roles"]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["props"]
  GETTABLEKS R5 R6 K3 ["IXP"]
  JUMP [+1]
  LOADNIL R5
  CALL R2 3 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["Dictionary"]
  GETTABLEKS R3 R4 K5 ["join"]
  DUPTABLE R4 K11 [{"categoryName", "creator", "searchTerm", "sortIndex", "groupIndex"}]
  GETUPVAL R5 4
  MOVE R6 R0
  MOVE R7 R2
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["categoryName"]
  GETUPVAL R6 5
  CALL R6 0 1
  JUMPIFNOT R6 [+9]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["MARKETPLACE_KEY"]
  JUMPIFNOTEQ R0 R6 [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["CREATOR_ROBLOX"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K7 ["creator"]
  LOADK R5 K14 [""]
  SETTABLEKS R5 R4 K8 ["searchTerm"]
  LOADN R5 1
  SETTABLEKS R5 R4 K9 ["sortIndex"]
  LOADN R5 0
  SETTABLEKS R5 R4 K10 ["groupIndex"]
  MOVE R5 R1
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  CALL R3 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K15 ["Settings"]
  LOADK R6 K16 ["Plugin"]
  NAMECALL R4 R4 K17 ["get"]
  CALL R4 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["props"]
  GETTABLEKS R6 R7 K18 ["Network"]
  GETTABLEKS R5 R6 K19 ["networkInterface"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["props"]
  GETTABLEKS R6 R7 K20 ["changeMarketplaceTab"]
  MOVE R7 R5
  MOVE R8 R0
  MOVE R9 R2
  MOVE R10 R4
  MOVE R11 R3
  GETUPVAL R13 2
  CALL R13 0 1
  JUMPIFNOT R13 [+6]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K1 ["props"]
  GETTABLEKS R12 R13 K3 ["IXP"]
  JUMP [+1]
  LOADNIL R12
  CALL R6 6 0
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K21 ["getCategory"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K6 ["categoryName"]
  CALL R6 1 1
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K21 ["getCategory"]
  GETTABLEKS R8 R3 K6 ["categoryName"]
  CALL R7 1 1
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K22 ["onCategorySelected"]
  MOVE R9 R6
  MOVE R10 R7
  CALL R8 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["categoryName"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["getTabKeyForCategoryName"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["changeMarketplaceTab"]
  MOVE R3 R1
  DUPTABLE R4 K4 [{"categoryName"}]
  SETTABLEKS R0 R4 K1 ["categoryName"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Settings"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Network"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Network"]
  GETTABLEKS R1 R2 K3 ["networkInterface"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Settings"]
  LOADK R4 K4 ["Plugin"]
  NAMECALL R2 R2 K5 ["get"]
  CALL R2 2 1
  DUPTABLE R3 K7 [{"searchTerm"}]
  SETTABLEKS R0 R3 K6 ["searchTerm"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K8 ["updatePageInfo"]
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R2 K2 [{"toolboxWidth", "showSearchOptions"}]
  GETTABLEKS R5 R1 K4 ["initialWidth"]
  ORK R4 R5 K3 [0]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["TOOLBOX_MIN_WIDTH"]
  FASTCALL2 MATH_MAX R4 R5 [+3]
  GETIMPORT R3 K8 [math.max]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["toolboxWidth"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["showSearchOptions"]
  SETTABLEKS R2 R0 K9 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K10 ["onAbsoluteSizeChange"]
  NAMECALL R2 R0 K11 ["handleInitialSettings"]
  CALL R2 1 0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K12 ["toggleSearchOptions"]
  DUPCLOSURE R2 K13 [PROTO_3]
  CAPTURE UPVAL U1
  DUPCLOSURE R3 K14 [PROTO_4]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  NEWCLOSURE R4 P4
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  SETTABLEKS R4 R0 K15 ["changeMarketplaceTab"]
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R4 R0 K16 ["onBackToHome"]
  GETUPVAL R4 7
  JUMPIFNOT R4 [+4]
  NEWCLOSURE R4 P6
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K17 ["updatePageInfoWithSearchTerm"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R1 K1 ["searchId"]
  GETTABLEKS R5 R3 K1 ["searchId"]
  JUMPIFEQ R4 R5 [+8]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["logSearchAnalytics"]
  GETTABLEKS R5 R3 K3 ["searchTerm"]
  CALL R4 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["WHITELISTED_PLUGINS"]
  GETTABLEKS R0 R1 K1 ["name"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["changeMarketplaceTab"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["MARKETPLACE_KEY"]
  DUPTABLE R3 K5 [{"categoryName"}]
  SETTABLEKS R0 R3 K4 ["categoryName"]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["openedFromPluginManagement"]
  CALL R1 0 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+18]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["changeMarketplaceTab"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["MARKETPLACE_KEY"]
  DUPTABLE R3 K4 [{"categoryName", "searchTerm"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["FREE_MODELS"]
  GETTABLEKS R4 R5 K6 ["name"]
  SETTABLEKS R4 R3 K2 ["categoryName"]
  SETTABLEKS R0 R3 K3 ["searchTerm"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["changeMarketplaceTab"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["MARKETPLACE_KEY"]
  DUPTABLE R3 K7 [{"categoryName"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["FREE_MODELS"]
  GETTABLEKS R4 R5 K6 ["name"]
  SETTABLEKS R4 R3 K2 ["categoryName"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["updatePageInfoWithSearchTerm"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K2 [Enum.AssetType]
  GETTABLE R1 R2 R0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["getMarketplaceCategoryByAssetType"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["changeMarketplaceTab"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["MARKETPLACE_KEY"]
  DUPTABLE R5 K7 [{"categoryName"}]
  GETTABLEKS R6 R2 K8 ["name"]
  SETTABLEKS R6 R5 K6 ["categoryName"]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["openedExternallyByAssetType"]
  MOVE R4 R0
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  NAMECALL R1 R0 K0 ["handleInitialSettings"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["setRoles"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["Network"]
  GETTABLEKS R2 R3 K4 ["networkInterface"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K5 ["getRobuxBalance"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["Network"]
  GETTABLEKS R2 R3 K4 ["networkInterface"]
  CALL R1 1 0
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K6 ["pluginLoaderContext"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K6 ["pluginLoaderContext"]
  GETTABLEKS R2 R3 K7 ["signals"]
  LOADK R4 K8 ["MemStorageService."]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
  CONCAT R3 R4 R5
  GETTABLE R1 R2 R3
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K10 ["Connect"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K11 ["_showPluginsConnection"]
  GETUPVAL R1 3
  JUMPIFNOT R1 [+28]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K6 ["pluginLoaderContext"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K6 ["pluginLoaderContext"]
  GETTABLEKS R2 R3 K7 ["signals"]
  LOADK R4 K8 ["MemStorageService."]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
  CONCAT R3 R4 R5
  GETTABLE R1 R2 R3
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K10 ["Connect"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K11 ["_showPluginsConnection"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K6 ["pluginLoaderContext"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K6 ["pluginLoaderContext"]
  GETTABLEKS R2 R3 K7 ["signals"]
  LOADK R4 K8 ["MemStorageService."]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K13 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
  CONCAT R3 R4 R5
  GETTABLE R1 R2 R3
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K10 ["Connect"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K14 ["_changeMarketplaceTabConnection"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_showPluginsConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_showPluginsConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_showPluginsConnection"]
  GETTABLEKS R1 R0 K2 ["_changeMarketplaceTabConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_changeMarketplaceTabConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_changeMarketplaceTabConnection"]
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["toolboxWidth"]
  GETTABLEKS R4 R2 K3 ["showSearchOptions"]
  GETTABLEKS R5 R1 K4 ["backgrounds"]
  GETTABLEKS R6 R1 K5 ["creator"]
  GETTABLEKS R7 R1 K6 ["searchTerm"]
  GETTABLEKS R8 R1 K7 ["suggestions"]
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  GETTABLEKS R9 R1 K8 ["categoryName"]
  GETTABLEKS R10 R1 K9 ["audioSearchInfo"]
  GETTABLEKS R11 R1 K10 ["additionalAudioSearchInfo"]
  GETTABLEKS R12 R1 K11 ["uiSortIntent"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K12 ["getTabKeyForCategoryName"]
  MOVE R14 R9
  CALL R13 1 1
  GETTABLEKS R14 R1 K13 ["tryOpenAssetConfig"]
  GETTABLEKS R15 R1 K14 ["pluginGui"]
  GETTABLEKS R17 R0 K0 ["props"]
  GETTABLEKS R16 R17 K15 ["Size"]
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K16 ["Stylizer"]
  GETTABLEKS R18 R1 K17 ["Localization"]
  GETTABLEKS R20 R1 K17 ["Localization"]
  GETTABLEKS R19 R20 K18 ["locale"]
  GETTABLEKS R20 R0 K19 ["onAbsoluteSizeChange"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K20 ["TAB_WIDGET_HEIGHT"]
  LOADB R22 0
  NEWTABLE R23 0 0
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K21 ["getEngineAssetType"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["getCategoryByName"]
  MOVE R27 R9
  CALL R26 1 1
  GETTABLEKS R25 R26 K23 ["assetType"]
  CALL R24 1 1
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K24 ["MARKETPLACE_KEY"]
  JUMPIFNOTEQ R13 R25 [+34]
  JUMPIFNOT R6 [+2]
  JUMPIFNOTEQKS R6 K25 [""] [+31]
  JUMPIFNOTEQKS R7 K25 [""] [+29]
  JUMPIFNOTEQKNIL R10 [+27]
  JUMPIFNOTEQKNIL R11 [+25]
  JUMPIFNOTEQKNIL R12 [+23]
  GETIMPORT R27 K29 [Enum.AssetType.Model]
  FASTCALL2 TABLE_INSERT R23 R27 [+4]
  MOVE R26 R23
  GETIMPORT R25 K32 [table.insert]
  CALL R25 2 0
  GETIMPORT R27 K34 [Enum.AssetType.Audio]
  FASTCALL2 TABLE_INSERT R23 R27 [+4]
  MOVE R26 R23
  GETIMPORT R25 K32 [table.insert]
  CALL R25 2 0
  GETIMPORT R25 K36 [table.find]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  MOVE R22 R25
  LOADNIL R25
  GETUPVAL R26 2
  CALL R26 0 1
  JUMPIFNOT R26 [+56]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K37 ["getTabForCategoryName"]
  MOVE R28 R9
  CALL R27 1 1
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K38 ["INVENTORY"]
  JUMPIFEQ R27 R28 [+2]
  LOADB R26 0 +1
  LOADB R26 1
  JUMPIFNOT R4 [+57]
  JUMPIFNOT R26 [+12]
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K39 ["createElement"]
  GETUPVAL R28 4
  DUPTABLE R29 K41 [{"OnClose"}]
  GETTABLEKS R30 R0 K42 ["toggleSearchOptions"]
  SETTABLEKS R30 R29 K40 ["OnClose"]
  CALL R27 2 1
  MOVE R25 R27
  JUMP [+44]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K43 ["categoryIsAudio"]
  MOVE R28 R9
  CALL R27 1 1
  JUMPIFNOT R27 [+12]
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K39 ["createElement"]
  GETUPVAL R28 5
  DUPTABLE R29 K41 [{"OnClose"}]
  GETTABLEKS R30 R0 K42 ["toggleSearchOptions"]
  SETTABLEKS R30 R29 K40 ["OnClose"]
  CALL R27 2 1
  MOVE R25 R27
  JUMP [+26]
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K39 ["createElement"]
  GETUPVAL R28 6
  DUPTABLE R29 K41 [{"OnClose"}]
  GETTABLEKS R30 R0 K42 ["toggleSearchOptions"]
  SETTABLEKS R30 R29 K40 ["OnClose"]
  CALL R27 2 1
  MOVE R25 R27
  JUMP [+14]
  JUMPIFNOT R4 [+12]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K39 ["createElement"]
  GETUPVAL R27 7
  DUPTABLE R28 K45 [{"onSearchOptionsToggled"}]
  GETTABLEKS R29 R0 K42 ["toggleSearchOptions"]
  SETTABLEKS R29 R28 K44 ["onSearchOptionsToggled"]
  CALL R26 2 1
  MOVE R25 R26
  JUMP [+1]
  LOADNIL R25
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K39 ["createElement"]
  LOADK R27 K46 ["Frame"]
  NEWTABLE R28 8 0
  GETIMPORT R29 K49 [UDim2.new]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K50 ["Position"]
  SETTABLEKS R16 R28 K15 ["Size"]
  LOADN R29 0
  SETTABLEKS R29 R28 K51 ["BorderSizePixel"]
  GETTABLEKS R29 R17 K52 ["backgroundColor"]
  SETTABLEKS R29 R28 K53 ["BackgroundColor3"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K54 ["Change"]
  GETTABLEKS R29 R30 K55 ["AbsoluteSize"]
  SETTABLE R20 R28 R29
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K56 ["Event"]
  GETTABLEKS R29 R30 K57 ["MouseEnter"]
  GETTABLEKS R30 R1 K58 ["onMouseEnter"]
  SETTABLE R30 R28 R29
  DUPTABLE R29 K65 [{"AnnouncementDialogContainer", "Tabs", "Header", "MainView", "SearchOptions", "AudioPreview"}]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K39 ["createElement"]
  GETUPVAL R31 8
  DUPTABLE R32 K67 [{"checkUserInIXP"}]
  GETUPVAL R33 9
  SETTABLEKS R33 R32 K66 ["checkUserInIXP"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K59 ["AnnouncementDialogContainer"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K39 ["createElement"]
  GETUPVAL R31 10
  DUPTABLE R32 K71 [{"Disabled", "Size", "Tabs", "CurrentTab", "onTabSelected"}]
  GETTABLEKS R33 R1 K72 ["hasTutorialLimits"]
  SETTABLEKS R33 R32 K68 ["Disabled"]
  GETIMPORT R33 K49 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 0
  GETUPVAL R38 1
  GETTABLEKS R37 R38 K20 ["TAB_WIDGET_HEIGHT"]
  CALL R33 4 1
  SETTABLEKS R33 R32 K15 ["Size"]
  GETUPVAL R34 11
  CALL R34 0 1
  JUMPIFNOT R34 [+8]
  GETUPVAL R33 12
  MOVE R34 R18
  GETTABLEKS R35 R1 K73 ["roles"]
  GETTABLEKS R36 R1 K74 ["IXP"]
  CALL R33 3 1
  JUMP [+3]
  GETUPVAL R33 12
  MOVE R34 R18
  CALL R33 1 1
  SETTABLEKS R33 R32 K60 ["Tabs"]
  SETTABLEKS R13 R32 K69 ["CurrentTab"]
  GETTABLEKS R33 R0 K75 ["changeMarketplaceTab"]
  SETTABLEKS R33 R32 K70 ["onTabSelected"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K60 ["Tabs"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K39 ["createElement"]
  GETUPVAL R31 13
  DUPTABLE R32 K77 [{"Position", "maxWidth", "onSearchOptionsToggled", "pluginGui"}]
  GETIMPORT R33 K49 [UDim2.new]
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  MOVE R37 R21
  CALL R33 4 1
  SETTABLEKS R33 R32 K50 ["Position"]
  SETTABLEKS R3 R32 K76 ["maxWidth"]
  GETTABLEKS R33 R0 K42 ["toggleSearchOptions"]
  SETTABLEKS R33 R32 K44 ["onSearchOptionsToggled"]
  SETTABLEKS R15 R32 K14 ["pluginGui"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K61 ["Header"]
  JUMPIFNOT R22 [+51]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K39 ["createElement"]
  GETUPVAL R31 14
  DUPTABLE R32 K83 [{"AssetType", "CategoryName", "Locale", "Position", "Size", "SortName", "TryOpenAssetConfig", "EnabledAssetTypes"}]
  SETTABLEKS R24 R32 K27 ["AssetType"]
  SETTABLEKS R9 R32 K78 ["CategoryName"]
  SETTABLEKS R19 R32 K79 ["Locale"]
  GETIMPORT R33 K49 [UDim2.new]
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  GETUPVAL R40 1
  GETTABLEKS R39 R40 K85 ["HEADER_HEIGHT"]
  ADD R38 R21 R39
  ADDK R37 R38 K84 [1]
  CALL R33 4 1
  SETTABLEKS R33 R32 K50 ["Position"]
  GETIMPORT R33 K49 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 1
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K85 ["HEADER_HEIGHT"]
  ADD R39 R40 R21
  ADDK R38 R39 K86 [2]
  MINUS R37 R38
  CALL R33 4 1
  SETTABLEKS R33 R32 K15 ["Size"]
  GETUPVAL R34 15
  GETTABLEKS R33 R34 K87 ["getDefaultSortNameForCategory"]
  MOVE R34 R9
  CALL R33 1 1
  SETTABLEKS R33 R32 K80 ["SortName"]
  SETTABLEKS R14 R32 K81 ["TryOpenAssetConfig"]
  SETTABLEKS R23 R32 K82 ["EnabledAssetTypes"]
  CALL R30 2 1
  JUMP [+43]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K39 ["createElement"]
  GETUPVAL R31 16
  DUPTABLE R32 K89 [{"Position", "Size", "maxWidth", "suggestions", "tryOpenAssetConfig", "onBackToHome"}]
  GETIMPORT R33 K49 [UDim2.new]
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  GETUPVAL R40 1
  GETTABLEKS R39 R40 K85 ["HEADER_HEIGHT"]
  ADD R38 R21 R39
  ADDK R37 R38 K84 [1]
  CALL R33 4 1
  SETTABLEKS R33 R32 K50 ["Position"]
  GETIMPORT R33 K49 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 1
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K85 ["HEADER_HEIGHT"]
  ADD R39 R40 R21
  ADDK R38 R39 K86 [2]
  MINUS R37 R38
  CALL R33 4 1
  SETTABLEKS R33 R32 K15 ["Size"]
  SETTABLEKS R3 R32 K76 ["maxWidth"]
  SETTABLEKS R8 R32 K7 ["suggestions"]
  SETTABLEKS R14 R32 K13 ["tryOpenAssetConfig"]
  GETTABLEKS R33 R0 K88 ["onBackToHome"]
  SETTABLEKS R33 R32 K88 ["onBackToHome"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K62 ["MainView"]
  SETTABLEKS R25 R29 K63 ["SearchOptions"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K39 ["createElement"]
  GETUPVAL R31 17
  CALL R30 1 1
  SETTABLEKS R30 R29 K64 ["AudioPreview"]
  CALL R26 3 -1
  RETURN R26 -1

PROTO_16:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["pageInfo"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  DUPTABLE R3 K11 [{"categoryName", "creator", "audioSearchInfo", "additionalAudioSearchInfo", "roles", "searchId", "searchTerm", "sorts", "uiSortIntent", "hasTutorialLimits"}]
  GETTABLEKS R4 R2 K1 ["categoryName"]
  JUMPIF R4 [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["DEFAULT"]
  GETTABLEKS R4 R5 K13 ["name"]
  SETTABLEKS R4 R3 K1 ["categoryName"]
  GETTABLEKS R4 R2 K2 ["creator"]
  SETTABLEKS R4 R3 K2 ["creator"]
  GETTABLEKS R4 R2 K3 ["audioSearchInfo"]
  SETTABLEKS R4 R3 K3 ["audioSearchInfo"]
  GETTABLEKS R4 R2 K4 ["additionalAudioSearchInfo"]
  SETTABLEKS R4 R3 K4 ["additionalAudioSearchInfo"]
  GETTABLEKS R4 R0 K5 ["roles"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K5 ["roles"]
  GETTABLEKS R5 R2 K6 ["searchId"]
  ORK R4 R5 K14 [""]
  SETTABLEKS R4 R3 K6 ["searchId"]
  GETTABLEKS R5 R2 K7 ["searchTerm"]
  ORK R4 R5 K14 [""]
  SETTABLEKS R4 R3 K7 ["searchTerm"]
  GETTABLEKS R4 R2 K8 ["sorts"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K8 ["sorts"]
  GETTABLEKS R5 R2 K9 ["uiSortIntent"]
  JUMPIFNOT R5 [+10]
  GETTABLEKS R5 R2 K9 ["uiSortIntent"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["None"]
  JUMPIFEQ R5 R6 [+4]
  GETTABLEKS R4 R2 K9 ["uiSortIntent"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["uiSortIntent"]
  GETTABLEKS R6 R0 K16 ["tutorialLimits"]
  GETTABLEKS R5 R6 K17 ["assetIds"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K10 ["hasTutorialLimits"]
  RETURN R3 1

PROTO_17:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 1
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R2 3
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R6 0
  GETUPVAL R7 1
  MOVE R8 R0
  MOVE R9 R1
  MOVE R10 R2
  MOVE R11 R3
  MOVE R12 R4
  MOVE R13 R5
  CALL R7 6 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  LOADB R4 0
  CALL R2 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_24:
  DUPTABLE R1 K7 [{"setRoles", "updatePageInfo", "changeMarketplaceTab", "getRobuxBalance", "getToolboxManageableGroups", "logSearchAnalytics", "setLayoutMode"}]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K0 ["setRoles"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K1 ["updatePageInfo"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K2 ["changeMarketplaceTab"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K3 ["getRobuxBalance"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K4 ["getToolboxManageableGroups"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K5 ["logSearchAnalytics"]
  GETUPVAL R3 8
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K6 ["setLayoutMode"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Core"]
  GETTABLEKS R5 R6 K6 ["Util"]
  GETTABLEKS R4 R5 K7 ["SharedFlags"]
  GETTABLEKS R3 R4 K9 ["getFFlagToolboxFixDefaultTabForCreations"]
  CALL R2 1 1
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["AICOChatBot"]
  NAMECALL R3 R3 K13 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K11 [game]
  LOADK R6 K14 ["AICOChatBotFindVariationFix"]
  NAMECALL R4 R4 K13 ["GetFastFlag"]
  CALL R4 2 1
  GETTABLEKS R5 R0 K15 ["Packages"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K16 ["Cryo"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K17 ["Roact"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R5 K18 ["RoactRodux"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R5 K19 ["Framework"]
  CALL R9 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K5 ["Core"]
  GETTABLEKS R13 R14 K6 ["Util"]
  GETTABLEKS R12 R13 K20 ["ToolboxUtilities"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K21 ["showRobloxCreatedAssets"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R0 K22 ["SharedPluginConstants"]
  CALL R11 1 1
  GETTABLEKS R13 R0 K5 ["Core"]
  GETTABLEKS R12 R13 K6 ["Util"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R12 K23 ["Constants"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R12 K24 ["PageInfoHelper"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R12 K25 ["getTabs"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R18 R12 K26 ["Analytics"]
  GETTABLEKS R17 R18 K26 ["Analytics"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R12 K27 ["isInSemanticSearchIXP"]
  CALL R17 1 1
  GETTABLEKS R19 R0 K5 ["Core"]
  GETTABLEKS R18 R19 K28 ["Types"]
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R18 K29 ["Sort"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R18 K30 ["Category"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R18 K31 ["RequestReason"]
  CALL R21 1 1
  GETTABLEKS R23 R0 K5 ["Core"]
  GETTABLEKS R22 R23 K32 ["Components"]
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R22 K33 ["AnnouncementDialog"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R22 K34 ["TabSet"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R22 K35 ["Header"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R28 R22 K36 ["MainView"]
  GETTABLEKS R27 R28 K36 ["MainView"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R22 K37 ["SoundPreviewComponent"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R30 R22 K38 ["Home"]
  GETTABLEKS R29 R30 K39 ["HomeWrapper"]
  CALL R28 1 1
  MOVE R30 R1
  CALL R30 0 1
  JUMPIFNOT R30 [+2]
  LOADNIL R29
  JUMP [+11]
  GETIMPORT R29 K4 [require]
  GETTABLEKS R33 R0 K5 ["Core"]
  GETTABLEKS R32 R33 K32 ["Components"]
  GETTABLEKS R31 R32 K40 ["SearchOptions"]
  GETTABLEKS R30 R31 K40 ["SearchOptions"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R35 R0 K5 ["Core"]
  GETTABLEKS R34 R35 K32 ["Components"]
  GETTABLEKS R33 R34 K40 ["SearchOptions"]
  GETTABLEKS R32 R33 K41 ["SearchOptionWrappers"]
  GETTABLEKS R31 R32 K42 ["AudioMarketplaceSearchOptions"]
  CALL R30 1 1
  MOVE R32 R1
  CALL R32 0 1
  JUMPIFNOT R32 [+14]
  GETIMPORT R31 K4 [require]
  GETTABLEKS R36 R0 K5 ["Core"]
  GETTABLEKS R35 R36 K32 ["Components"]
  GETTABLEKS R34 R35 K40 ["SearchOptions"]
  GETTABLEKS R33 R34 K41 ["SearchOptionWrappers"]
  GETTABLEKS R32 R33 K43 ["MarketplaceSearchOptions"]
  CALL R31 1 1
  JUMP [+1]
  LOADNIL R31
  MOVE R33 R1
  CALL R33 0 1
  JUMPIFNOT R33 [+14]
  GETIMPORT R32 K4 [require]
  GETTABLEKS R37 R0 K5 ["Core"]
  GETTABLEKS R36 R37 K32 ["Components"]
  GETTABLEKS R35 R36 K40 ["SearchOptions"]
  GETTABLEKS R34 R35 K41 ["SearchOptionWrappers"]
  GETTABLEKS R33 R34 K44 ["InventorySearchOptions"]
  CALL R32 1 1
  JUMP [+1]
  LOADNIL R32
  GETTABLEKS R35 R0 K5 ["Core"]
  GETTABLEKS R34 R35 K45 ["Networking"]
  GETTABLEKS R33 R34 K46 ["Requests"]
  GETIMPORT R34 K4 [require]
  GETTABLEKS R35 R33 K47 ["UpdatePageInfoAndSendRequest"]
  CALL R34 1 1
  GETIMPORT R35 K4 [require]
  GETTABLEKS R36 R33 K48 ["ChangeMarketplaceTab"]
  CALL R35 1 1
  GETIMPORT R36 K4 [require]
  GETTABLEKS R37 R33 K49 ["GetToolboxManageableGroupsRequest"]
  CALL R36 1 1
  GETIMPORT R37 K4 [require]
  GETTABLEKS R38 R33 K50 ["GetRolesRequest"]
  CALL R37 1 1
  GETIMPORT R38 K4 [require]
  GETTABLEKS R39 R33 K51 ["GetRolesDebugRequest"]
  CALL R38 1 1
  GETIMPORT R39 K4 [require]
  GETTABLEKS R40 R33 K52 ["GetRobuxBalance"]
  CALL R39 1 1
  GETIMPORT R40 K4 [require]
  GETTABLEKS R43 R0 K5 ["Core"]
  GETTABLEKS R42 R43 K53 ["ContextServices"]
  GETTABLEKS R41 R42 K54 ["IXPContext"]
  CALL R40 1 1
  GETTABLEKS R41 R9 K53 ["ContextServices"]
  GETTABLEKS R42 R41 K55 ["withContext"]
  GETIMPORT R43 K4 [require]
  GETTABLEKS R46 R0 K5 ["Core"]
  GETTABLEKS R45 R46 K53 ["ContextServices"]
  GETTABLEKS R44 R45 K56 ["Settings"]
  CALL R43 1 1
  GETIMPORT R44 K4 [require]
  GETTABLEKS R47 R0 K5 ["Core"]
  GETTABLEKS R46 R47 K53 ["ContextServices"]
  GETTABLEKS R45 R46 K57 ["ModalContext"]
  CALL R44 1 1
  GETIMPORT R45 K4 [require]
  GETTABLEKS R48 R0 K5 ["Core"]
  GETTABLEKS R47 R48 K53 ["ContextServices"]
  GETTABLEKS R46 R47 K58 ["NetworkContext"]
  CALL R45 1 1
  GETIMPORT R46 K4 [require]
  GETTABLEKS R49 R0 K5 ["Core"]
  GETTABLEKS R48 R49 K28 ["Types"]
  GETTABLEKS R47 R48 K59 ["HomeTypes"]
  CALL R46 1 1
  GETIMPORT R47 K4 [require]
  GETTABLEKS R50 R0 K5 ["Core"]
  GETTABLEKS R49 R50 K60 ["Actions"]
  GETTABLEKS R48 R49 K61 ["SetLayoutMode"]
  CALL R47 1 1
  GETIMPORT R48 K4 [require]
  GETTABLEKS R51 R0 K5 ["Core"]
  GETTABLEKS R50 R51 K62 ["Thunks"]
  GETTABLEKS R49 R50 K63 ["LogMarketplaceSearchAnalytics"]
  CALL R48 1 1
  GETIMPORT R49 K11 [game]
  LOADK R51 K64 ["DebugToolboxGetRolesRequest"]
  NAMECALL R49 R49 K13 ["GetFastFlag"]
  CALL R49 2 1
  GETIMPORT R50 K4 [require]
  GETTABLEKS R54 R0 K5 ["Core"]
  GETTABLEKS R53 R54 K6 ["Util"]
  GETTABLEKS R52 R53 K7 ["SharedFlags"]
  GETTABLEKS R51 R52 K65 ["getFFlagToolboxContentManagementCombineTabs"]
  CALL R50 1 1
  GETIMPORT R51 K4 [require]
  GETTABLEKS R55 R0 K5 ["Core"]
  GETTABLEKS R54 R55 K6 ["Util"]
  GETTABLEKS R53 R54 K7 ["SharedFlags"]
  GETTABLEKS R52 R53 K66 ["getFFlagToolboxEnableAssetRows"]
  CALL R51 1 1
  GETIMPORT R52 K4 [require]
  GETTABLEKS R56 R0 K5 ["Core"]
  GETTABLEKS R55 R56 K6 ["Util"]
  GETTABLEKS R54 R55 K7 ["SharedFlags"]
  GETTABLEKS R53 R54 K67 ["getIsIXPEnabledForListView"]
  CALL R52 1 1
  GETIMPORT R53 K4 [require]
  GETTABLEKS R56 R0 K5 ["Core"]
  GETTABLEKS R55 R56 K28 ["Types"]
  GETTABLEKS R54 R55 K68 ["LayoutMode"]
  CALL R53 1 1
  GETIMPORT R54 K4 [require]
  GETTABLEKS R57 R0 K5 ["Core"]
  GETTABLEKS R56 R57 K28 ["Types"]
  GETTABLEKS R55 R56 K69 ["Background"]
  CALL R54 1 1
  GETTABLEKS R55 R7 K70 ["PureComponent"]
  LOADK R57 K71 ["Toolbox"]
  NAMECALL R55 R55 K72 ["extend"]
  CALL R55 2 1
  DUPTABLE R56 K74 [{"Size"}]
  GETIMPORT R57 K77 [UDim2.new]
  LOADN R58 1
  LOADN R59 0
  LOADN R60 1
  LOADN R61 0
  CALL R57 4 1
  SETTABLEKS R57 R56 K73 ["Size"]
  SETTABLEKS R56 R55 K78 ["defaultProps"]
  DUPCLOSURE R56 K79 [PROTO_0]
  CAPTURE VAL R51
  CAPTURE VAL R54
  CAPTURE VAL R20
  CAPTURE VAL R50
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R52
  CAPTURE VAL R53
  SETTABLEKS R56 R55 K80 ["handleInitialSettings"]
  DUPCLOSURE R56 K81 [PROTO_8]
  CAPTURE VAL R13
  CAPTURE VAL R20
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R50
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R3
  SETTABLEKS R56 R55 K82 ["init"]
  DUPCLOSURE R56 K83 [PROTO_9]
  SETTABLEKS R56 R55 K84 ["didUpdate"]
  DUPCLOSURE R56 K85 [PROTO_13]
  CAPTURE VAL R11
  CAPTURE VAL R20
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R56 R55 K86 ["didMount"]
  DUPCLOSURE R56 K87 [PROTO_14]
  SETTABLEKS R56 R55 K88 ["willUnmount"]
  DUPCLOSURE R56 K89 [PROTO_15]
  CAPTURE VAL R20
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R32
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R29
  CAPTURE VAL R23
  CAPTURE VAL R17
  CAPTURE VAL R24
  CAPTURE VAL R50
  CAPTURE VAL R15
  CAPTURE VAL R25
  CAPTURE VAL R28
  CAPTURE VAL R19
  CAPTURE VAL R26
  CAPTURE VAL R27
  SETTABLEKS R56 R55 K90 ["render"]
  MOVE R56 R42
  DUPTABLE R57 K96 [{"IXP", "Stylizer", "Localization", "Settings", "Modal", "Network"}]
  MOVE R59 R50
  CALL R59 0 1
  JUMPIF R59 [+3]
  MOVE R59 R51
  CALL R59 0 1
  JUMPIFNOT R59 [+2]
  MOVE R58 R40
  JUMP [+1]
  LOADNIL R58
  SETTABLEKS R58 R57 K91 ["IXP"]
  GETTABLEKS R58 R41 K92 ["Stylizer"]
  SETTABLEKS R58 R57 K92 ["Stylizer"]
  GETTABLEKS R58 R41 K93 ["Localization"]
  SETTABLEKS R58 R57 K93 ["Localization"]
  SETTABLEKS R43 R57 K56 ["Settings"]
  SETTABLEKS R44 R57 K94 ["Modal"]
  SETTABLEKS R45 R57 K95 ["Network"]
  CALL R56 1 1
  MOVE R57 R55
  CALL R56 1 1
  MOVE R55 R56
  DUPCLOSURE R56 K97 [PROTO_16]
  CAPTURE VAL R20
  CAPTURE VAL R6
  DUPCLOSURE R57 K98 [PROTO_24]
  CAPTURE VAL R49
  CAPTURE VAL R38
  CAPTURE VAL R37
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R39
  CAPTURE VAL R36
  CAPTURE VAL R48
  CAPTURE VAL R51
  CAPTURE VAL R47
  GETTABLEKS R58 R8 K99 ["connect"]
  MOVE R59 R56
  MOVE R60 R57
  CALL R58 2 1
  MOVE R59 R55
  CALL R58 1 -1
  RETURN R58 -1
