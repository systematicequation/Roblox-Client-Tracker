PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["removeAllMaterials"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 0
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Controllers"]
  GETTABLEKS R3 R4 K10 ["MaterialsController"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
