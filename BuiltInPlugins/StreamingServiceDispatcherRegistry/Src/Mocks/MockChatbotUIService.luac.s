PROTO_0:
  NEWTABLE R0 1 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["displayContentCalls"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R4 R0 K0 ["displayContentCalls"]
  GETTABLE R3 R4 R1
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K0 ["displayContentCalls"]
  NEWTABLE R4 0 0
  SETTABLE R4 R3 R1
  GETTABLEKS R5 R0 K0 ["displayContentCalls"]
  GETTABLE R4 R5 R1
  FASTCALL2 TABLE_INSERT R4 R2 [+4]
  MOVE R5 R2
  GETIMPORT R3 K3 [table.insert]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["DisplayContent"]
  RETURN R0 1
