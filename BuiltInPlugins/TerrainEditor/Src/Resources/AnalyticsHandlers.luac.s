PROTO_0:
  ORK R1 R1 K0 [1]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["LogAnalytics"]
  CALL R2 0 1
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K3 [print]
  LOADK R4 K4 ["Terrain ReportCounter counterName=%* count=%*"]
  MOVE R6 R0
  MOVE R7 R1
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  CALL R2 1 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K6 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  LOADK R3 K0 ["TerrainToolsRegion"]
  MOVE R4 R1
  CONCAT R2 R3 R4
  LOADNIL R3
  ORK R3 R3 K1 [1]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["LogAnalytics"]
  CALL R4 0 1
  JUMPIFNOT R4 [+10]
  GETIMPORT R4 K4 [print]
  LOADK R6 K5 ["Terrain ReportCounter counterName=%* count=%*"]
  MOVE R8 R2
  MOVE R9 R3
  NAMECALL R6 R6 K6 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  CALL R4 1 0
  GETUPVAL R4 1
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R4 K7 ["ReportCounter"]
  CALL R4 3 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  DUPTABLE R2 K1 [{"regionAction"}]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K0 ["regionAction"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_2]
  CAPTURE VAL R1
  RETURN R2 1
