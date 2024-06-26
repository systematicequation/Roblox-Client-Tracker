PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DataModelSessionStarted"]
  GETUPVAL R2 1
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["DataModelSessionEnded"]
  GETUPVAL R3 2
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["plugin"]
  GETTABLEKS R2 R3 K1 ["MultipleDocumentInterfaceInstance"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R5 0 2
  MOVE R6 R0
  MOVE R7 R1
  SETLIST R5 R6 2 [1]
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R2 0
  LOADB R3 0
  GETIMPORT R4 K3 [Enum.StudioCloseMode.None]
  NAMECALL R0 R0 K4 ["ShowSaveOrPublishPlaceToRoblox"]
  CALL R0 4 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["plugin"]
  CALL R1 1 2
  JUMPIFNOTEQKN R2 K1 [0] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  GETIMPORT R5 K3 [game]
  LOADK R7 K4 ["GuiService"]
  NAMECALL R5 R5 K5 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K3 [game]
  LOADK R8 K6 ["StudioPublishService"]
  NAMECALL R6 R6 K5 ["GetService"]
  CALL R6 2 1
  DUPTABLE R7 K14 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "useCollaborators", "usePlaceAndUniverseId", "useConnectToDataModelSessionEffect", "openBrowserLink", "contextType"}]
  GETUPVAL R8 2
  SETTABLEKS R8 R7 K7 ["activityHistoryClient"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K8 ["showSaveOrPublishPlaceToRobloxFn"]
  GETUPVAL R8 3
  SETTABLEKS R8 R7 K9 ["useCollaborators"]
  GETUPVAL R8 0
  SETTABLEKS R8 R7 K10 ["usePlaceAndUniverseId"]
  SETTABLEKS R4 R7 K11 ["useConnectToDataModelSessionEffect"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K12 ["openBrowserLink"]
  LOADK R8 K15 ["real context"]
  SETTABLEKS R8 R7 K13 ["contextType"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 4
  MOVE R10 R7
  DUPTABLE R11 K19 [{"EnableTeamCreate", "ActivityHistoryMain"}]
  NOT R12 R3
  JUMPIFNOT R12 [+7]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 5
  NEWTABLE R14 0 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["EnableTeamCreate"]
  MOVE R12 R3
  JUMPIFNOT R12 [+10]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K20 [{"plugin"}]
  GETTABLEKS R15 R0 K0 ["plugin"]
  SETTABLEKS R15 R14 K0 ["plugin"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["ActivityHistoryMain"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Clients"]
  GETTABLEKS R3 R4 K9 ["ActivityHistoryClient"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Clients"]
  GETTABLEKS R4 R5 K10 ["MockActivityHistoryClient"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K11 ["Contexts"]
  GETTABLEKS R5 R6 K12 ["ActivityHistoryProvider"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["ActivityHistoryMain"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K15 ["EnableTeamCreate"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K7 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K16 ["StylingExamples"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K7 ["Src"]
  GETTABLEKS R10 R11 K17 ["Hooks"]
  GETTABLEKS R9 R10 K18 ["useCollaborators"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K7 ["Src"]
  GETTABLEKS R11 R12 K17 ["Hooks"]
  GETTABLEKS R10 R11 K19 ["usePlaceAndUniverseId"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R10 1
