PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["PathReducer"]
  GETUPVAL R2 0
  LOADN R3 0
  JUMPIFLE R2 R3 [+7]
  GETUPVAL R2 0
  GETTABLEKS R4 R1 K2 ["ControlPoints"]
  LENGTH R3 R4
  JUMPIFNOTLT R3 R2 [+2]
  RETURN R1 1
  GETTABLEKS R2 R1 K2 ["ControlPoints"]
  GETTABLEKS R3 R1 K3 ["ScalePositionMode"]
  JUMPIFNOT R3 [+8]
  GETUPVAL R3 2
  GETUPVAL R4 1
  GETTABLEKS R6 R1 K4 ["SelectedObject"]
  GETTABLEKS R5 R6 K5 ["Parent"]
  CALL R3 2 1
  SETUPVAL R3 1
  GETUPVAL R4 0
  GETTABLE R3 R2 R4
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K6 ["Position"]
  GETTABLEKS R3 R1 K4 ["SelectedObject"]
  MOVE R5 R2
  NAMECALL R3 R3 K7 ["SetControlPoints"]
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE REF R1
  CAPTURE UPVAL U0
  CLOSEUPVALS R1
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
  GETTABLEKS R2 R3 K7 ["getUDim2ScaleFromOffset"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_1]
  CAPTURE VAL R1
  RETURN R2 1
