PROTO_0:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R2 0
  DUPTABLE R3 K3 [{"studioSid", "clientId", "placeId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K4 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K5 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["clientId"]
  GETIMPORT R5 K7 [game]
  GETTABLEKS R4 R5 K8 ["PlaceId"]
  SETTABLEKS R4 R3 K2 ["placeId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+14]
  GETIMPORT R3 K11 [print]
  LOADK R4 K12 ["%s SendEvent eventName=%s args=%s"]
  LOADK R6 K13 ["MaterialPicker"]
  MOVE R7 R0
  GETUPVAL R8 3
  MOVE R10 R2
  NAMECALL R8 R8 K14 ["JSONEncode"]
  CALL R8 2 -1
  NAMECALL R4 R4 K15 ["format"]
  CALL R4 -1 -1
  CALL R3 -1 0
  GETUPVAL R3 1
  LOADK R5 K16 ["studio"]
  LOADK R6 K13 ["MaterialPicker"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K17 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWTABLE R2 0 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["DebugFlags"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K14 ["join"]
  DUPCLOSURE R5 K15 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R0
  RETURN R5 1
