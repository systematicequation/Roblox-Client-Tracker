PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K3 ["Expected paneName to be a string, received %s"]
  FASTCALL1 TYPE R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K1 [type]
  CALL R6 1 1
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K6 [assert]
  CALL R2 -1 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["boolean"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADK R4 K8 ["Expected expandedPaneState to be a boolean, received %s"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K1 [type]
  CALL R6 1 1
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K6 [assert]
  CALL R2 -1 0
  DUPTABLE R2 K11 [{"PaneName", "ExpandedPaneState"}]
  SETTABLEKS R0 R2 K9 ["PaneName"]
  SETTABLEKS R1 R2 K10 ["ExpandedPaneState"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Util"]
  GETTABLEKS R4 R3 K10 ["Action"]
  MOVE R5 R4
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K11 ["Name"]
  DUPCLOSURE R7 K12 [PROTO_0]
  CALL R5 2 -1
  RETURN R5 -1
