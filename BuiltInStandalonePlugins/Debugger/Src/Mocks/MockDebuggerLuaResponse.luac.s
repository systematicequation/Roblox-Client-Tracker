PROTO_0:
  NEWTABLE R2 2 0
  SETTABLEKS R0 R2 K0 ["arg"]
  SETTABLEKS R1 R2 K1 ["Status"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K3 [setmetatable]
  CALL R3 2 0
  RETURN R2 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["arg"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["GetArg"]
  RETURN R0 1
