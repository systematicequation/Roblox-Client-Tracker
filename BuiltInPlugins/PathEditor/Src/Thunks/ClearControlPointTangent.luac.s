PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["PathReducer"]
  GETTABLEKS R2 R1 K2 ["SelectedControlPointIndex"]
  LOADN R3 0
  JUMPIFLE R2 R3 [+8]
  GETTABLEKS R2 R1 K2 ["SelectedControlPointIndex"]
  GETTABLEKS R4 R1 K3 ["ControlPoints"]
  LENGTH R3 R4
  JUMPIFNOTLT R3 R2 [+2]
  RETURN R1 1
  GETTABLEKS R2 R1 K2 ["SelectedControlPointIndex"]
  GETTABLEKS R3 R1 K3 ["ControlPoints"]
  GETUPVAL R4 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLE R6 R3 R2
  GETTABLE R5 R6 R4
  GETIMPORT R6 K6 [Vector2.zero]
  JUMPIFNOTEQ R5 R6 [+2]
  RETURN R1 1
  GETUPVAL R7 2
  CALL R7 0 -1
  NAMECALL R5 R0 K7 ["dispatch"]
  CALL R5 -1 0
  GETTABLE R5 R3 R2
  GETIMPORT R6 K6 [Vector2.zero]
  SETTABLE R6 R5 R4
  GETTABLEKS R5 R1 K8 ["SelectedObject"]
  MOVE R7 R3
  NAMECALL R5 R5 K9 ["SetControlPoints"]
  CALL R5 2 0
  GETTABLEKS R5 R1 K2 ["SelectedControlPointIndex"]
  JUMPIFNOTEQ R2 R5 [+12]
  GETUPVAL R5 1
  GETTABLEKS R6 R1 K10 ["SelectedTangentSide"]
  JUMPIFNOTEQ R5 R6 [+7]
  GETUPVAL R7 3
  LOADNIL R8
  CALL R7 1 -1
  NAMECALL R5 R0 K7 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
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
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K7 ["Thunks"]
  GETTABLEKS R3 R4 K8 ["AddWaypoint"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K9 ["Actions"]
  GETTABLEKS R4 R5 K10 ["SelectTangentSide"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["getTangentNameForSide"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R5 1
