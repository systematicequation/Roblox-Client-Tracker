PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["JSONDecode"]
  CALL R2 2 1
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R6 R2 K2 ["data"]
  CALL R5 1 -1
  NAMECALL R3 R3 K3 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["JSONDecode"]
  CALL R2 2 1
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R6 R2 K2 ["data"]
  CALL R5 1 -1
  NAMECALL R3 R3 K3 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+17]
  GETUPVAL R1 1
  GETUPVAL R3 2
  LOADN R4 50
  NAMECALL R1 R1 K0 ["getVersionsHistory"]
  CALL R1 3 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K1 ["andThen"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R1 1
  GETUPVAL R3 2
  NAMECALL R1 R1 K0 ["getVersionsHistory"]
  CALL R1 2 1
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K1 ["andThen"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_5:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["HttpService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R0 K9 ["Core"]
  GETTABLEKS R4 R5 K10 ["Actions"]
  GETTABLEKS R3 R4 K11 ["NetworkError"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Actions"]
  GETTABLEKS R4 R5 K12 ["SetVersionHistoryData"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K13 ["Flags"]
  GETTABLEKS R5 R6 K14 ["getFFlagToolboxAddPackageVersionDescriptions"]
  CALL R4 1 1
  DUPCLOSURE R5 K15 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1
