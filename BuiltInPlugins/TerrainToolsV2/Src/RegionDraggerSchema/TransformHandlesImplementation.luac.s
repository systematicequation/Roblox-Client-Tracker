PROTO_0:
  PREPVARARGS 1
  DUPTABLE R2 K1 [{"_draggerContext"}]
  SETTABLEKS R0 R2 K0 ["_draggerContext"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  LENGTH R5 R1
  JUMPIFEQKN R5 K0 [1] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["Expected selection to have length 1"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEN R3 R1 1
  GETTABLEKS R5 R3 K4 ["Region"]
  GETTABLEKS R4 R5 K5 ["transform"]
  SETTABLEKS R4 R0 K6 ["_transform"]
  GETTABLEKS R5 R3 K4 ["Region"]
  GETTABLEKS R4 R5 K7 ["size"]
  SETTABLEKS R4 R0 K8 ["_size"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["_transform"]
  MUL R2 R1 R3
  GETTABLEKS R4 R0 K1 ["_draggerContext"]
  GETTABLEKS R3 R4 K2 ["updateRegion"]
  MOVE R4 R2
  GETTABLEKS R5 R0 K3 ["_size"]
  CALL R3 2 0
  RETURN R1 1

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["beginDrag"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["updateDrag"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["endDrag"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["render"]
  RETURN R0 1
