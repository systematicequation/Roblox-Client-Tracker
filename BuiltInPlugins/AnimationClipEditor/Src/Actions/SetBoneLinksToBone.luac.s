PROTO_0:
  DUPTABLE R1 K1 [{"boneLinksToBone"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  LOADNIL R2
  JUMP [+1]
  MOVE R2 R0
  SETTABLEKS R2 R1 K0 ["boneLinksToBone"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K6 ["LuaFlags"]
  GETTABLEKS R2 R3 K7 ["GetFFlagBoneReferences"]
  CALL R1 1 1
  MOVE R2 R0
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K8 ["Name"]
  DUPCLOSURE R4 K9 [PROTO_0]
  CAPTURE VAL R1
  CALL R2 2 -1
  RETURN R2 -1
