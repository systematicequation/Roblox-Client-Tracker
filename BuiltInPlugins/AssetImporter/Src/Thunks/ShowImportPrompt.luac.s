PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+65]
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["PickMultipleFilesWithPrompt"]
  CALL R1 1 1
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K1 [0] [+5]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R4 3
  LOADN R5 0
  CALL R4 1 -1
  NAMECALL R2 R0 K2 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 4
  LENGTH R5 R1
  CALL R4 1 -1
  NAMECALL R2 R0 K2 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 5
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K2 ["dispatch"]
  CALL R2 -1 0
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 1
  MOVE R9 R6
  NAMECALL R7 R7 K3 ["StartSessionWithPath"]
  CALL R7 2 1
  GETUPVAL R10 6
  MOVE R11 R6
  MOVE R12 R7
  CALL R10 2 -1
  NAMECALL R8 R0 K2 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R10 3
  MOVE R11 R5
  CALL R10 1 -1
  NAMECALL R8 R0 K2 ["dispatch"]
  CALL R8 -1 0
  FORGLOOP R2 2 [-19]
  GETUPVAL R4 5
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R0 K2 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 2
  JUMPIFNOT R2 [+181]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R1 7
  CALL R1 0 1
  JUMPIFNOT R1 [+76]
  GETUPVAL R1 1
  NAMECALL R1 R1 K4 ["StartSessionWithPrompt"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  NAMECALL R2 R1 K5 ["GetImportTree"]
  CALL R2 1 1
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOT R1 [+4]
  NAMECALL R3 R1 K6 ["GetFilename"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  JUMPIFNOT R1 [+41]
  JUMPIFNOT R2 [+40]
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K7 ["new"]
  DUPTABLE R5 K14 [{"assetName", "enabled", "filepath", "session", "timestamp", "validSession"}]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R6 R2 K15 ["ImportName"]
  JUMP [+1]
  MOVE R6 R3
  SETTABLEKS R6 R5 K8 ["assetName"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["enabled"]
  SETTABLEKS R3 R5 K10 ["filepath"]
  SETTABLEKS R1 R5 K11 ["session"]
  GETIMPORT R6 K18 [os.time]
  CALL R6 0 1
  SETTABLEKS R6 R5 K12 ["timestamp"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K13 ["validSession"]
  CALL R4 1 1
  GETUPVAL R7 9
  MOVE R8 R4
  GETUPVAL R9 2
  CALL R7 2 -1
  NAMECALL R5 R0 K2 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R4 2
  JUMPIFNOT R4 [+114]
  LOADB R4 0
  JUMPIFEQKNIL R2 [+5]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFEQKNIL R1 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R6 2
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 0
  RETURN R0 0
  LOADNIL R1
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R4 1
  NAMECALL R4 R4 K4 ["StartSessionWithPrompt"]
  CALL R4 1 1
  MOVE R1 R4
  JUMPIFNOT R1 [+8]
  NAMECALL R4 R1 K5 ["GetImportTree"]
  CALL R4 1 1
  MOVE R2 R4
  NAMECALL R4 R1 K6 ["GetFilename"]
  CALL R4 1 1
  MOVE R3 R4
  JUMPIFNOT R2 [+57]
  JUMPIFNOT R3 [+56]
  NAMECALL R4 R2 K19 ["GetPreview"]
  CALL R4 1 1
  NEWTABLE R5 0 0
  NAMECALL R6 R2 K20 ["GetDescendants"]
  CALL R6 1 3
  FORGPREP R6
  GETTABLEKS R11 R10 K21 ["ShouldImport"]
  SETTABLE R11 R5 R10
  FORGLOOP R6 2 [-4]
  LOADB R6 1
  SETTABLE R6 R5 R2
  GETUPVAL R8 10
  CALL R8 0 -1
  NAMECALL R6 R0 K2 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 11
  MOVE R9 R4
  CALL R8 1 -1
  NAMECALL R6 R0 K2 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 12
  MOVE R9 R2
  CALL R8 1 -1
  NAMECALL R6 R0 K2 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 13
  MOVE R9 R3
  CALL R8 1 -1
  NAMECALL R6 R0 K2 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 14
  MOVE R9 R2
  CALL R8 1 -1
  NAMECALL R6 R0 K2 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 15
  MOVE R9 R5
  CALL R8 1 -1
  NAMECALL R6 R0 K2 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 16
  CALL R8 0 -1
  NAMECALL R6 R0 K2 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R6 17
  MOVE R7 R1
  CALL R6 1 -1
  NAMECALL R4 R0 K2 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 2
  JUMPIFNOT R4 [+15]
  LOADB R4 0
  JUMPIFEQKNIL R2 [+5]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFEQKNIL R1 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R6 2
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AssetImportService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AssetImporter"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R3 R1 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Actions"]
  GETIMPORT R3 K11 [require]
  GETTABLEKS R4 R2 K12 ["ResetState"]
  CALL R3 1 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R5 R2 K13 ["SetAssetImportSession"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R6 R2 K14 ["SetFilename"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R7 R2 K15 ["SetImportTree"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R8 R2 K16 ["SetSelectedImportItem"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R9 R2 K17 ["SetProgress"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R10 R2 K18 ["SetProgressGoal"]
  CALL R9 1 1
  GETIMPORT R10 K11 [require]
  GETTABLEKS R11 R2 K19 ["SetShowProgress"]
  CALL R10 1 1
  GETTABLEKS R12 R1 K8 ["Src"]
  GETTABLEKS R11 R12 K20 ["Thunks"]
  GETIMPORT R12 K11 [require]
  GETTABLEKS R13 R11 K21 ["CreateQueuedSession"]
  CALL R12 1 1
  GETIMPORT R13 K11 [require]
  GETTABLEKS R14 R11 K22 ["LoadManagedGroups"]
  CALL R13 1 1
  GETIMPORT R14 K11 [require]
  GETTABLEKS R15 R11 K23 ["UpdateChecked"]
  CALL R14 1 1
  GETIMPORT R15 K11 [require]
  GETTABLEKS R16 R11 K24 ["UpdatePreviewInstance"]
  CALL R15 1 1
  GETIMPORT R16 K11 [require]
  GETTABLEKS R17 R11 K25 ["ShowImportPreview"]
  CALL R16 1 1
  GETIMPORT R17 K11 [require]
  GETTABLEKS R20 R1 K8 ["Src"]
  GETTABLEKS R19 R20 K26 ["DataTypes"]
  GETTABLEKS R18 R19 K27 ["QueuedSession"]
  CALL R17 1 1
  GETIMPORT R18 K11 [require]
  GETTABLEKS R21 R1 K8 ["Src"]
  GETTABLEKS R20 R21 K28 ["Flags"]
  GETTABLEKS R19 R20 K29 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R18 1 1
  GETIMPORT R19 K11 [require]
  GETTABLEKS R22 R1 K8 ["Src"]
  GETTABLEKS R21 R22 K28 ["Flags"]
  GETTABLEKS R20 R21 K30 ["getFFlagAssetImportUseQueueItem"]
  CALL R19 1 1
  DUPCLOSURE R20 K31 [PROTO_1]
  CAPTURE VAL R18
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R4
  RETURN R20 1
