PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clampLineToRect"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["StartPoint"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["EndPoint"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["PlotRect"]
  CALL R0 3 1
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["plotToAbsolutePosition"]
  GETTABLEN R2 R0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["PlotRect"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["PlotAbsoluteSize"]
  CALL R1 3 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["plotToAbsolutePosition"]
  GETTABLEN R3 R0 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["PlotRect"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["PlotAbsoluteSize"]
  CALL R2 3 1
  ADD R4 R1 R2
  DIVK R3 R4 K6 [2]
  SUB R4 R2 R1
  GETTABLEKS R6 R4 K7 ["Y"]
  GETTABLEKS R7 R4 K8 ["X"]
  FASTCALL2 MATH_ATAN2 R6 R7 [+3]
  GETIMPORT R5 K11 [math.atan2]
  CALL R5 2 1
  LOADN R6 4
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K12 ["IsEndLine"]
  JUMPIFNOT R7 [+1]
  LOADN R6 2
  DUPTABLE R7 K16 [{"Position", "Rotation", "Size"}]
  GETIMPORT R8 K19 [UDim2.fromOffset]
  GETTABLEKS R9 R3 K8 ["X"]
  GETTABLEKS R10 R3 K7 ["Y"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Position"]
  FASTCALL1 MATH_DEG R5 [+3]
  MOVE R9 R5
  GETIMPORT R8 K21 [math.deg]
  CALL R8 1 1
  SETTABLEKS R8 R7 K14 ["Rotation"]
  GETIMPORT R8 K19 [UDim2.fromOffset]
  GETTABLEKS R9 R4 K22 ["Magnitude"]
  MOVE R10 R6
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["Size"]
  RETURN R7 1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWTABLE R3 0 5
  GETTABLEKS R4 R0 K0 ["StartPoint"]
  GETTABLEKS R5 R0 K1 ["EndPoint"]
  GETTABLEKS R6 R0 K2 ["PlotRect"]
  GETTABLEKS R7 R0 K3 ["PlotAbsoluteSize"]
  GETTABLEKS R8 R0 K4 ["IsEndLine"]
  SETLIST R3 R4 5 [1]
  CALL R1 2 1
  MOVE R2 R1
  JUMPIFNOT R2 [+45]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["createElement"]
  LOADK R3 K6 ["Frame"]
  NEWTABLE R4 8 0
  GETIMPORT R5 K9 [Vector2.new]
  LOADK R6 K10 [0.5]
  LOADK R7 K10 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["AnchorPoint"]
  GETTABLEKS R5 R1 K12 ["Position"]
  SETTABLEKS R5 R4 K12 ["Position"]
  GETTABLEKS R5 R1 K13 ["Rotation"]
  SETTABLEKS R5 R4 K13 ["Rotation"]
  GETTABLEKS R5 R1 K14 ["Size"]
  SETTABLEKS R5 R4 K14 ["Size"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K15 ["Tag"]
  GETUPVAL R6 3
  LOADK R7 K16 ["CurveLine"]
  GETTABLEKS R9 R0 K17 ["StartPointSelected"]
  JUMPIFNOT R9 [+2]
  LOADK R8 K18 ["SelectedStart"]
  JUMP [+1]
  LOADNIL R8
  GETTABLEKS R10 R0 K19 ["EndPointSelected"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K20 ["SelectedEnd"]
  JUMP [+1]
  LOADNIL R9
  CALL R6 3 1
  SETTABLE R6 R4 R5
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["DirectionalCurveEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useMemo"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R1 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K11 ["Styling"]
  GETTABLEKS R5 R6 K12 ["joinTags"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R0 K13 ["PlotRectUtil"]
  CALL R6 1 1
  DUPCLOSURE R7 K14 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R7 1
