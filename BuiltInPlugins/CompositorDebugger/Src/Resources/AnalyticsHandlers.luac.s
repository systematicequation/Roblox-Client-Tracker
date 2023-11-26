PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  DUPTABLE R4 K5 [{"studioSid", "clientId", "placeId", "userId"}]
  GETUPVAL R5 1
  NAMECALL R5 R5 K6 ["GetSessionId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K1 ["studioSid"]
  GETUPVAL R5 1
  NAMECALL R5 R5 K7 ["GetClientId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K2 ["clientId"]
  GETIMPORT R6 K9 [game]
  GETTABLEKS R5 R6 K10 ["PlaceId"]
  SETTABLEKS R5 R4 K3 ["placeId"]
  GETUPVAL R5 2
  NAMECALL R5 R5 K11 ["GetUserId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["userId"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K12 ["ShowAnalytics"]
  JUMPIFNOT R2 [+29]
  GETIMPORT R2 K14 [print]
  LOADK R3 K15 ["**"]
  MOVE R4 R0
  LOADK R5 K15 ["**"]
  CALL R2 3 0
  JUMPIFNOT R1 [+13]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETIMPORT R7 K14 [print]
  LOADK R8 K16 ["* "]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 0
  FORGLOOP R2 2 [-7]
  JUMP [+4]
  GETIMPORT R2 K14 [print]
  LOADK R3 K17 ["* no arguments"]
  CALL R2 1 0
  GETIMPORT R2 K14 [print]
  LOADK R3 K15 ["**"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 4
  CALL R2 0 1
  JUMPIFNOT R2 [+8]
  GETUPVAL R2 1
  LOADK R4 K18 ["studio"]
  LOADK R5 K19 ["compositor"]
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R2 R2 K20 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"timeSinceOpened"}]
  SETTABLEKS R1 R4 K0 ["timeSinceOpened"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  DUPTABLE R2 K2 [{"onCompositorOpened", "onCompositorClosed"}]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K0 ["onCompositorOpened"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K1 ["onCompositorClosed"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["CompositorDebugger"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["Dash"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K13 ["Src"]
  GETTABLEKS R5 R6 K14 ["Types"]
  CALL R4 1 1
  GETTABLEKS R6 R1 K13 ["Src"]
  GETTABLEKS R5 R6 K15 ["Util"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R5 K16 ["debugFlags"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R1 K17 ["LuaFlags"]
  GETTABLEKS R8 R9 K18 ["GetFFlagAnalyticsReports"]
  CALL R7 1 1
  DUPCLOSURE R8 K19 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1
