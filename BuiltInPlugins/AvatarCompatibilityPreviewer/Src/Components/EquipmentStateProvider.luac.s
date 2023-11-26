PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createEquippedItemsSerializer"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R0 R1
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R4 1
  GETTABLE R3 R0 R4
  GETUPVAL R5 0
  GETTABLE R4 R0 R5
  SETTABLE R3 R0 R1
  SETTABLE R4 R0 R2
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  LOADNIL R1
  LOADNIL R2
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMP [+1]
  LOADNIL R3
  GETUPVAL R5 2
  JUMPIFNOT R5 [+13]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["useMemo"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R5 5
  JUMPIFNOT R5 [+17]
  GETUPVAL R5 6
  GETTABLEKS R6 R0 K1 ["root"]
  LOADK R7 K2 ["equippedItems"]
  NEWTABLE R8 0 0
  GETUPVAL R10 2
  JUMPIFNOT R10 [+2]
  MOVE R9 R4
  JUMP [+3]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["equippedItems_DEPRECATED"]
  CALL R5 4 2
  MOVE R1 R5
  MOVE R2 R6
  JUMP [+22]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["useState"]
  NEWTABLE R6 0 0
  CALL R5 1 2
  MOVE R1 R5
  MOVE R2 R6
  GETUPVAL R5 7
  GETTABLEKS R6 R0 K1 ["root"]
  LOADK R7 K2 ["equippedItems"]
  MOVE R8 R1
  MOVE R9 R2
  GETUPVAL R11 2
  JUMPIFNOT R11 [+2]
  MOVE R10 R4
  JUMP [+3]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["equippedItems_DEPRECATED"]
  CALL R5 5 0
  GETUPVAL R5 8
  MOVE R6 R2
  CALL R5 1 1
  GETUPVAL R6 9
  MOVE R7 R2
  CALL R6 1 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["useCallback"]
  NEWCLOSURE R8 P1
  CAPTURE REF R2
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["useCallback"]
  NEWCLOSURE R9 P2
  CAPTURE REF R2
  NEWTABLE R10 0 0
  CALL R8 2 1
  GETUPVAL R9 10
  MOVE R10 R1
  CALL R9 1 1
  DUPTABLE R10 K11 [{"equippedItems", "addEquippedItem", "removeEquippedItem", "removeAllEquippedItems", "swapEquippedItemsByIndex", "avatarAssets"}]
  SETTABLEKS R1 R10 K2 ["equippedItems"]
  SETTABLEKS R5 R10 K6 ["addEquippedItem"]
  SETTABLEKS R6 R10 K7 ["removeEquippedItem"]
  SETTABLEKS R7 R10 K8 ["removeAllEquippedItems"]
  SETTABLEKS R8 R10 K9 ["swapEquippedItemsByIndex"]
  SETTABLEKS R9 R10 K10 ["avatarAssets"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R13 11
  GETTABLEKS R12 R13 K13 ["Provider"]
  DUPTABLE R13 K15 [{"value"}]
  SETTABLEKS R10 R13 K14 ["value"]
  GETTABLEKS R14 R0 K16 ["children"]
  CALL R11 3 -1
  CLOSEUPVALS R2
  RETURN R11 -1

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
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["EquipmentStateContext"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K10 ["Serializers"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K12 ["Hooks"]
  GETTABLEKS R6 R7 K13 ["useAvatarAssets"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K12 ["Hooks"]
  GETTABLEKS R7 R8 K14 ["useAddEquippedItem"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K7 ["Src"]
  GETTABLEKS R9 R10 K12 ["Hooks"]
  GETTABLEKS R8 R9 K15 ["useRemoveEquippedItem"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K7 ["Src"]
  GETTABLEKS R10 R11 K12 ["Hooks"]
  GETTABLEKS R9 R10 K16 ["useSerializedEffect"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K7 ["Src"]
  GETTABLEKS R11 R12 K12 ["Hooks"]
  GETTABLEKS R10 R11 K17 ["useSerializedState"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K7 ["Src"]
  GETTABLEKS R12 R13 K12 ["Hooks"]
  GETTABLEKS R11 R12 K18 ["useUserCatalogFolder"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K7 ["Src"]
  GETTABLEKS R13 R14 K19 ["Flags"]
  GETTABLEKS R12 R13 K20 ["getFFlagAvatarPreviewerCleanerSerializedState"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K7 ["Src"]
  GETTABLEKS R14 R15 K19 ["Flags"]
  GETTABLEKS R13 R14 K21 ["getFFlagAvatarPreviewerUGCAvatarServiceContext"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R13 0 1
  MOVE R14 R12
  CALL R14 0 1
  DUPCLOSURE R15 K22 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R15 1
