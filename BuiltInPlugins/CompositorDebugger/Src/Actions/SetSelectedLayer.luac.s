PROTO_0:
  DUPTABLE R1 K1 [{"selectedLayer"}]
  SETTABLEKS R0 R1 K0 ["selectedLayer"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Util"]
  GETTABLEKS R3 R2 K9 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["Name"]
  DUPCLOSURE R6 K11 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
