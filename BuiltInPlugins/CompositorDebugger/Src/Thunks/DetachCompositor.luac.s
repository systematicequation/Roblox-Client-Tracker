PROTO_0:
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["Status"]
  GETTABLEKS R1 R2 K2 ["Actor"]
  JUMPIF R1 [+1]
  RETURN R0 0
  NAMECALL R4 R0 K0 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K3 ["DebugDataConnection"]
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K4 ["Disconnect"]
  CALL R3 1 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["FOLDERS"]
  GETTABLEKS R5 R6 K6 ["CompositorDebugger"]
  NAMECALL R3 R1 K7 ["FindFirstChild"]
  CALL R3 2 1
  NAMECALL R4 R3 K8 ["Destroy"]
  CALL R4 1 0
  GETUPVAL R6 1
  LOADNIL R7
  LOADNIL R8
  CALL R6 2 -1
  NAMECALL R4 R0 K9 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 2
  LOADNIL R7
  CALL R6 1 -1
  NAMECALL R4 R0 K9 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 3
  LOADNIL R7
  CALL R6 1 -1
  NAMECALL R4 R0 K9 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 4
  LOADNIL R7
  CALL R6 1 -1
  NAMECALL R4 R0 K9 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R6 5
  LOADNIL R7
  CALL R6 1 -1
  NAMECALL R4 R0 K9 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R0 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Actions"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["SetDebugDataEvent"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["SetPropertyOverrideEvent"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R5 R1 K10 ["SetLayerAdornmentEvent"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R1 K11 ["SetActor"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R7 R1 K12 ["SetFrameBuffer"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K4 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETIMPORT R8 K7 [require]
  GETTABLEKS R9 R7 K14 ["Constants"]
  CALL R8 1 1
  DUPCLOSURE R9 K15 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R9 1
