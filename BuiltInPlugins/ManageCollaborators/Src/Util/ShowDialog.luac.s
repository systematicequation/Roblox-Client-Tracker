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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnButtonPressed"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["unmount"]
  GETUPVAL R3 1
  CALL R2 1 0
  GETTABLEKS R2 R1 K2 ["OnClose"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R1 K2 ["OnClose"]
  CALL R2 0 0
  RETURN R0 0

PROTO_3:
  LOADNIL R5
  NEWCLOSURE R6 P0
  CAPTURE REF R5
  CAPTURE UPVAL U0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["provide"]
  NEWTABLE R8 0 3
  MOVE R9 R1
  GETUPVAL R10 2
  CALL R10 0 1
  MOVE R11 R0
  SETLIST R8 R9 3 [1]
  NEWTABLE R9 0 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  MOVE R11 R2
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K2 ["Dictionary"]
  GETTABLEKS R12 R13 K3 ["join"]
  MOVE R13 R3
  DUPTABLE R14 K6 [{"OnClose", "OnButtonPressed"}]
  NEWCLOSURE R15 P1
  CAPTURE VAL R3
  CAPTURE REF R5
  CAPTURE UPVAL U0
  SETTABLEKS R15 R14 K4 ["OnClose"]
  NEWCLOSURE R15 P2
  CAPTURE VAL R3
  CAPTURE REF R5
  CAPTURE UPVAL U0
  SETTABLEKS R15 R14 K5 ["OnButtonPressed"]
  CALL R12 2 1
  MOVE R13 R4
  CALL R10 3 -1
  SETLIST R9 R10 4294967295 [1]
  CALL R7 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["mount"]
  MOVE R9 R7
  LOADNIL R10
  CALL R8 2 1
  MOVE R5 R8
  CLOSEUPVALS R5
  RETURN R6 1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Resources"]
  GETTABLEKS R4 R5 K10 ["MakeTheme"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Cryo"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K12 ["ContextServices"]
  DUPCLOSURE R6 K13 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R6 1
