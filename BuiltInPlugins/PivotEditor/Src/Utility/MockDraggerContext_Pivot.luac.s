PROTO_0:
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETVARARGS R1 4294967295
  CALL R0 -1 1
  DUPCLOSURE R1 K1 [PROTO_0]
  SETTABLEKS R1 R0 K2 ["shouldSnapPivotToGeometry"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Packages"]
  GETTABLEKS R1 R2 K4 ["DraggerFramework"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Implementation"]
  GETTABLEKS R3 R4 K8 ["DraggerContext_FixtureImpl"]
  CALL R2 1 1
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K9 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K10 ["new"]
  RETURN R3 1
