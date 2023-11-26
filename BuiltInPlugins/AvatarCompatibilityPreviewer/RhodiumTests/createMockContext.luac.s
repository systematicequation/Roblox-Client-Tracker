PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["fn"]
  CALL R3 0 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K1 ["fn"]
  CALL R5 0 2
  NEWTABLE R7 0 5
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K2 ["ContextServices"]
  GETTABLEKS R9 R10 K3 ["Plugin"]
  GETTABLEKS R8 R9 K0 ["new"]
  MOVE R9 R0
  CALL R8 1 1
  GETUPVAL R9 5
  LOADB R10 1
  CALL R9 1 1
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K2 ["ContextServices"]
  GETTABLEKS R11 R12 K4 ["Analytics"]
  GETTABLEKS R10 R11 K0 ["new"]
  GETUPVAL R11 6
  MOVE R12 R1
  CALL R10 2 1
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K5 ["Contexts"]
  GETTABLEKS R12 R13 K6 ["PreviewContext"]
  GETTABLEKS R11 R12 K0 ["new"]
  CALL R11 0 1
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K0 ["new"]
  MOVE R13 R2
  CALL R12 1 -1
  SETLIST R7 R8 4294967295 [1]
  GETUPVAL R8 9
  CALL R8 0 1
  JUMPIF R8 [+9]
  MOVE R9 R7
  GETUPVAL R11 10
  GETTABLEKS R10 R11 K7 ["mock"]
  CALL R10 0 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K10 [table.insert]
  CALL R8 -1 0
  GETUPVAL R8 11
  CALL R8 0 1
  JUMPIF R8 [+9]
  MOVE R9 R7
  GETUPVAL R11 12
  GETTABLEKS R10 R11 K7 ["mock"]
  CALL R10 0 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K10 [table.insert]
  CALL R8 -1 0
  GETUPVAL R8 13
  CALL R8 0 1
  JUMPIFNOT R8 [+9]
  MOVE R9 R7
  GETUPVAL R11 14
  GETTABLEKS R10 R11 K11 ["mockNeverReturns"]
  CALL R10 0 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K10 [table.insert]
  CALL R8 -1 0
  DUPTABLE R8 K17 [{"context", "plugin", "analyticsService", "selectionService", "placesService"}]
  SETTABLEKS R7 R8 K12 ["context"]
  SETTABLEKS R0 R8 K13 ["plugin"]
  SETTABLEKS R1 R8 K14 ["analyticsService"]
  SETTABLEKS R2 R8 K15 ["selectionService"]
  DUPTABLE R9 K20 [{"startPlaySolo", "stopPlaySolo"}]
  SETTABLEKS R3 R9 K18 ["startPlaySolo"]
  SETTABLEKS R5 R9 K19 ["stopPlaySolo"]
  SETTABLEKS R9 R8 K16 ["placesService"]
  DUPTABLE R9 K21 [{"placesService"}]
  DUPTABLE R10 K20 [{"startPlaySolo", "stopPlaySolo"}]
  SETTABLEKS R4 R10 K18 ["startPlaySolo"]
  SETTABLEKS R6 R10 K19 ["stopPlaySolo"]
  SETTABLEKS R10 R9 K16 ["placesService"]
  RETURN R8 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AvatarToolsShared"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Dev"]
  GETTABLEKS R4 R5 K10 ["JestGlobals"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["DEPRECATED_PlacesServiceWrapper"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K14 ["DEPRECATED_StudioAssetServiceWrapper"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K15 ["Resources"]
  GETTABLEKS R7 R8 K16 ["MakeTheme"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K12 ["Util"]
  GETTABLEKS R8 R9 K17 ["SelectionWrapper"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K18 ["Components"]
  GETTABLEKS R9 R10 K19 ["PlacesServiceContext"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K12 ["Util"]
  GETTABLEKS R10 R11 K20 ["UGCValidationContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K15 ["Resources"]
  GETTABLEKS R11 R12 K21 ["createAnalyticsHandlers"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K22 ["Flags"]
  GETTABLEKS R12 R13 K23 ["getFFlagAvatarPreviewerMultiSubmit"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K11 ["Src"]
  GETTABLEKS R14 R15 K22 ["Flags"]
  GETTABLEKS R13 R14 K24 ["getFFlagAvatarPreviewerTestingScreen"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K11 ["Src"]
  GETTABLEKS R15 R16 K22 ["Flags"]
  GETTABLEKS R14 R15 K25 ["getFFlagAvatarPreviewerUGCValidationNotice"]
  CALL R13 1 1
  GETTABLEKS R16 R2 K26 ["TestHelpers"]
  GETTABLEKS R15 R16 K27 ["Instances"]
  GETTABLEKS R14 R15 K28 ["MockAnalyticsService"]
  GETTABLEKS R17 R2 K26 ["TestHelpers"]
  GETTABLEKS R16 R17 K27 ["Instances"]
  GETTABLEKS R15 R16 K29 ["MockSelectionService"]
  GETTABLEKS R18 R2 K26 ["TestHelpers"]
  GETTABLEKS R17 R18 K27 ["Instances"]
  GETTABLEKS R16 R17 K30 ["MockPlugin"]
  GETTABLEKS R17 R3 K31 ["jest"]
  DUPCLOSURE R18 K32 [PROTO_0]
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R9
  RETURN R18 1
