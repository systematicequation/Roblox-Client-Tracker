PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["data"]
  GETTABLEKS R3 R4 K1 ["className"]
  NAMECALL R1 R0 K2 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+43]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+20]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["data"]
  GETTABLEKS R1 R2 K3 ["properties"]
  JUMPIFNOT R1 [+14]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["data"]
  GETTABLEKS R1 R4 K3 ["properties"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLE R6 R0 R4
  JUMPIFEQ R6 R5 [+2]
  RETURN R0 0
  FORGLOOP R1 2 [-5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["data"]
  GETTABLEKS R1 R2 K4 ["instanceId"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["tutorial"]
  GETTABLEKS R1 R2 K6 ["instances"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["data"]
  GETTABLEKS R2 R3 K4 ["instanceId"]
  SETTABLE R0 R1 R2
  GETUPVAL R1 0
  NAMECALL R1 R1 K7 ["complete"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["tutorial"]
  GETTABLEKS R1 R2 K1 ["dataModel"]
  LOADK R4 K2 ["Workspace"]
  NAMECALL R2 R1 K3 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K4 ["ChildAdded"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K6 ["connection"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["connection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TutorialStep"]
  CALL R0 1 1
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["TutorialsDraggerSteps"]
  NAMECALL R1 R1 K9 ["GetFastFlag"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K10 ["extend"]
  LOADK R3 K11 ["Insert"]
  CALL R2 1 1
  LOADB R3 1
  SETTABLEKS R3 R2 K12 ["showComplete"]
  DUPCLOSURE R3 K13 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K14 ["bind"]
  DUPCLOSURE R3 K15 [PROTO_2]
  SETTABLEKS R3 R2 K16 ["unbind"]
  RETURN R2 1
