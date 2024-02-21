PROTO_0:
  LOADNIL R2
  LOADNIL R3
  LOADN R4 0
  GETUPVAL R8 0
  GETTABLEKS R5 R8 K0 ["equippedItems"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R10 1
  MOVE R11 R9
  CALL R10 1 1
  JUMPIFNOT R10 [+12]
  ADDK R4 R4 K1 [1]
  JUMPIFNOTEQ R4 R0 [+3]
  MOVE R2 R8
  JUMP [+3]
  JUMPIFNOTEQ R4 R1 [+2]
  MOVE R3 R8
  JUMPIFEQKNIL R2 [+3]
  JUMPIFNOTEQKNIL R3 [+3]
  FORGLOOP R5 2 [-17]
  JUMPIFEQKNIL R2 [+3]
  JUMPIFNOTEQKNIL R3 [+72]
  NEWTABLE R5 0 4
  LOADK R6 K2 ["Couldn't resolve true indices of layered clothing"]
  LOADK R8 K3 ["Swapping %* with %*"]
  MOVE R10 R0
  MOVE R11 R1
  NAMECALL R8 R8 K4 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  LOADK R9 K5 ["trueLayeredClothingIndex = %*"]
  MOVE R11 R2
  NAMECALL R9 R9 K4 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  LOADK R10 K6 ["#equipmentState.equippedItems = %*"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["equippedItems"]
  LENGTH R12 R13
  NAMECALL R10 R10 K4 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  SETLIST R5 R6 4 [1]
  GETUPVAL R9 0
  GETTABLEKS R6 R9 K0 ["equippedItems"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  LOADK R14 K7 ["	%*. %* (Layered clothing = %*)"]
  MOVE R16 R9
  GETTABLEKS R18 R10 K8 ["palette"]
  GETTABLEKS R17 R18 K9 ["Key"]
  GETIMPORT R19 K12 [table.find]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K13 ["clothing"]
  GETTABLEKS R21 R10 K8 ["palette"]
  CALL R19 2 1
  JUMPIFNOTEQKNIL R19 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  NAMECALL R14 R14 K4 ["format"]
  CALL R14 4 1
  MOVE R13 R14
  FASTCALL2 TABLE_INSERT R5 R13 [+4]
  MOVE R12 R5
  GETIMPORT R11 K15 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-29]
  GETIMPORT R6 K17 [error]
  GETIMPORT R7 K19 [table.concat]
  MOVE R8 R5
  LOADK R9 K20 ["
"]
  CALL R7 2 -1
  CALL R6 -1 0
  GETUPVAL R5 3
  CALL R5 0 1
  JUMPIFNOT R5 [+7]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K21 ["moveEquippedItemsToIndex"]
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K22 ["DEPRECATED_swapEquippedItemsByIndex"]
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useContext"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K2 ["equippedItems"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["CatalogItems"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["EquipmentStateContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K13 ["isLayeredClothing"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K14 ["Flags"]
  GETTABLEKS R6 R7 K15 ["getFFlagAvatarPreviewerNewDraggableTileList"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R6 1
