PROTO_0:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+40]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["current"]
  JUMPIFNOT R4 [+36]
  LOADNIL R4
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+14]
  GETUPVAL R5 3
  NAMECALL R5 R5 K1 ["get"]
  CALL R5 1 1
  GETUPVAL R6 4
  NAMECALL R6 R6 K1 ["get"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K2 ["getNavigationContext"]
  MOVE R8 R5
  GETUPVAL R9 5
  CALL R7 2 1
  MOVE R4 R7
  GETUPVAL R5 0
  MOVE R6 R0
  MOVE R7 R3
  MOVE R8 R1
  MOVE R9 R2
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["current"]
  GETTABLEKS R10 R11 K3 ["AbsoluteSize"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K0 ["current"]
  GETTABLEKS R11 R12 K4 ["AbsolutePosition"]
  MOVE R12 R4
  CALL R5 7 -1
  RETURN R5 -1
  LOADNIL R4
  RETURN R4 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETTABLEKS R3 R0 K1 ["AudioSection"]
  GETTABLEKS R2 R3 K2 ["ResultsState"]
  GETTABLEKS R5 R0 K1 ["AudioSection"]
  GETTABLEKS R4 R5 K3 ["Section"]
  GETTABLEKS R3 R4 K4 ["name"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K5 ["use"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R5 R6 K7 ["LogAssetImpression"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["useRef"]
  LOADNIL R7
  CALL R6 1 1
  LOADNIL R7
  LOADNIL R8
  GETUPVAL R9 3
  CALL R9 0 1
  JUMPIFNOT R9 [+10]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K5 ["use"]
  CALL R9 0 1
  MOVE R7 R9
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K5 ["use"]
  CALL R9 0 1
  MOVE R8 R9
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["useCallback"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE UPVAL U3
  CAPTURE REF R7
  CAPTURE REF R8
  CAPTURE VAL R3
  NEWTABLE R11 0 1
  MOVE R12 R5
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  LOADNIL R10
  GETUPVAL R11 6
  CALL R11 0 1
  JUMPIFNOT R11 [+120]
  DUPTABLE R11 K11 [{"Header"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K16 [{"LayoutOrder", "Title", "OnClickSeeAll"}]
  NAMECALL R15 R1 K17 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K13 ["LayoutOrder"]
  GETTABLEKS R17 R0 K1 ["AudioSection"]
  GETTABLEKS R16 R17 K3 ["Section"]
  GETTABLEKS R15 R16 K18 ["displayName"]
  SETTABLEKS R15 R14 K14 ["Title"]
  GETTABLEKS R15 R0 K19 ["OnSeeAllActivated"]
  SETTABLEKS R15 R14 K15 ["OnClickSeeAll"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["Header"]
  MOVE R10 R11
  JUMPIFNOT R2 [+79]
  GETTABLEKS R11 R2 K20 ["loading"]
  JUMPIF R11 [+76]
  GETTABLEKS R12 R2 K21 ["assets"]
  LENGTH R11 R12
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+46]
  GETUPVAL R12 8
  GETTABLEKS R11 R12 K22 ["Generator"]
  DUPTABLE R12 K30 [{"LayoutOrder", "Assets", "LogImpression", "CanInsertAsset", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig", "SwimlaneName"}]
  NAMECALL R13 R1 K17 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K13 ["LayoutOrder"]
  GETTABLEKS R13 R2 K21 ["assets"]
  SETTABLEKS R13 R12 K23 ["Assets"]
  SETTABLEKS R9 R12 K24 ["LogImpression"]
  GETTABLEKS R14 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R13 R14 K25 ["CanInsertAsset"]
  SETTABLEKS R13 R12 K25 ["CanInsertAsset"]
  GETTABLEKS R14 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R13 R14 K26 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R13 R12 K26 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R14 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R13 R14 K27 ["TryInsert"]
  SETTABLEKS R13 R12 K27 ["TryInsert"]
  GETTABLEKS R14 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R13 R14 K28 ["TryOpenAssetConfig"]
  SETTABLEKS R13 R12 K28 ["TryOpenAssetConfig"]
  SETTABLEKS R3 R12 K29 ["SwimlaneName"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K31 ["AudioTable"]
  JUMP [+38]
  GETTABLEKS R13 R0 K1 ["AudioSection"]
  GETTABLEKS R12 R13 K3 ["Section"]
  GETTABLEKS R11 R12 K4 ["name"]
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K32 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R11 R12 [+28]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 10
  DUPTABLE R13 K33 [{"LayoutOrder"}]
  NAMECALL R14 R1 K17 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K13 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K34 ["NoSceneSuggestions"]
  JUMP [+13]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 11
  DUPTABLE R13 K33 [{"LayoutOrder"}]
  NAMECALL R14 R1 K17 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K13 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K35 ["Loading"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 12
  DUPTABLE R13 K42 [{"LayoutOrder", "Size", "AutomaticSize", "BackgroundTransparency", "Layout", "Spacing", "ref"}]
  GETTABLEKS R14 R0 K13 ["LayoutOrder"]
  SETTABLEKS R14 R13 K13 ["LayoutOrder"]
  GETIMPORT R14 K45 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["Size"]
  GETIMPORT R14 K48 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K37 ["AutomaticSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K38 ["BackgroundTransparency"]
  GETIMPORT R14 K51 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K39 ["Layout"]
  GETTABLEKS R14 R4 K52 ["spacingUnit"]
  SETTABLEKS R14 R13 K40 ["Spacing"]
  SETTABLEKS R6 R13 K41 ["ref"]
  GETUPVAL R15 6
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  MOVE R14 R10
  JUMP [+86]
  DUPTABLE R14 K54 [{"Header", "Table"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K12 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K16 [{"LayoutOrder", "Title", "OnClickSeeAll"}]
  NAMECALL R18 R1 K17 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K13 ["LayoutOrder"]
  GETTABLEKS R20 R0 K1 ["AudioSection"]
  GETTABLEKS R19 R20 K3 ["Section"]
  GETTABLEKS R18 R19 K18 ["displayName"]
  SETTABLEKS R18 R17 K14 ["Title"]
  GETTABLEKS R18 R0 K19 ["OnSeeAllActivated"]
  SETTABLEKS R18 R17 K15 ["OnClickSeeAll"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K10 ["Header"]
  JUMPIFNOT R2 [+46]
  GETTABLEKS R16 R2 K20 ["loading"]
  JUMPIF R16 [+43]
  GETUPVAL R16 8
  GETTABLEKS R15 R16 K22 ["Generator"]
  DUPTABLE R16 K30 [{"LayoutOrder", "Assets", "LogImpression", "CanInsertAsset", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig", "SwimlaneName"}]
  NAMECALL R17 R1 K17 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K13 ["LayoutOrder"]
  GETTABLEKS R17 R2 K21 ["assets"]
  SETTABLEKS R17 R16 K23 ["Assets"]
  SETTABLEKS R9 R16 K24 ["LogImpression"]
  GETTABLEKS R18 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R17 R18 K25 ["CanInsertAsset"]
  SETTABLEKS R17 R16 K25 ["CanInsertAsset"]
  GETTABLEKS R18 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R17 R18 K26 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R17 R16 K26 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R18 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R17 R18 K27 ["TryInsert"]
  SETTABLEKS R17 R16 K27 ["TryInsert"]
  GETTABLEKS R18 R0 K6 ["AssetLogicWrapperProps"]
  GETTABLEKS R17 R18 K28 ["TryOpenAssetConfig"]
  SETTABLEKS R17 R16 K28 ["TryOpenAssetConfig"]
  SETTABLEKS R3 R16 K29 ["SwimlaneName"]
  CALL R15 1 1
  JUMP [+11]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K12 ["createElement"]
  GETUPVAL R16 11
  DUPTABLE R17 K33 [{"LayoutOrder"}]
  NAMECALL R18 R1 K17 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K13 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K53 ["Table"]
  CALL R11 3 -1
  CLOSEUPVALS R7
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K12 ["Components"]
  GETTABLEKS R6 R7 K13 ["Categorization"]
  GETTABLEKS R5 R6 K14 ["SectionHeader"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K9 ["Core"]
  GETTABLEKS R8 R9 K12 ["Components"]
  GETTABLEKS R7 R8 K15 ["Audio"]
  GETTABLEKS R6 R7 K16 ["AudioTable"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Core"]
  GETTABLEKS R8 R9 K12 ["Components"]
  GETTABLEKS R7 R8 K17 ["NoSceneSuggestions"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Core"]
  GETTABLEKS R9 R10 K18 ["Types"]
  GETTABLEKS R8 R9 K19 ["AudioTypes"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Core"]
  GETTABLEKS R10 R11 K18 ["Types"]
  GETTABLEKS R9 R10 K20 ["AssetLogicTypes"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Core"]
  GETTABLEKS R11 R12 K10 ["Util"]
  GETTABLEKS R10 R11 K21 ["LayoutOrderIterator"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Core"]
  GETTABLEKS R12 R13 K22 ["ContextServices"]
  GETTABLEKS R11 R12 K23 ["NavigationContext"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K9 ["Core"]
  GETTABLEKS R14 R15 K10 ["Util"]
  GETTABLEKS R13 R14 K24 ["Analytics"]
  GETTABLEKS R12 R13 K25 ["AssetAnalyticsContextItem"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K9 ["Core"]
  GETTABLEKS R15 R16 K10 ["Util"]
  GETTABLEKS R14 R15 K26 ["SharedFlags"]
  GETTABLEKS R13 R14 K27 ["getFFlagAddMoreAudioSwimlaneAnalytics"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K9 ["Core"]
  GETTABLEKS R15 R16 K28 ["Flags"]
  GETTABLEKS R14 R15 K29 ["getFFlagToolboxAudioSuggestionsEmptyState"]
  CALL R13 1 1
  GETTABLEKS R15 R2 K22 ["ContextServices"]
  GETTABLEKS R14 R15 K30 ["Stylizer"]
  GETTABLEKS R16 R2 K31 ["UI"]
  GETTABLEKS R15 R16 K32 ["LoadingIndicator"]
  GETTABLEKS R17 R2 K31 ["UI"]
  GETTABLEKS R16 R17 K33 ["Pane"]
  DUPCLOSURE R17 K34 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R16
  RETURN R17 1
