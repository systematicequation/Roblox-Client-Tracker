PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["unmount"]
  GETUPVAL R2 0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["OnClose"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K1 ["OnClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["unmount"]
  GETUPVAL R2 1
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["OnClose"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K1 ["OnClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  LOADNIL R4
  NEWCLOSURE R5 P0
  CAPTURE REF R4
  CAPTURE UPVAL U0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["RunTests"]
  CALL R6 0 1
  GETUPVAL R7 2
  MOVE R8 R6
  CALL R7 1 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K1 ["provide"]
  NEWTABLE R9 0 3
  MOVE R10 R1
  MOVE R11 R7
  MOVE R12 R0
  SETLIST R9 R10 3 [1]
  NEWTABLE R10 0 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  MOVE R12 R2
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K3 ["Dictionary"]
  GETTABLEKS R13 R14 K4 ["join"]
  MOVE R14 R3
  DUPTABLE R15 K6 [{"OnClose"}]
  NEWCLOSURE R16 P1
  CAPTURE VAL R3
  CAPTURE REF R4
  CAPTURE UPVAL U0
  SETTABLEKS R16 R15 K5 ["OnClose"]
  CALL R13 2 -1
  CALL R11 -1 -1
  SETLIST R10 R11 4294967295 [1]
  CALL R8 2 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["mount"]
  MOVE R10 R8
  CALL R9 1 1
  MOVE R4 R9
  CLOSEUPVALS R4
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Resources"]
  GETTABLEKS R6 R7 K12 ["MakeTheme"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["DebugFlags"]
  CALL R6 1 1
  DUPCLOSURE R7 K15 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R7 1
