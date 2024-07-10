PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  LOADK R4 K0 ["dataSharingDefault"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["FINISHED"]
  CALL R3 2 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R3 1
  LOADK R4 K3 ["dataSharingEnabled"]
  MOVE R5 R0
  CALL R3 2 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  JUMPIF R1 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["reject"]
  CALL R2 0 -1
  RETURN R2 -1
  GETIMPORT R3 K2 [game]
  GETTABLEKS R2 R3 K3 ["GameId"]
  JUMPIFNOTEQKN R2 K4 [0] [+23]
  GETTABLEN R3 R0 1
  GETTABLEKS R2 R3 K5 ["isOptOut"]
  GETUPVAL R3 1
  GETUPVAL R5 2
  LOADK R6 K6 ["dataSharingDefault"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K7 ["FINISHED"]
  CALL R5 2 -1
  NAMECALL R3 R3 K8 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 1
  GETUPVAL R5 2
  LOADK R6 K9 ["dataSharingEnabled"]
  NOT R7 R2
  CALL R5 2 -1
  NAMECALL R3 R3 K8 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R2 4
  GETIMPORT R4 K2 [game]
  GETTABLEKS R3 R4 K3 ["GameId"]
  CALL R2 1 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K10 ["andThen"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  LOADK R4 K0 ["dataSharingDefault"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["ERROR"]
  CALL R3 2 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  CALL R2 0 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 -1 0
  GETUPVAL R3 1
  LOADK R4 K2 ["dataSharingDefault"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["LOADING"]
  CALL R3 2 -1
  NAMECALL R1 R0 K4 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 1
  LOADK R4 K5 ["dataSharingEnabled"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K6 ["None"]
  CALL R3 2 -1
  NAMECALL R1 R0 K4 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 4
  DUPTABLE R4 K7 [{"dataSharingDefault"}]
  LOADK R5 K8 ["Loading"]
  SETTABLEKS R5 R4 K2 ["dataSharingDefault"]
  CALL R3 1 -1
  NAMECALL R1 R0 K4 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 5
  CALL R1 0 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  NAMECALL R1 R1 K9 ["andThen"]
  CALL R1 2 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K10 ["catch"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  DUPCLOSURE R0 K0 [PROTO_3]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["AddChange"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Actions"]
  GETTABLEKS R3 R4 K8 ["AddErrors"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K9 ["Flags"]
  GETTABLEKS R4 R5 K10 ["getFFlagCAP1107"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K11 ["Network"]
  GETTABLEKS R6 R7 K12 ["Requests"]
  GETTABLEKS R5 R6 K13 ["ApiFetchUniverseOptOut"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K11 ["Network"]
  GETTABLEKS R7 R8 K12 ["Requests"]
  GETTABLEKS R6 R7 K14 ["ApiFetchDataSharingEnabledForUniverse"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K15 ["Types"]
  GETTABLEKS R7 R8 K16 ["DataSharingFetchState"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K17 ["Packages"]
  GETTABLEKS R8 R9 K18 ["Cryo"]
  CALL R7 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K17 ["Packages"]
  GETTABLEKS R11 R12 K19 ["Framework"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K20 ["Util"]
  GETTABLEKS R8 R9 K21 ["Promise"]
  DUPCLOSURE R9 K22 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  RETURN R9 1
