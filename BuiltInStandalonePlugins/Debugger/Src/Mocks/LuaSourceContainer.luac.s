PROTO_0:
  GETTABLEKS R1 R0 K0 ["FileName"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R2 K2 [{"ScriptGuid", "FileName"}]
  SETTABLEKS R0 R2 K0 ["ScriptGuid"]
  SETTABLEKS R1 R2 K1 ["FileName"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [setmetatable]
  CALL R3 2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  SETTABLEKS R1 R0 K2 ["GetFullName"]
  DUPCLOSURE R1 K3 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["new"]
  RETURN R0 1
