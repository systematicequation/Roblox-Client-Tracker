PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["EnumItem"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADK R3 K3 ["Expected defaultMaterial to be a EnumItem, received %s"]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K6 [assert]
  CALL R1 -1 0
  DUPTABLE R1 K8 [{"defaultMaterial"}]
  SETTABLEKS R0 R1 K7 ["defaultMaterial"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  MOVE R1 R0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["Name"]
  DUPCLOSURE R3 K7 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1
