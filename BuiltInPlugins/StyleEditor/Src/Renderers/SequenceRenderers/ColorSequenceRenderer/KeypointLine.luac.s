PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnHoverStart"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 4 0
  GETTABLEKS R4 R0 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  GETTABLEKS R4 R0 K3 ["Position"]
  SETTABLEKS R4 R3 K3 ["Position"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Tag"]
  LOADK R5 K5 ["ColorSequenceLine"]
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Event"]
  GETTABLEKS R4 R5 K7 ["MouseEnter"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLE R5 R3 R4
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Renderers"]
  GETTABLEKS R4 R5 K9 ["SequenceRenderers"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_1]
  CAPTURE VAL R1
  RETURN R3 1
