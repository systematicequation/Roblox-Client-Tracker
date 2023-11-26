PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETUPVAL R4 0
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R0 K1 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["PLAY_STATE"]
  GETTABLEKS R5 R6 K3 ["Pause"]
  CALL R4 1 -1
  NAMECALL R2 R0 K1 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R1 K4 ["AnimationData"]
  GETTABLEKS R4 R1 K5 ["Status"]
  GETTABLEKS R3 R4 K6 ["RootInstance"]
  GETUPVAL R4 3
  LOADB R6 1
  NAMECALL R4 R4 K7 ["SetEnabled"]
  CALL R4 2 0
  JUMPIFNOT R2 [+1]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R4 R2 K8 ["Instances"]
  JUMPIFNOT R4 [+21]
  GETIMPORT R5 K10 [pairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEKS R10 R9 K11 ["Type"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K12 ["INSTANCE_TYPES"]
  GETTABLEKS R11 R12 K13 ["Rig"]
  JUMPIFNOTEQ R10 R11 [+6]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K14 ["clearPose"]
  MOVE R11 R3
  CALL R10 1 0
  FORGLOOP R5 2 [-15]
  GETTABLEKS R5 R2 K15 ["Metadata"]
  JUMPIFNOT R5 [+35]
  GETTABLEKS R5 R2 K8 ["Instances"]
  JUMPIFNOT R5 [+32]
  GETTABLEKS R6 R2 K8 ["Instances"]
  GETTABLEKS R5 R6 K16 ["Root"]
  JUMPIFNOT R5 [+27]
  GETTABLEKS R7 R2 K8 ["Instances"]
  GETTABLEKS R6 R7 K16 ["Root"]
  GETTABLEKS R5 R6 K11 ["Type"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K12 ["INSTANCE_TYPES"]
  GETTABLEKS R6 R7 K13 ["Rig"]
  JUMPIFNOTEQ R5 R6 [+15]
  GETTABLEKS R6 R1 K5 ["Status"]
  GETTABLEKS R5 R6 K17 ["IsDirty"]
  JUMPIFNOT R5 [+9]
  GETUPVAL R7 5
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K18 ["DEFAULT_AUTOSAVE_NAME"]
  GETUPVAL R9 6
  CALL R7 2 -1
  NAMECALL R5 R0 K1 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K19 ["clearMicrobones"]
  CALL R5 0 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K13 ["RigUtils"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K10 ["Src"]
  GETTABLEKS R6 R7 K14 ["Actions"]
  GETTABLEKS R5 R6 K15 ["SetActive"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K10 ["Src"]
  GETTABLEKS R7 R8 K14 ["Actions"]
  GETTABLEKS R6 R7 K16 ["SetPlayState"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R10 R1 K10 ["Src"]
  GETTABLEKS R9 R10 K17 ["Thunks"]
  GETTABLEKS R8 R9 K18 ["Exporting"]
  GETTABLEKS R7 R8 K19 ["SaveAnimation"]
  CALL R6 1 1
  DUPCLOSURE R7 K20 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1
