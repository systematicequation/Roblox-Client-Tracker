PROTO_0:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K3 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["table"] [+33]
  GETTABLE R8 R1 R6
  JUMPIFNOT R8 [+23]
  GETTABLE R9 R1 R6
  FASTCALL1 TYPEOF R9 [+2]
  GETIMPORT R8 K3 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["table"] [+17]
  GETUPVAL R9 0
  GETTABLE R8 R9 R6
  JUMPIFNOT R8 [+7]
  GETUPVAL R8 1
  GETTABLE R9 R1 R6
  NEWTABLE R10 0 0
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+14]
  GETUPVAL R8 1
  MOVE R9 R7
  GETTABLE R10 R1 R6
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+8]
  GETUPVAL R8 1
  MOVE R9 R7
  NEWTABLE R10 0 0
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+1]
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-41]
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K3 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["table"] [+10]
  GETTABLE R8 R0 R6
  JUMPIF R8 [+8]
  GETUPVAL R8 1
  MOVE R9 R7
  NEWTABLE R10 0 0
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+1]
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-18]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["BuildSettings"]
  NEWTABLE R3 1 0
  GETTABLEKS R4 R2 K9 ["Material"]
  LOADB R5 1
  SETTABLE R5 R3 R4
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R4 1
