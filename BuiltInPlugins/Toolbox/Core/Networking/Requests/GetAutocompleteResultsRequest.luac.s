PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIFNOT R1 [+38]
  GETTABLEKS R2 R1 K1 ["Data"]
  JUMPIFNOT R2 [+35]
  GETUPVAL R2 0
  GETTABLEKS R4 R1 K2 ["Args"]
  GETTABLEKS R3 R4 K3 ["Prefix"]
  JUMPIFNOTEQ R2 R3 [+29]
  NEWTABLE R2 0 0
  GETIMPORT R3 K5 [pairs]
  GETTABLEKS R4 R1 K1 ["Data"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R12 R1 K1 ["Data"]
  GETTABLE R11 R12 R6
  GETTABLEKS R10 R11 K6 ["Query"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K9 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-12]
  GETUPVAL R3 1
  GETUPVAL R5 2
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K10 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Toolbox: Could not fetch autocomplete results"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOTEQKS R1 K0 [""] [+9]
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  CALL R3 1 -1
  NAMECALL R1 R0 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETUPVAL R4 0
  GETUPVAL R5 4
  NAMECALL R1 R1 K2 ["getAutocompleteResults"]
  CALL R1 4 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  NAMECALL R2 R1 K3 ["andThen"]
  CALL R2 3 -1
  RETURN R2 -1
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Actions"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["NetworkError"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K3 ["Core"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["DebugFlags"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K10 ["SetAutocompleteResults"]
  CALL R4 1 1
  DUPCLOSURE R5 K11 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1
