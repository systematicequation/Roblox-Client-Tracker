PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["Network"]
  GETTABLEKS R2 R3 K2 ["networkInterface"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+10]
  GETUPVAL R3 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["IXP"]
  LOADK R5 K4 ["MarketplaceModelsAsPackages"]
  LOADK R6 K5 ["MarketplaceModelsAsPackagesEnabled"]
  CALL R3 3 1
  JUMP [+1]
  LOADNIL R3
  LOADNIL R4
  JUMPIFNOT R3 [+7]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["unlocalizedCategories"]
  GETTABLE R5 R6 R0
  GETTABLEKS R4 R5 K7 ["name"]
  JUMP [+8]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K8 ["categories"]
  GETTABLE R5 R6 R0
  GETTABLEKS R4 R5 K7 ["name"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K9 ["categoryName"]
  JUMPIFEQ R5 R4 [+47]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K10 ["onCategorySelected"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K9 ["categoryName"]
  MOVE R7 R4
  CALL R5 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K11 ["searchTerm"]
  JUMPIFNOT R5 [+11]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["onSearchRequested"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K11 ["searchTerm"]
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K13 ["Settings"]
  LOADK R7 K14 ["Plugin"]
  NAMECALL R5 R5 K15 ["get"]
  CALL R5 2 1
  SETUPVAL R5 4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K16 ["selectCategory"]
  MOVE R6 R2
  GETUPVAL R7 4
  MOVE R8 R4
  CALL R5 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["groupIndex"]
  JUMPIFEQ R1 R0 [+16]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Network"]
  GETTABLEKS R1 R2 K3 ["networkInterface"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["selectGroup"]
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["mostRecentSearchRequestTime"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["checkRecentAssetInsertion"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["Network"]
  GETTABLEKS R2 R3 K2 ["networkInterface"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Settings"]
  LOADK R5 K4 ["Plugin"]
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 2 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K7 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K8 ["string"] [+18]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["shouldDebugWarnings"]
  CALL R4 0 1
  JUMPIFNOT R4 [+12]
  GETIMPORT R4 K11 [warn]
  LOADK R5 K12 ["Toolbox onSearchRequested searchTerm = %s is not a string"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K14 [tostring]
  CALL R7 1 1
  NAMECALL R5 R5 K15 ["format"]
  CALL R5 2 -1
  CALL R4 -1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K16 ["creatorFilter"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K17 ["Id"]
  JUMPIF R5 [+1]
  LOADNIL R5
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K18 ["getCategory"]
  MOVE R7 R1
  JUMPIF R7 [+5]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K19 ["categoryName"]
  CALL R6 1 1
  GETUPVAL R7 0
  LOADN R8 0
  SETTABLEKS R8 R7 K20 ["keyCount"]
  GETUPVAL R7 0
  LOADN R8 0
  SETTABLEKS R8 R7 K21 ["deleteCount"]
  GETUPVAL R7 0
  GETIMPORT R8 K23 [tick]
  CALL R8 0 1
  SETTABLEKS R8 R7 K24 ["mostRecentSearchRequestTime"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K24 ["mostRecentSearchRequestTime"]
  GETUPVAL R8 3
  CALL R8 0 1
  LOADK R10 K25 ["StudioSearchWithoutInsertionTimeSeconds"]
  NAMECALL R8 R8 K26 ["GetFVariable"]
  CALL R8 2 1
  GETIMPORT R9 K28 [delay]
  MOVE R10 R8
  NEWCLOSURE R11 P0
  CAPTURE VAL R7
  CAPTURE UPVAL U0
  CALL R9 2 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["props"]
  GETTABLEKS R9 R10 K19 ["categoryName"]
  JUMPIFNOT R1 [+2]
  MOVE R10 R1
  JUMP [+5]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["props"]
  GETTABLEKS R10 R11 K19 ["categoryName"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K29 ["categoryIsFont"]
  MOVE R12 R9
  CALL R11 1 1
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K29 ["categoryIsFont"]
  MOVE R12 R10
  CALL R11 1 1
  JUMPIFNOT R11 [+8]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["props"]
  GETTABLEKS R12 R13 K30 ["updateSearchTerm"]
  MOVE R13 R0
  CALL R12 1 0
  RETURN R0 0
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["props"]
  GETTABLEKS R12 R13 K31 ["requestSearch"]
  MOVE R13 R2
  MOVE R14 R3
  MOVE R15 R0
  MOVE R16 R1
  CALL R12 4 0
  GETUPVAL R12 5
  CALL R12 0 1
  JUMPIFNOT R12 [+8]
  GETUPVAL R12 6
  LOADK R14 K32 ["SearchRequested"]
  DUPTABLE R15 K34 [{"searchTerm"}]
  SETTABLEKS R0 R15 K33 ["searchTerm"]
  NAMECALL R12 R12 K35 ["fire"]
  CALL R12 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onSearchOptionsToggled"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onSearchOptionsToggled"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [string.len]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["searchTerm"]
  FASTCALL1 STRING_LEN R3 [+2]
  GETIMPORT R2 K2 [string.len]
  CALL R2 1 1
  JUMPIFNOTLT R2 R1 [+8]
  GETUPVAL R1 0
  GETTABLEKS R2 R1 K5 ["keyCount"]
  ADDK R2 R2 K6 [1]
  SETTABLEKS R2 R1 K5 ["keyCount"]
  JUMP [+22]
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [string.len]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["searchTerm"]
  FASTCALL1 STRING_LEN R3 [+2]
  GETIMPORT R2 K2 [string.len]
  CALL R2 1 1
  JUMPIFNOTLT R1 R2 [+7]
  GETUPVAL R1 0
  GETTABLEKS R2 R1 K7 ["deleteCount"]
  ADDK R2 R2 K6 [1]
  SETTABLEKS R2 R1 K7 ["deleteCount"]
  GETUPVAL R1 0
  DUPTABLE R3 K8 [{"searchTerm"}]
  SETTABLEKS R0 R3 K4 ["searchTerm"]
  NAMECALL R1 R1 K9 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Settings"]
  LOADK R3 K2 ["Plugin"]
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K4 ["layoutMode"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Grid"]
  JUMPIFNOTEQ R3 R4 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["ListView"]
  JUMP [+3]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["Grid"]
  GETTABLEKS R3 R0 K7 ["setLayoutMode"]
  MOVE R4 R2
  CALL R3 1 0
  MOVE R5 R2
  NAMECALL R3 R1 K7 ["setLayoutMode"]
  CALL R3 2 0
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+24]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K8 ["getCategoryByName"]
  GETTABLEKS R4 R0 K9 ["categoryName"]
  CALL R3 1 1
  DUPTABLE R4 K12 [{"assetType", "searchId"}]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R5 R3 K10 ["assetType"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["assetType"]
  GETTABLEKS R5 R0 K11 ["searchId"]
  SETTABLEKS R5 R4 K11 ["searchId"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K13 ["MarketplaceListViewToggleClicked"]
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"searchTerm"}]
  LOADK R2 K2 [""]
  SETTABLEKS R2 R1 K0 ["searchTerm"]
  SETTABLEKS R1 R0 K3 ["state"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["keyCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K5 ["deleteCount"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["unlocalizedCategories"]
  LOADNIL R1
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE REF R1
  SETTABLEKS R2 R0 K7 ["onCategorySelected"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onGroupSelected"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R2 R0 K9 ["onSearchRequested"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K10 ["onSearchOptionsToggled"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K11 ["onSearchTextChanged"]
  GETUPVAL R3 9
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R0 K12 ["toggleLayoutMode"]
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R1 K0 ["categories"]
  SETTABLEKS R3 R0 K1 ["unlocalizedCategories"]
  RETURN R0 0

PROTO_9:
  NAMECALL R1 R0 K0 ["renderContent"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  JUMPIFNOT R5 [+7]
  GETUPVAL R4 1
  GETTABLEKS R5 R1 K3 ["IXP"]
  LOADK R6 K4 ["MarketplaceModelsAsPackages"]
  LOADK R7 K5 ["MarketplaceModelsAsPackagesEnabled"]
  CALL R4 3 1
  JUMP [+1]
  LOADNIL R4
  GETTABLEKS R5 R1 K6 ["categoryName"]
  LOADNIL R6
  LOADNIL R7
  JUMPIFNOT R4 [+42]
  GETUPVAL R8 2
  GETTABLEKS R9 R1 K7 ["categories"]
  CALL R8 1 1
  GETIMPORT R9 K9 [pairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_NEXT R9
  GETUPVAL R15 3
  GETTABLEKS R16 R13 K10 ["category"]
  GETTABLE R14 R15 R16
  JUMPIFNOT R14 [+5]
  GETIMPORT R14 K13 [table.remove]
  MOVE R15 R8
  MOVE R16 R12
  CALL R14 2 0
  FORGLOOP R9 2 [-11]
  GETUPVAL R9 4
  MOVE R10 R3
  MOVE R11 R8
  CALL R9 2 1
  MOVE R6 R9
  LOADN R7 1
  GETIMPORT R9 K15 [ipairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETTABLEKS R14 R13 K16 ["name"]
  JUMPIFNOTEQ R14 R5 [+2]
  MOVE R7 R12
  FORGLOOP R9 2 [inext] [-6]
  SETTABLEKS R8 R0 K17 ["unlocalizedCategories"]
  JUMP [+21]
  GETUPVAL R8 4
  MOVE R9 R3
  GETTABLEKS R10 R1 K7 ["categories"]
  CALL R8 2 1
  MOVE R6 R8
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K18 ["getCategoryIndex"]
  MOVE R9 R5
  GETTABLEKS R10 R1 K19 ["roles"]
  GETUPVAL R12 6
  CALL R12 0 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R1 K3 ["IXP"]
  JUMP [+1]
  LOADNIL R11
  CALL R8 3 1
  MOVE R7 R8
  GETTABLEKS R8 R0 K20 ["onCategorySelected"]
  GETTABLEKS R9 R1 K21 ["searchTerm"]
  GETTABLEKS R10 R0 K22 ["onSearchRequested"]
  GETTABLEKS R11 R1 K23 ["groups"]
  GETTABLEKS R12 R1 K24 ["groupIndex"]
  GETTABLEKS R13 R0 K25 ["onGroupSelected"]
  LOADB R14 0
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K26 ["getTabForCategoryName"]
  GETTABLEKS R16 R1 K6 ["categoryName"]
  CALL R15 1 1
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K27 ["MARKETPLACE"]
  JUMPIFNOTEQ R15 R16 [+4]
  GETUPVAL R15 7
  CALL R15 0 1
  NOT R14 R15
  GETUPVAL R16 8
  GETTABLEKS R17 R1 K3 ["IXP"]
  CALL R16 1 1
  JUMPIFNOT R16 [+34]
  LOADB R15 0
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K26 ["getTabForCategoryName"]
  GETTABLEKS R17 R1 K6 ["categoryName"]
  CALL R16 1 1
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K28 ["INVENTORY"]
  JUMPIFNOTEQ R16 R17 [+24]
  LOADB R15 0
  GETTABLEKS R16 R1 K6 ["categoryName"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K29 ["MY_AUDIO"]
  GETTABLEKS R17 R18 K16 ["name"]
  JUMPIFEQ R16 R17 [+14]
  GETTABLEKS R16 R1 K6 ["categoryName"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K30 ["MY_FONTS"]
  GETTABLEKS R17 R18 K16 ["name"]
  JUMPIFNOTEQ R16 R17 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  JUMP [+1]
  LOADNIL R15
  GETTABLEKS R16 R1 K31 ["searchIsFiltered"]
  LOADNIL R17
  LOADNIL R18
  GETUPVAL R19 8
  GETTABLEKS R20 R1 K3 ["IXP"]
  CALL R19 1 1
  JUMPIFNOT R19 [+26]
  JUMPIFNOT R15 [+2]
  LOADN R19 5
  JUMP [+1]
  LOADN R19 0
  JUMPIF R14 [+1]
  JUMPIFNOT R15 [+5]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K32 ["HEADER_DROPDOWN_MIN_WIDTH"]
  ADD R17 R20 R19
  JUMP [+3]
  GETUPVAL R20 9
  GETTABLEKS R17 R20 K33 ["HEADER_DROPDOWN_MAX_WIDTH"]
  JUMPIF R14 [+1]
  JUMPIFNOT R15 [+8]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K34 ["HEADER_OPTIONSBUTTON_WIDTH"]
  GETUPVAL R22 9
  GETTABLEKS R21 R22 K35 ["HEADER_INNER_PADDING"]
  ADD R18 R20 R21
  JUMP [+22]
  LOADN R18 0
  JUMP [+20]
  JUMPIFNOT R14 [+4]
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K32 ["HEADER_DROPDOWN_MIN_WIDTH"]
  JUMPIF R19 [+3]
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K33 ["HEADER_DROPDOWN_MAX_WIDTH"]
  MOVE R17 R19
  JUMPIFNOT R14 [+8]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K34 ["HEADER_OPTIONSBUTTON_WIDTH"]
  GETUPVAL R22 9
  GETTABLEKS R21 R22 K35 ["HEADER_INNER_PADDING"]
  ADD R19 R20 R21
  JUMPIF R19 [+1]
  LOADN R19 0
  MOVE R18 R19
  GETTABLEKS R19 R0 K36 ["onSearchOptionsToggled"]
  GETTABLEKS R21 R1 K38 ["maxWidth"]
  ORK R20 R21 K37 [0]
  LOADN R22 100
  LOADN R28 2
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K39 ["HEADER_OUTER_PADDING"]
  MUL R27 R28 R29
  SUB R26 R20 R27
  SUB R25 R26 R17
  SUB R24 R25 R18
  GETUPVAL R26 9
  GETTABLEKS R25 R26 K35 ["HEADER_INNER_PADDING"]
  SUB R23 R24 R25
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K42 [math.max]
  CALL R21 2 1
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K43 ["categoryIsGroupAsset"]
  MOVE R23 R5
  CALL R22 1 1
  GETTABLEKS R23 R2 K44 ["header"]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K26 ["getTabForCategoryName"]
  MOVE R26 R5
  CALL R25 1 1
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K45 ["CREATIONS"]
  JUMPIFEQ R25 R26 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K26 ["getTabForCategoryName"]
  MOVE R27 R5
  CALL R26 1 1
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K28 ["INVENTORY"]
  JUMPIFEQ R26 R27 [+2]
  LOADB R25 0 +1
  LOADB R25 1
  MOVE R26 R24
  JUMPIFNOT R26 [+1]
  NOT R26 R22
  NOT R27 R22
  JUMPIFNOT R27 [+1]
  NOT R27 R24
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K26 ["getTabForCategoryName"]
  MOVE R30 R5
  CALL R29 1 1
  GETUPVAL R31 5
  GETTABLEKS R30 R31 K46 ["RECENT"]
  JUMPIFEQ R29 R30 [+2]
  LOADB R28 0 +1
  LOADB R28 1
  JUMPIFNOT R28 [+2]
  LOADB R27 0
  LOADB R26 1
  DUPTABLE R29 K56 [{"LayoutOrder", "OnSearchRequested", "OnTextChanged", "SearchTerm", "Style", "Width", "OnSearchOptionsToggled", "SearchIsFiltered", "ShowRecentSearchesInAutoComplete"}]
  LOADN R30 1
  SETTABLEKS R30 R29 K47 ["LayoutOrder"]
  SETTABLEKS R10 R29 K48 ["OnSearchRequested"]
  GETTABLEKS R30 R0 K57 ["onSearchTextChanged"]
  SETTABLEKS R30 R29 K49 ["OnTextChanged"]
  SETTABLEKS R9 R29 K50 ["SearchTerm"]
  GETUPVAL R31 10
  CALL R31 0 1
  JUMPIF R31 [+3]
  GETUPVAL R31 11
  CALL R31 0 1
  JUMPIFNOT R31 [+2]
  LOADNIL R30
  JUMP [+1]
  LOADK R30 K58 ["ToolboxSearchBar"]
  SETTABLEKS R30 R29 K51 ["Style"]
  SETTABLEKS R21 R29 K52 ["Width"]
  GETUPVAL R31 7
  CALL R31 0 1
  JUMPIFNOT R31 [+3]
  GETTABLEKS R30 R0 K36 ["onSearchOptionsToggled"]
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K53 ["OnSearchOptionsToggled"]
  GETUPVAL R31 7
  CALL R31 0 1
  JUMPIFNOT R31 [+2]
  MOVE R30 R16
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K54 ["SearchIsFiltered"]
  GETUPVAL R31 10
  CALL R31 0 1
  JUMPIFNOT R31 [+16]
  LOADB R30 1
  GETTABLEKS R32 R0 K59 ["state"]
  GETTABLEKS R31 R32 K21 ["searchTerm"]
  JUMPIFEQKS R31 K60 [""] [+11]
  GETTABLEKS R32 R0 K59 ["state"]
  GETTABLEKS R31 R32 K21 ["searchTerm"]
  JUMPIFEQKNIL R31 [+2]
  LOADB R30 0 +1
  LOADB R30 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K55 ["ShowRecentSearchesInAutoComplete"]
  GETUPVAL R31 12
  GETTABLEKS R30 R31 K61 ["createElement"]
  GETUPVAL R31 13
  MOVE R32 R29
  CALL R30 2 1
  GETUPVAL R32 12
  GETTABLEKS R31 R32 K61 ["createElement"]
  LOADK R32 K62 ["ImageButton"]
  DUPTABLE R33 K69 [{"Position", "Size", "BackgroundColor3", "BorderSizePixel", "ZIndex", "AutoButtonColor"}]
  GETTABLEKS R34 R1 K63 ["Position"]
  SETTABLEKS R34 R33 K63 ["Position"]
  GETIMPORT R34 K72 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  GETUPVAL R39 9
  GETTABLEKS R38 R39 K73 ["HEADER_HEIGHT"]
  CALL R34 4 1
  SETTABLEKS R34 R33 K64 ["Size"]
  GETTABLEKS R34 R23 K74 ["backgroundColor"]
  SETTABLEKS R34 R33 K65 ["BackgroundColor3"]
  LOADN R34 0
  SETTABLEKS R34 R33 K66 ["BorderSizePixel"]
  LOADN R34 2
  SETTABLEKS R34 R33 K67 ["ZIndex"]
  LOADB R34 0
  SETTABLEKS R34 R33 K68 ["AutoButtonColor"]
  DUPTABLE R34 K82 [{"UIPadding", "UIListLayout", "CategoryMenu", "SearchBar", "SearchOptionsButton", "ToggleListViewButton", "GroupMenu"}]
  GETUPVAL R36 12
  GETTABLEKS R35 R36 K61 ["createElement"]
  LOADK R36 K75 ["UIPadding"]
  DUPTABLE R37 K87 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R38 K89 [UDim.new]
  LOADN R39 0
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K39 ["HEADER_OUTER_PADDING"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K83 ["PaddingBottom"]
  GETIMPORT R38 K89 [UDim.new]
  LOADN R39 0
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K39 ["HEADER_OUTER_PADDING"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K84 ["PaddingLeft"]
  GETIMPORT R38 K89 [UDim.new]
  LOADN R39 0
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K39 ["HEADER_OUTER_PADDING"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K85 ["PaddingRight"]
  GETIMPORT R38 K89 [UDim.new]
  LOADN R39 0
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K39 ["HEADER_OUTER_PADDING"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K86 ["PaddingTop"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K75 ["UIPadding"]
  GETUPVAL R36 12
  GETTABLEKS R35 R36 K61 ["createElement"]
  LOADK R36 K76 ["UIListLayout"]
  DUPTABLE R37 K93 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R38 K96 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K90 ["FillDirection"]
  GETIMPORT R38 K97 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K91 ["SortOrder"]
  GETIMPORT R38 K89 [UDim.new]
  LOADN R39 0
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K35 ["HEADER_INNER_PADDING"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K92 ["Padding"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K76 ["UIListLayout"]
  GETUPVAL R36 12
  GETTABLEKS R35 R36 K61 ["createElement"]
  GETUPVAL R36 14
  DUPTABLE R37 K104 [{"Disabled", "Position", "Size", "LayoutOrder", "visibleDropDownCount", "selectedDropDownIndex", "items", "menuKey", "onItemClicked"}]
  GETUPVAL R39 11
  CALL R39 0 1
  JUMPIFNOT R39 [+3]
  GETTABLEKS R38 R1 K105 ["hasTutorialLimits"]
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K98 ["Disabled"]
  GETIMPORT R38 K72 [UDim2.new]
  LOADN R39 0
  LOADN R40 0
  LOADN R41 0
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K63 ["Position"]
  JUMPIFNOT R26 [+8]
  GETIMPORT R38 K72 [UDim2.new]
  LOADN R39 1
  LOADN R40 0
  LOADN R41 1
  LOADN R42 0
  CALL R38 4 1
  JUMPIF R38 [+7]
  GETIMPORT R38 K72 [UDim2.new]
  LOADN R39 0
  MOVE R40 R17
  LOADN R41 1
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K64 ["Size"]
  LOADN R38 0
  SETTABLEKS R38 R37 K47 ["LayoutOrder"]
  LOADN R38 8
  SETTABLEKS R38 R37 K99 ["visibleDropDownCount"]
  SETTABLEKS R7 R37 K100 ["selectedDropDownIndex"]
  SETTABLEKS R6 R37 K101 ["items"]
  JUMPIF R24 [+2]
  LOADK R38 K10 ["category"]
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K102 ["menuKey"]
  SETTABLEKS R8 R37 K103 ["onItemClicked"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K77 ["CategoryMenu"]
  AND R35 R27 R30
  SETTABLEKS R35 R34 K78 ["SearchBar"]
  MOVE R35 R14
  JUMPIFNOT R35 [+13]
  GETUPVAL R36 12
  GETTABLEKS R35 R36 K61 ["createElement"]
  GETUPVAL R36 15
  DUPTABLE R37 K107 [{"LayoutOrder", "onClick", "searchIsFiltered"}]
  LOADN R38 2
  SETTABLEKS R38 R37 K47 ["LayoutOrder"]
  SETTABLEKS R19 R37 K106 ["onClick"]
  SETTABLEKS R16 R37 K31 ["searchIsFiltered"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K79 ["SearchOptionsButton"]
  GETUPVAL R36 16
  CALL R36 0 1
  JUMPIFNOT R36 [+78]
  JUMPIFNOT R15 [+77]
  GETUPVAL R36 12
  GETTABLEKS R35 R36 K61 ["createElement"]
  GETUPVAL R36 17
  DUPTABLE R37 K115 [{"BackgroundStyle", "Cursor", "IconColor", "IconSize", "LayoutOrder", "LeftIcon", "OnClick", "Padding", "Size", "TooltipText"}]
  LOADK R38 K116 ["None"]
  SETTABLEKS R38 R37 K108 ["BackgroundStyle"]
  LOADK R38 K117 ["PointingHand"]
  SETTABLEKS R38 R37 K109 ["Cursor"]
  GETTABLEKS R38 R23 K118 ["iconColor"]
  SETTABLEKS R38 R37 K110 ["IconColor"]
  GETUPVAL R39 9
  GETTABLEKS R38 R39 K34 ["HEADER_OPTIONSBUTTON_WIDTH"]
  SETTABLEKS R38 R37 K111 ["IconSize"]
  LOADN R38 2
  SETTABLEKS R38 R37 K47 ["LayoutOrder"]
  GETTABLEKS R39 R1 K119 ["layoutMode"]
  GETUPVAL R41 18
  GETTABLEKS R40 R41 K120 ["ListView"]
  JUMPIFNOTEQ R39 R40 [+5]
  GETUPVAL R39 19
  GETTABLEKS R38 R39 K121 ["GALLERY_ICON"]
  JUMP [+3]
  GETUPVAL R39 19
  GETTABLEKS R38 R39 K122 ["LIST_ICON"]
  SETTABLEKS R38 R37 K112 ["LeftIcon"]
  GETTABLEKS R38 R0 K123 ["toggleLayoutMode"]
  SETTABLEKS R38 R37 K113 ["OnClick"]
  LOADN R38 2
  SETTABLEKS R38 R37 K92 ["Padding"]
  GETIMPORT R38 K125 [UDim2.fromOffset]
  MOVE R39 R18
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K126 ["HEADER_OPTIONSBUTTON_HEIGHT"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K64 ["Size"]
  GETTABLEKS R39 R1 K119 ["layoutMode"]
  GETUPVAL R41 18
  GETTABLEKS R40 R41 K120 ["ListView"]
  JUMPIFNOTEQ R39 R40 [+7]
  LOADK R40 K127 ["General"]
  LOADK R41 K128 ["GridView"]
  NAMECALL R38 R3 K129 ["getText"]
  CALL R38 3 1
  JUMP [+5]
  LOADK R40 K127 ["General"]
  LOADK R41 K120 ["ListView"]
  NAMECALL R38 R3 K129 ["getText"]
  CALL R38 3 1
  SETTABLEKS R38 R37 K114 ["TooltipText"]
  CALL R35 2 1
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K80 ["ToggleListViewButton"]
  MOVE R35 R22
  JUMPIFNOT R35 [+39]
  GETUPVAL R36 12
  GETTABLEKS R35 R36 K61 ["createElement"]
  GETUPVAL R36 14
  DUPTABLE R37 K130 [{"Position", "Size", "LayoutOrder", "visibleDropDownCount", "selectedDropDownIndex", "items", "menuKey", "onItemClicked"}]
  GETIMPORT R38 K72 [UDim2.new]
  LOADN R39 0
  LOADN R40 0
  LOADN R41 0
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K63 ["Position"]
  GETIMPORT R38 K72 [UDim2.new]
  LOADN R39 0
  MOVE R40 R21
  LOADN R41 1
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K64 ["Size"]
  LOADN R38 1
  SETTABLEKS R38 R37 K47 ["LayoutOrder"]
  LOADN R38 8
  SETTABLEKS R38 R37 K99 ["visibleDropDownCount"]
  SETTABLEKS R12 R37 K100 ["selectedDropDownIndex"]
  SETTABLEKS R11 R37 K101 ["items"]
  LOADK R38 K131 ["id"]
  SETTABLEKS R38 R37 K102 ["menuKey"]
  SETTABLEKS R13 R37 K103 ["onItemClicked"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K81 ["GroupMenu"]
  CALL R31 3 -1
  RETURN R31 -1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["mostRecentSearchRequestTime"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["mostRecentAssetInsertTime"]
  JUMPIFNOTLT R2 R1 [+17]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["onTermSearchedWithoutInsertion"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["getCategory"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K5 ["categoryName"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K6 ["searchTerm"]
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  LOADK R3 K0 ["tabRefresh"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
  JUMPIF R0 [+2]
  LOADNIL R1
  JUMP [+4]
  LOADK R3 K0 ["tabRefresh"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+10]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K5 ["BindableEvent"]
  CALL R2 1 1
  MOVE R1 R2
  LOADK R2 K0 ["tabRefresh"]
  SETTABLEKS R2 R1 K6 ["Name"]
  SETTABLEKS R0 R1 K7 ["Parent"]
  RETURN R1 1

PROTO_14:
  JUMPIF R0 [+2]
  LOADNIL R1
  JUMP [+4]
  LOADK R3 K0 ["tabRefresh"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K2 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["categoryName"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Settings"]
  LOADK R3 K3 ["Plugin"]
  NAMECALL R1 R1 K4 ["get"]
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K5 ["selectCategory"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["Network"]
  GETTABLEKS R3 R4 K7 ["networkInterface"]
  MOVE R4 R1
  MOVE R5 R0
  CALL R2 3 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["tabRefreshConnection"]
  JUMPIF R1 [+32]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["pluginGui"]
  JUMPIF R2 [+2]
  LOADNIL R3
  JUMP [+4]
  LOADK R5 K3 ["tabRefresh"]
  NAMECALL R3 R2 K4 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIF R3 [+10]
  GETIMPORT R4 K7 [Instance.new]
  LOADK R5 K8 ["BindableEvent"]
  CALL R4 1 1
  MOVE R3 R4
  LOADK R4 K3 ["tabRefresh"]
  SETTABLEKS R4 R3 K9 ["Name"]
  SETTABLEKS R2 R3 K10 ["Parent"]
  MOVE R1 R3
  GETTABLEKS R2 R1 K11 ["Event"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K12 ["connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K0 ["tabRefreshConnection"]
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["tabRefreshConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["tabRefreshConnection"]
  NAMECALL R1 R1 K1 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["tabRefreshConnection"]
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["categories"]
  SETTABLEKS R1 R0 K2 ["unlocalizedCategories"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["pluginGui"]
  JUMPIF R1 [+2]
  LOADNIL R2
  JUMP [+4]
  LOADK R4 K4 ["tabRefresh"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+10]
  GETIMPORT R3 K8 [Instance.new]
  LOADK R4 K9 ["BindableEvent"]
  CALL R3 1 1
  MOVE R2 R3
  LOADK R3 K4 ["tabRefresh"]
  SETTABLEKS R3 R2 K10 ["Name"]
  SETTABLEKS R1 R2 K11 ["Parent"]
  NAMECALL R1 R0 K12 ["addTabRefreshCallback"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  NAMECALL R1 R0 K0 ["removeTabRefreshCallback"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["pluginGui"]
  JUMPIF R1 [+2]
  LOADNIL R2
  JUMP [+4]
  LOADK R4 K3 ["tabRefresh"]
  NAMECALL R2 R1 K4 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K5 ["Destroy"]
  CALL R3 1 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["includeUnverifiedCreators"]
  RETURN R1 1

PROTO_21:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["assets"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETTABLEKS R3 R0 K1 ["pageInfo"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  DUPTABLE R4 K14 [{"categories", "categoryName", "creatorFilter", "groups", "groupIndex", "layoutMode", "mostRecentAssetInsertTime", "roles", "searchId", "searchIsFiltered", "searchTerm", "hasTutorialLimits"}]
  GETTABLEKS R5 R3 K2 ["categories"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["categories"]
  GETTABLEKS R5 R3 K3 ["categoryName"]
  JUMPIF R5 [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K15 ["DEFAULT"]
  GETTABLEKS R5 R6 K16 ["name"]
  SETTABLEKS R5 R4 K3 ["categoryName"]
  GETTABLEKS R5 R3 K17 ["creator"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K4 ["creatorFilter"]
  GETTABLEKS R5 R3 K5 ["groups"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K5 ["groups"]
  GETTABLEKS R6 R3 K6 ["groupIndex"]
  ORK R5 R6 K18 [0]
  SETTABLEKS R5 R4 K6 ["groupIndex"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K7 ["layoutMode"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K7 ["layoutMode"]
  GETTABLEKS R5 R2 K8 ["mostRecentAssetInsertTime"]
  SETTABLEKS R5 R4 K8 ["mostRecentAssetInsertTime"]
  GETTABLEKS R5 R0 K9 ["roles"]
  SETTABLEKS R5 R4 K9 ["roles"]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K10 ["searchId"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["searchId"]
  GETGLOBAL R5 K19 ["isSearchFiltered"]
  MOVE R6 R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["searchIsFiltered"]
  GETTABLEKS R6 R3 K12 ["searchTerm"]
  ORK R5 R6 K20 [""]
  SETTABLEKS R5 R4 K12 ["searchTerm"]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+9]
  GETTABLEKS R7 R0 K21 ["tutorialLimits"]
  GETTABLEKS R6 R7 K22 ["assetIds"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K13 ["hasTutorialLimits"]
  RETURN R4 1

PROTO_22:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  LOADB R10 0
  CALL R5 5 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_27:
  DUPTABLE R1 K5 [{"selectCategory", "selectGroup", "requestSearch", "setLayoutMode", "updateSearchTerm"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["selectCategory"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["selectGroup"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["requestSearch"]
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["setLayoutMode"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K4 ["updateSearchTerm"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R9 R1 K12 ["Core"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["Analytics"]
  GETTABLEKS R6 R7 K14 ["Analytics"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K12 ["Core"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K15 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K12 ["Core"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K16 ["DebugFlags"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K12 ["Core"]
  GETTABLEKS R10 R11 K13 ["Util"]
  GETTABLEKS R9 R10 K17 ["Images"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K12 ["Core"]
  GETTABLEKS R11 R12 K13 ["Util"]
  GETTABLEKS R10 R11 K18 ["PageInfoHelper"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K12 ["Core"]
  GETTABLEKS R12 R13 K19 ["Localization"]
  GETTABLEKS R11 R12 K20 ["getLocalizedCategories"]
  CALL R10 1 1
  LOADNIL R11
  JUMPIFNOT R0 [+10]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R1 K12 ["Core"]
  GETTABLEKS R14 R15 K13 ["Util"]
  GETTABLEKS R13 R14 K21 ["getIsIXPVariableEnabled"]
  CALL R12 1 1
  MOVE R11 R12
  GETIMPORT R12 K9 [require]
  GETTABLEKS R16 R1 K12 ["Core"]
  GETTABLEKS R15 R16 K13 ["Util"]
  GETTABLEKS R14 R15 K22 ["SharedFlags"]
  GETTABLEKS R13 R14 K23 ["getFFlagToolboxContentManagementCombineTabs"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R1 K12 ["Core"]
  GETTABLEKS R15 R16 K24 ["Types"]
  GETTABLEKS R14 R15 K25 ["Category"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R17 R1 K12 ["Core"]
  GETTABLEKS R16 R17 K24 ["Types"]
  GETTABLEKS R15 R16 K26 ["LayoutMode"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R1 K12 ["Core"]
  GETTABLEKS R17 R18 K24 ["Types"]
  GETTABLEKS R16 R17 K27 ["AnalyticsTypes"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R2 K28 ["Framework"]
  CALL R16 1 1
  GETTABLEKS R18 R16 K13 ["Util"]
  GETTABLEKS R17 R18 K29 ["deepCopy"]
  GETTABLEKS R19 R16 K30 ["UI"]
  GETTABLEKS R18 R19 K31 ["IconButton"]
  GETTABLEKS R20 R16 K30 ["UI"]
  GETTABLEKS R19 R20 K32 ["Tooltip"]
  GETIMPORT R20 K9 [require]
  GETTABLEKS R23 R1 K12 ["Core"]
  GETTABLEKS R22 R23 K33 ["ContextServices"]
  GETTABLEKS R21 R22 K34 ["IXPContext"]
  CALL R20 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R23 R2 K28 ["Framework"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K33 ["ContextServices"]
  GETTABLEKS R22 R21 K35 ["withContext"]
  GETIMPORT R23 K9 [require]
  GETTABLEKS R26 R1 K12 ["Core"]
  GETTABLEKS R25 R26 K33 ["ContextServices"]
  GETTABLEKS R24 R25 K36 ["Settings"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R27 R1 K12 ["Core"]
  GETTABLEKS R26 R27 K33 ["ContextServices"]
  GETTABLEKS R25 R26 K37 ["NetworkContext"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETTABLEKS R28 R1 K12 ["Core"]
  GETTABLEKS R27 R28 K38 ["Components"]
  GETTABLEKS R26 R27 K39 ["DropdownMenu"]
  CALL R25 1 1
  GETIMPORT R26 K9 [require]
  GETTABLEKS R29 R1 K12 ["Core"]
  GETTABLEKS R28 R29 K38 ["Components"]
  GETTABLEKS R27 R28 K40 ["SearchBarWithAutocomplete"]
  CALL R26 1 1
  GETIMPORT R27 K9 [require]
  GETTABLEKS R31 R1 K12 ["Core"]
  GETTABLEKS R30 R31 K38 ["Components"]
  GETTABLEKS R29 R30 K41 ["SearchOptions"]
  GETTABLEKS R28 R29 K42 ["SearchOptionsButton"]
  CALL R27 1 1
  GETIMPORT R28 K9 [require]
  GETTABLEKS R31 R1 K12 ["Core"]
  GETTABLEKS R30 R31 K43 ["Actions"]
  GETTABLEKS R29 R30 K44 ["SetLayoutMode"]
  CALL R28 1 1
  GETIMPORT R29 K9 [require]
  GETTABLEKS R32 R1 K12 ["Core"]
  GETTABLEKS R31 R32 K43 ["Actions"]
  GETTABLEKS R30 R31 K45 ["UpdateSearchTerm"]
  CALL R29 1 1
  GETIMPORT R30 K9 [require]
  GETTABLEKS R34 R1 K12 ["Core"]
  GETTABLEKS R33 R34 K46 ["Networking"]
  GETTABLEKS R32 R33 K47 ["Requests"]
  GETTABLEKS R31 R32 K48 ["RequestSearchRequest"]
  CALL R30 1 1
  GETIMPORT R31 K9 [require]
  GETTABLEKS R35 R1 K12 ["Core"]
  GETTABLEKS R34 R35 K46 ["Networking"]
  GETTABLEKS R33 R34 K47 ["Requests"]
  GETTABLEKS R32 R33 K49 ["SelectCategoryRequest"]
  CALL R31 1 1
  GETIMPORT R32 K9 [require]
  GETTABLEKS R36 R1 K12 ["Core"]
  GETTABLEKS R35 R36 K46 ["Networking"]
  GETTABLEKS R34 R35 K47 ["Requests"]
  GETTABLEKS R33 R34 K50 ["SelectGroupRequest"]
  CALL R32 1 1
  GETIMPORT R33 K9 [require]
  GETTABLEKS R37 R1 K12 ["Core"]
  GETTABLEKS R36 R37 K13 ["Util"]
  GETTABLEKS R35 R36 K22 ["SharedFlags"]
  GETTABLEKS R34 R35 K51 ["getFFlagToolboxAddRecentSearchesToAutoComplete"]
  CALL R33 1 1
  GETIMPORT R34 K9 [require]
  GETTABLEKS R38 R1 K12 ["Core"]
  GETTABLEKS R37 R38 K13 ["Util"]
  GETTABLEKS R36 R37 K22 ["SharedFlags"]
  GETTABLEKS R35 R36 K52 ["getFFlagToolboxEnableAssetRows"]
  CALL R34 1 1
  GETIMPORT R35 K9 [require]
  GETTABLEKS R39 R1 K12 ["Core"]
  GETTABLEKS R38 R39 K13 ["Util"]
  GETTABLEKS R37 R38 K22 ["SharedFlags"]
  GETTABLEKS R36 R37 K53 ["getIsIXPEnabledForListView"]
  CALL R35 1 1
  GETIMPORT R36 K9 [require]
  GETTABLEKS R40 R1 K12 ["Core"]
  GETTABLEKS R39 R40 K13 ["Util"]
  GETTABLEKS R38 R39 K22 ["SharedFlags"]
  GETTABLEKS R37 R38 K54 ["getFFlagEnableUpdatedToolboxSearchBarIcons"]
  CALL R36 1 1
  GETIMPORT R37 K9 [require]
  GETTABLEKS R41 R1 K12 ["Core"]
  GETTABLEKS R40 R41 K13 ["Util"]
  GETTABLEKS R39 R40 K22 ["SharedFlags"]
  GETTABLEKS R38 R39 K55 ["getFFlagToolboxListviewAnalytics"]
  CALL R37 1 1
  GETIMPORT R38 K9 [require]
  GETTABLEKS R42 R1 K12 ["Core"]
  GETTABLEKS R41 R42 K13 ["Util"]
  GETTABLEKS R40 R41 K22 ["SharedFlags"]
  GETTABLEKS R39 R40 K56 ["getFFlagToolboxTutorialLimits"]
  CALL R38 1 1
  GETIMPORT R39 K9 [require]
  GETTABLEKS R43 R1 K12 ["Core"]
  GETTABLEKS R42 R43 K13 ["Util"]
  GETTABLEKS R41 R42 K22 ["SharedFlags"]
  GETTABLEKS R40 R41 K57 ["getFFlagToolboxConsolidateRenderMethods"]
  CALL R39 1 1
  MOVE R41 R38
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETIMPORT R40 K9 [require]
  GETTABLEKS R43 R1 K12 ["Core"]
  GETTABLEKS R42 R43 K13 ["Util"]
  GETTABLEKS R41 R42 K58 ["ToolboxCommunication"]
  CALL R40 1 1
  JUMP [+1]
  LOADNIL R40
  GETTABLEKS R41 R3 K59 ["PureComponent"]
  LOADK R43 K60 ["Header"]
  NAMECALL R41 R41 K61 ["extend"]
  CALL R41 2 1
  GETIMPORT R42 K63 [settings]
  LOADNIL R43
  JUMPIFNOT R0 [+21]
  NEWTABLE R44 4 0
  GETTABLEKS R46 R13 K64 ["MY_PACKAGES"]
  GETTABLEKS R45 R46 K65 ["name"]
  LOADB R46 1
  SETTABLE R46 R44 R45
  GETTABLEKS R46 R13 K66 ["GROUP_PACKAGES"]
  GETTABLEKS R45 R46 K65 ["name"]
  LOADB R46 1
  SETTABLE R46 R44 R45
  GETTABLEKS R46 R13 K67 ["CREATIONS_GROUP_PACKAGES"]
  GETTABLEKS R45 R46 K65 ["name"]
  LOADB R46 1
  SETTABLE R46 R44 R45
  MOVE R43 R44
  NEWCLOSURE R44 P0
  CAPTURE VAL R0
  CAPTURE REF R11
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R42
  CAPTURE VAL R13
  CAPTURE VAL R38
  CAPTURE VAL R40
  CAPTURE VAL R34
  CAPTURE VAL R14
  CAPTURE VAL R37
  SETTABLEKS R44 R41 K68 ["init"]
  DUPCLOSURE R44 K69 [PROTO_8]
  CAPTURE VAL R0
  SETTABLEKS R44 R41 K70 ["willUpdate"]
  MOVE R44 R39
  CALL R44 0 1
  JUMPIF R44 [+3]
  DUPCLOSURE R44 K71 [PROTO_9]
  SETTABLEKS R44 R41 K72 ["render"]
  MOVE R45 R39
  CALL R45 0 1
  JUMPIFNOT R45 [+2]
  LOADK R44 K72 ["render"]
  JUMP [+1]
  LOADK R44 K73 ["renderContent"]
  NEWCLOSURE R45 P3
  CAPTURE VAL R0
  CAPTURE REF R11
  CAPTURE VAL R17
  CAPTURE REF R43
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R36
  CAPTURE VAL R35
  CAPTURE VAL R6
  CAPTURE VAL R33
  CAPTURE VAL R38
  CAPTURE VAL R3
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R27
  CAPTURE VAL R34
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R8
  SETTABLE R45 R41 R44
  DUPCLOSURE R44 K74 [PROTO_11]
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R44 R41 K75 ["checkRecentAssetInsertion"]
  DUPCLOSURE R44 K76 [PROTO_12]
  DUPCLOSURE R45 K77 [PROTO_13]
  DUPCLOSURE R46 K78 [PROTO_14]
  DUPCLOSURE R47 K79 [PROTO_16]
  SETTABLEKS R47 R41 K80 ["addTabRefreshCallback"]
  DUPCLOSURE R47 K81 [PROTO_17]
  SETTABLEKS R47 R41 K82 ["removeTabRefreshCallback"]
  DUPCLOSURE R47 K83 [PROTO_18]
  CAPTURE VAL R0
  SETTABLEKS R47 R41 K84 ["didMount"]
  DUPCLOSURE R47 K85 [PROTO_19]
  SETTABLEKS R47 R41 K86 ["willUnmount"]
  MOVE R47 R22
  DUPTABLE R48 K90 [{"IXP", "Settings", "Stylizer", "Localization", "Network"}]
  JUMPIF R0 [+6]
  MOVE R50 R34
  CALL R50 0 1
  JUMPIF R50 [+3]
  MOVE R50 R12
  CALL R50 0 1
  JUMPIFNOT R50 [+2]
  MOVE R49 R20
  JUMP [+1]
  LOADNIL R49
  SETTABLEKS R49 R48 K87 ["IXP"]
  SETTABLEKS R23 R48 K36 ["Settings"]
  GETTABLEKS R49 R21 K88 ["Stylizer"]
  SETTABLEKS R49 R48 K88 ["Stylizer"]
  GETTABLEKS R49 R21 K19 ["Localization"]
  SETTABLEKS R49 R48 K19 ["Localization"]
  SETTABLEKS R24 R48 K89 ["Network"]
  CALL R47 1 1
  MOVE R48 R41
  CALL R47 1 1
  MOVE R41 R47
  DUPCLOSURE R47 K91 [PROTO_20]
  SETGLOBAL R47 K92 ["isSearchFiltered"]
  DUPCLOSURE R47 K93 [PROTO_21]
  CAPTURE VAL R13
  CAPTURE VAL R34
  CAPTURE VAL R37
  CAPTURE VAL R38
  DUPCLOSURE R48 K94 [PROTO_27]
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R30
  CAPTURE VAL R34
  CAPTURE VAL R28
  CAPTURE VAL R29
  GETTABLEKS R49 R4 K95 ["connect"]
  MOVE R50 R47
  MOVE R51 R48
  CALL R49 2 1
  MOVE R50 R41
  CALL R49 1 -1
  CLOSEUPVALS R11
  RETURN R49 -1
