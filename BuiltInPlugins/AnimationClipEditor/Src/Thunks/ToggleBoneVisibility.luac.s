PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K1 ["Status"]
  GETTABLEKS R3 R4 K2 ["VisualizeBones"]
  NOT R2 R3
  GETTABLEKS R3 R1 K3 ["AnimationData"]
  GETTABLEKS R5 R1 K1 ["Status"]
  GETTABLEKS R4 R5 K4 ["RootInstance"]
  GETTABLEKS R6 R1 K1 ["Status"]
  GETTABLEKS R5 R6 K5 ["Active"]
  JUMPIFNOT R3 [+2]
  JUMPIFNOT R4 [+1]
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R8 0
  MOVE R9 R2
  CALL R8 1 -1
  NAMECALL R6 R0 K6 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+7]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["updateMicrobones"]
  MOVE R7 R4
  MOVE R8 R2
  CALL R6 2 0
  RETURN R0 0
  GETUPVAL R8 3
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["updateMicrobones"]
  MOVE R10 R4
  MOVE R11 R2
  CALL R9 2 -1
  CALL R8 -1 -1
  NAMECALL R6 R0 K6 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R0 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Actions"]
  GETTABLEKS R2 R3 K8 ["SetBoneVisualization"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Actions"]
  GETTABLEKS R3 R4 K9 ["SetBoneLinksToBone"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["RigUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["LuaFlags"]
  GETTABLEKS R5 R6 K13 ["GetFFlagBoneReferences"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1
