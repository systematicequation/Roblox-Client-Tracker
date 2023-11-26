PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADK R3 K3 ["Expected position to be a table, received %s"]
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K6 [assert]
  CALL R1 -1 0
  GETTABLEKS R2 R0 K7 ["X"]
  FASTCALL1 TONUMBER R2 [+2]
  GETIMPORT R1 K9 [tonumber]
  CALL R1 1 1
  GETTABLEKS R3 R0 K10 ["Y"]
  FASTCALL1 TONUMBER R3 [+2]
  GETIMPORT R2 K9 [tonumber]
  CALL R2 1 1
  GETTABLEKS R4 R0 K11 ["Z"]
  FASTCALL1 TONUMBER R4 [+2]
  GETIMPORT R3 K9 [tonumber]
  CALL R3 1 1
  MOVE R5 R1
  LOADK R6 K12 ["Expected position.X to be a number, received %s"]
  GETTABLEKS R9 R0 K13 ["x"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R4 K6 [assert]
  CALL R4 -1 0
  MOVE R5 R2
  LOADK R6 K14 ["Expected position.Y to be a number, received %s"]
  GETTABLEKS R9 R0 K15 ["y"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R4 K6 [assert]
  CALL R4 -1 0
  MOVE R5 R3
  LOADK R6 K16 ["Expected position.Z to be a number, received %s"]
  GETTABLEKS R9 R0 K17 ["z"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K1 [type]
  CALL R8 1 1
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R4 K6 [assert]
  CALL R4 -1 0
  DUPTABLE R4 K19 [{"position"}]
  DUPTABLE R5 K20 [{"X", "Y", "Z"}]
  SETTABLEKS R1 R5 K7 ["X"]
  SETTABLEKS R2 R5 K10 ["Y"]
  SETTABLEKS R3 R5 K11 ["Z"]
  SETTABLEKS R5 R4 K18 ["position"]
  RETURN R4 1

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
