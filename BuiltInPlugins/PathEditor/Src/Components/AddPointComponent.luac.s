PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K1 ["SelectedObject"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K2 ["ParentAbsPos"]
  GETTABLEKS R4 R1 K3 ["ParentAbsSize"]
  GETUPVAL R5 2
  SUB R6 R0 R2
  CALL R5 1 1
  GETTABLEKS R6 R1 K4 ["AddPointSubMode"]
  JUMPIFNOTEQKS R6 K5 ["Append"] [+16]
  GETTABLEKS R6 R1 K6 ["dispatchAddControlPoint"]
  GETUPVAL R7 3
  MOVE R8 R5
  GETTABLEKS R9 R1 K7 ["ControlPoints"]
  MOVE R10 R3
  MOVE R11 R4
  CALL R7 4 1
  GETTABLEKS R10 R1 K7 ["ControlPoints"]
  LENGTH R9 R10
  ADDK R8 R9 K8 [1]
  CALL R6 2 0
  RETURN R0 0
  GETTABLEKS R6 R1 K4 ["AddPointSubMode"]
  JUMPIFNOTEQKS R6 K9 ["Prepend"] [+13]
  GETTABLEKS R6 R1 K6 ["dispatchAddControlPoint"]
  GETUPVAL R7 3
  MOVE R8 R5
  GETTABLEKS R9 R1 K7 ["ControlPoints"]
  MOVE R10 R3
  MOVE R11 R4
  CALL R7 4 1
  LOADN R8 1
  CALL R6 2 0
  RETURN R0 0
  GETUPVAL R6 4
  MOVE R7 R5
  GETTABLEKS R9 R1 K7 ["ControlPoints"]
  GETTABLEN R8 R9 1
  MOVE R9 R3
  MOVE R10 R4
  CALL R6 4 1
  GETUPVAL R7 4
  MOVE R8 R5
  GETTABLEKS R10 R1 K7 ["ControlPoints"]
  GETTABLEKS R12 R1 K7 ["ControlPoints"]
  LENGTH R11 R12
  GETTABLE R9 R10 R11
  MOVE R10 R3
  MOVE R11 R4
  CALL R7 4 1
  JUMPIFNOT R6 [+5]
  GETTABLEKS R8 R1 K10 ["dispatchSetAddPointSubMode"]
  LOADK R9 K9 ["Prepend"]
  CALL R8 1 0
  RETURN R0 0
  JUMPIFNOT R7 [+5]
  GETTABLEKS R8 R1 K10 ["dispatchSetAddPointSubMode"]
  LOADK R9 K5 ["Append"]
  CALL R8 1 0
  RETURN R0 0
  GETTABLEKS R9 R1 K7 ["ControlPoints"]
  LENGTH R8 R9
  LOADN R9 1
  JUMPIFNOTLT R9 R8 [+43]
  GETUPVAL R9 5
  JUMPIFNOT R9 [+6]
  GETUPVAL R8 6
  GETTABLEKS R9 R1 K1 ["SelectedObject"]
  SUB R10 R0 R2
  CALL R8 2 1
  JUMP [+5]
  GETUPVAL R8 6
  GETTABLEKS R9 R1 K1 ["SelectedObject"]
  MOVE R10 R0
  CALL R8 2 1
  GETTABLEN R10 R8 1
  ADDK R9 R10 K11 [2]
  GETTABLEN R10 R8 2
  GETTABLEN R11 R8 3
  JUMPIFEQKNIL R10 [+24]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K12 ["SnapToSegmentEpsilon"]
  JUMPIFNOTLT R10 R12 [+19]
  GETUPVAL R13 2
  MOVE R14 R3
  CALL R13 1 1
  GETUPVAL R14 2
  MOVE R15 R2
  CALL R14 1 1
  SUB R12 R13 R14
  GETUPVAL R14 8
  GETTABLEKS R15 R1 K1 ["SelectedObject"]
  MOVE R16 R11
  CALL R14 2 1
  ADD R13 R14 R12
  GETTABLEKS R14 R1 K6 ["dispatchAddControlPoint"]
  MOVE R15 R13
  MOVE R16 R9
  CALL R14 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"dragLocation"}]
  SETTABLEKS R0 R3 K0 ["dragLocation"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R3 R1 K4 ["ControlPoints"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+85]
  GETTABLEKS R2 R1 K5 ["SelectedObject"]
  JUMPIFEQKNIL R2 [+81]
  GETTABLEKS R2 R1 K6 ["AddPointSubMode"]
  JUMPIFNOTEQKS R2 K7 ["Unselected"] [+77]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K5 ["SelectedObject"]
  CALL R2 1 1
  GETUPVAL R3 2
  SUB R4 R0 R2
  CALL R3 1 1
  GETUPVAL R4 3
  MOVE R5 R3
  GETTABLEKS R7 R1 K4 ["ControlPoints"]
  GETTABLEN R6 R7 1
  GETTABLEKS R7 R1 K8 ["ParentAbsPos"]
  GETTABLEKS R8 R1 K9 ["ParentAbsSize"]
  CALL R4 4 1
  JUMPIFNOT R4 [+13]
  GETTABLEKS R4 R1 K10 ["dispatchSelectControlPoint"]
  LOADN R5 1
  CALL R4 1 0
  GETUPVAL R4 0
  DUPTABLE R6 K12 [{"hoveringSelectablePoint"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["hoveringSelectablePoint"]
  NAMECALL R4 R4 K2 ["setState"]
  CALL R4 2 0
  RETURN R0 0
  GETUPVAL R4 3
  MOVE R5 R3
  GETTABLEKS R7 R1 K4 ["ControlPoints"]
  GETTABLEKS R9 R1 K4 ["ControlPoints"]
  LENGTH R8 R9
  GETTABLE R6 R7 R8
  GETTABLEKS R7 R1 K8 ["ParentAbsPos"]
  GETTABLEKS R8 R1 K9 ["ParentAbsSize"]
  CALL R4 4 1
  JUMPIFNOT R4 [+15]
  GETTABLEKS R4 R1 K10 ["dispatchSelectControlPoint"]
  GETTABLEKS R6 R1 K4 ["ControlPoints"]
  LENGTH R5 R6
  CALL R4 1 0
  GETUPVAL R4 0
  DUPTABLE R6 K12 [{"hoveringSelectablePoint"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["hoveringSelectablePoint"]
  NAMECALL R4 R4 K2 ["setState"]
  CALL R4 2 0
  RETURN R0 0
  GETTABLEKS R4 R1 K13 ["SelectedControlPointIndex"]
  JUMPIFEQKN R4 K14 [0] [+13]
  GETTABLEKS R4 R1 K10 ["dispatchSelectControlPoint"]
  LOADN R5 0
  CALL R4 1 0
  GETUPVAL R4 0
  DUPTABLE R6 K12 [{"hoveringSelectablePoint"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K11 ["hoveringSelectablePoint"]
  NAMECALL R4 R4 K2 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["SelectedObject"]
  GETTABLEKS R5 R2 K2 ["AddPointSubMode"]
  JUMPIFNOTEQKS R5 K3 ["Append"] [+3]
  LOADK R4 K4 ["Right"]
  JUMP [+1]
  LOADK R4 K5 ["Left"]
  GETTABLEKS R6 R2 K6 ["ControlPoints"]
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+16]
  JUMPIFEQKNIL R3 [+14]
  GETTABLEKS R5 R2 K2 ["AddPointSubMode"]
  JUMPIFEQKS R5 K7 ["Unselected"] [+10]
  GETTABLEKS R5 R2 K8 ["dispatchSetControlPointTangent"]
  GETTABLEKS R6 R3 K9 ["SelectedControlPoint"]
  MOVE R7 R4
  MOVE R8 R1
  LOADB R9 0
  LOADB R10 0
  CALL R5 5 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R1 R0 K0 ["onDragAreaClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K1 ["onDragAreaHoverMoved"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onDragAreaDragged"]
  DUPTABLE R3 K4 [{"hoveringSelectablePoint"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["hoveringSelectablePoint"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["dispatchSetIsDraggingPoint"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchSetIsDraggingPoint"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["SelectedObject"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R1 K3 ["Path2DToolMode"]
  JUMPIFEQKS R3 K4 ["AddPoint"] [+3]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K2 ["SelectedObject"]
  CALL R3 1 1
  GETTABLEKS R6 R1 K5 ["ControlPoints"]
  LENGTH R5 R6
  JUMPIFEQKN R5 K6 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETTABLEKS R6 R1 K5 ["ControlPoints"]
  LENGTH R5 R6
  LOADN R6 2
  JUMPIFNOTLT R5 R6 [+9]
  GETTABLEKS R5 R1 K7 ["AddPointSubMode"]
  JUMPIFEQKS R5 K8 ["Append"] [+5]
  GETTABLEKS R5 R1 K9 ["dispatchSetAddPointSubMode"]
  LOADK R6 K8 ["Append"]
  CALL R5 1 0
  LOADNIL R5
  LOADNIL R6
  JUMPIF R4 [+4]
  GETTABLEKS R7 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R7 K10 ["Unselected"] [+6]
  GETIMPORT R7 K13 [UDim2.new]
  CALL R7 0 1
  MOVE R5 R7
  JUMP [+36]
  GETTABLEKS R7 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R7 K8 ["Append"] [+8]
  GETTABLEKS R7 R1 K5 ["ControlPoints"]
  GETTABLEKS R9 R1 K5 ["ControlPoints"]
  LENGTH R8 R9
  GETTABLE R6 R7 R8
  JUMP [+7]
  GETTABLEKS R7 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R7 K14 ["Prepend"] [+4]
  GETTABLEKS R7 R1 K5 ["ControlPoints"]
  GETTABLEN R6 R7 1
  JUMPIFEQKNIL R6 [+17]
  GETTABLEKS R7 R1 K2 ["SelectedObject"]
  JUMPIFEQKNIL R7 [+13]
  GETUPVAL R7 1
  GETTABLEKS R8 R6 K15 ["Position"]
  GETTABLEKS R10 R1 K2 ["SelectedObject"]
  GETTABLEKS R9 R10 K16 ["Parent"]
  CALL R7 2 1
  GETUPVAL R8 2
  MOVE R9 R3
  CALL R8 1 1
  ADD R5 R7 R8
  GETTABLEKS R8 R2 K17 ["dragLocation"]
  JUMPIFEQKNIL R8 [+6]
  GETUPVAL R7 2
  GETTABLEKS R8 R2 K17 ["dragLocation"]
  CALL R7 1 1
  JUMP [+3]
  GETIMPORT R7 K13 [UDim2.new]
  CALL R7 0 1
  GETTABLEKS R9 R1 K18 ["ToolbarHovered"]
  NOT R8 R9
  JUMPIFNOT R8 [+10]
  GETTABLEKS R9 R1 K19 ["IsDraggingPoint"]
  NOT R8 R9
  JUMPIFNOT R8 [+6]
  GETTABLEKS R9 R2 K17 ["dragLocation"]
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  MOVE R9 R8
  JUMPIFNOT R9 [+11]
  NOT R9 R4
  JUMPIFNOT R9 [+9]
  LOADB R9 0
  JUMPIFEQKNIL R6 [+7]
  GETTABLEKS R10 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R10 K10 ["Unselected"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  LOADB R10 0
  GETTABLEKS R11 R1 K7 ["AddPointSubMode"]
  JUMPIFEQKS R11 K10 ["Unselected"] [+32]
  JUMPIFNOT R8 [+30]
  GETTABLEKS R11 R1 K2 ["SelectedObject"]
  JUMPIFEQKNIL R11 [+27]
  GETUPVAL R11 1
  GETUPVAL R13 3
  GETUPVAL R14 2
  GETTABLEKS R16 R2 K17 ["dragLocation"]
  SUB R15 R16 R3
  CALL R14 1 1
  GETTABLEKS R15 R1 K5 ["ControlPoints"]
  GETTABLEKS R16 R1 K20 ["ParentAbsPos"]
  GETTABLEKS R17 R1 K21 ["ParentAbsSize"]
  CALL R13 4 1
  GETUPVAL R14 2
  MOVE R15 R3
  CALL R14 1 1
  ADD R12 R13 R14
  GETTABLEKS R14 R1 K2 ["SelectedObject"]
  GETTABLEKS R13 R14 K16 ["Parent"]
  CALL R11 2 1
  MOVE R7 R11
  LOADB R10 1
  JUMP [+58]
  GETTABLEKS R11 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R11 K10 ["Unselected"] [+55]
  JUMPIFNOT R8 [+53]
  GETTABLEKS R12 R1 K5 ["ControlPoints"]
  LENGTH R11 R12
  LOADN R12 1
  JUMPIFNOTLT R12 R11 [+48]
  GETTABLEKS R11 R1 K2 ["SelectedObject"]
  JUMPIFEQKNIL R11 [+44]
  GETUPVAL R11 0
  GETTABLEKS R13 R1 K2 ["SelectedObject"]
  GETTABLEKS R12 R13 K16 ["Parent"]
  CALL R11 1 1
  GETUPVAL R13 4
  JUMPIFNOT R13 [+8]
  GETUPVAL R12 5
  GETTABLEKS R13 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R2 K17 ["dragLocation"]
  SUB R14 R15 R11
  CALL R12 2 1
  JUMP [+6]
  GETUPVAL R12 5
  GETTABLEKS R13 R1 K2 ["SelectedObject"]
  GETTABLEKS R14 R2 K17 ["dragLocation"]
  CALL R12 2 1
  GETTABLEN R13 R12 2
  GETTABLEN R14 R12 3
  JUMPIFEQKNIL R13 [+18]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K22 ["SnapToSegmentEpsilon"]
  JUMPIFNOTLT R13 R15 [+13]
  GETUPVAL R15 7
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  MOVE R17 R14
  CALL R15 2 1
  GETUPVAL R16 2
  MOVE R17 R11
  CALL R16 1 1
  ADD R7 R15 R16
  GETTABLEKS R15 R2 K23 ["hoveringSelectablePoint"]
  NOT R10 R15
  LOADNIL R11
  JUMPIFNOT R9 [+36]
  JUMPIFEQKNIL R6 [+35]
  GETTABLEKS R12 R1 K2 ["SelectedObject"]
  JUMPIFEQKNIL R12 [+31]
  GETTABLEKS R13 R1 K7 ["AddPointSubMode"]
  JUMPIFNOTEQKS R13 K8 ["Append"] [+4]
  GETTABLEKS R12 R6 K24 ["RightTangent"]
  JUMP [+2]
  GETTABLEKS R12 R6 K25 ["LeftTangent"]
  GETUPVAL R13 1
  MOVE R14 R12
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K16 ["Parent"]
  CALL R13 2 1
  MOVE R12 R13
  NEWTABLE R13 0 2
  GETUPVAL R14 8
  MOVE R15 R5
  MOVE R16 R12
  MOVE R17 R12
  CALL R14 3 1
  GETUPVAL R15 8
  MOVE R16 R7
  CALL R15 1 -1
  SETLIST R13 R14 -1 [1]
  MOVE R11 R13
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K26 ["createElement"]
  LOADK R13 K27 ["ScreenGui"]
  DUPTABLE R14 K30 [{"DisplayOrder", "ZIndexBehavior"}]
  LOADN R15 3
  SETTABLEKS R15 R14 K28 ["DisplayOrder"]
  GETIMPORT R15 K33 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R15 R14 K29 ["ZIndexBehavior"]
  NEWTABLE R15 0 1
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K26 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K42 [{"Style", "Size", "FollowCursorOnDrag", "OnSelected", "OnDragStart", "OnDragMoved", "OnDragEnd", "OnHoverMoved"}]
  LOADK R19 K4 ["AddPoint"]
  SETTABLEKS R19 R18 K34 ["Style"]
  GETIMPORT R19 K44 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K35 ["Size"]
  LOADB R19 0
  SETTABLEKS R19 R18 K36 ["FollowCursorOnDrag"]
  GETTABLEKS R19 R0 K45 ["onDragAreaClicked"]
  SETTABLEKS R19 R18 K37 ["OnSelected"]
  NEWCLOSURE R19 P0
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K38 ["OnDragStart"]
  GETTABLEKS R19 R0 K46 ["onDragAreaDragged"]
  SETTABLEKS R19 R18 K39 ["OnDragMoved"]
  NEWCLOSURE R19 P1
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K40 ["OnDragEnd"]
  GETTABLEKS R19 R0 K47 ["onDragAreaHoverMoved"]
  SETTABLEKS R19 R18 K41 ["OnHoverMoved"]
  DUPTABLE R19 K50 [{"Line", "ControlPoint"}]
  JUMPIFNOT R9 [+34]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K26 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K53 [{"Color", "Style", "Thickness", "ControlPoints"}]
  GETTABLEKS R24 R1 K2 ["SelectedObject"]
  JUMPIFNOT R24 [+5]
  GETTABLEKS R24 R1 K2 ["SelectedObject"]
  GETTABLEKS R23 R24 K51 ["Color"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K51 ["Color"]
  LOADK R23 K54 ["Tangent"]
  SETTABLEKS R23 R22 K34 ["Style"]
  GETTABLEKS R24 R1 K2 ["SelectedObject"]
  JUMPIFNOT R24 [+5]
  GETTABLEKS R24 R1 K2 ["SelectedObject"]
  GETTABLEKS R23 R24 K52 ["Thickness"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K52 ["Thickness"]
  SETTABLEKS R11 R22 K5 ["ControlPoints"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K48 ["Line"]
  JUMPIFNOT R10 [+15]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K26 ["createElement"]
  GETUPVAL R21 12
  DUPTABLE R22 K56 [{"Style", "Position", "ZIndex"}]
  LOADK R23 K49 ["ControlPoint"]
  SETTABLEKS R23 R22 K34 ["Style"]
  SETTABLEKS R7 R22 K15 ["Position"]
  LOADN R23 1
  SETTABLEKS R23 R22 K55 ["ZIndex"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K49 ["ControlPoint"]
  CALL R16 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  RETURN R12 -1

PROTO_7:
  DUPTABLE R2 K9 [{"Refreshed", "SelectedObject", "ParentAbsPos", "ParentAbsSize", "Path2DToolMode", "ControlPoints", "ToolbarHovered", "IsDraggingPoint", "AddPointSubMode"}]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["Refreshed"]
  SETTABLEKS R3 R2 K0 ["Refreshed"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K1 ["SelectedObject"]
  SETTABLEKS R3 R2 K1 ["SelectedObject"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K2 ["ParentAbsPos"]
  SETTABLEKS R3 R2 K2 ["ParentAbsPos"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K3 ["ParentAbsSize"]
  SETTABLEKS R3 R2 K3 ["ParentAbsSize"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K4 ["Path2DToolMode"]
  SETTABLEKS R3 R2 K4 ["Path2DToolMode"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K5 ["ControlPoints"]
  SETTABLEKS R3 R2 K5 ["ControlPoints"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K6 ["ToolbarHovered"]
  SETTABLEKS R3 R2 K6 ["ToolbarHovered"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K7 ["IsDraggingPoint"]
  SETTABLEKS R3 R2 K7 ["IsDraggingPoint"]
  GETTABLEKS R4 R0 K10 ["PathReducer"]
  GETTABLEKS R3 R4 K8 ["AddPointSubMode"]
  SETTABLEKS R3 R2 K8 ["AddPointSubMode"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R5 0
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K5 [{"dispatchAddControlPoint", "dispatchSelectControlPoint", "dispatchSetControlPointTangent", "dispatchSetIsDraggingPoint", "dispatchSetAddPointSubMode"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchAddControlPoint"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchSelectControlPoint"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchSetControlPointTangent"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["dispatchSetIsDraggingPoint"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["dispatchSetAddPointSubMode"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K12 ["SetIsDraggingPoint"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K13 ["SetAddPointSubMode"]
  CALL R7 1 1
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K14 ["Thunks"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R8 K15 ["AddControlPoint"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R8 K16 ["SetControlPointTangent"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R8 K17 ["SelectControlPoint"]
  CALL R11 1 1
  GETTABLEKS R13 R0 K5 ["Src"]
  GETTABLEKS R12 R13 K18 ["Components"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R12 K19 ["DraggablePoint"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R12 K20 ["Line"]
  CALL R14 1 1
  GETTABLEKS R15 R4 K21 ["UI"]
  GETTABLEKS R16 R15 K22 ["Image"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K5 ["Src"]
  GETTABLEKS R19 R20 K23 ["Resources"]
  GETTABLEKS R18 R19 K24 ["Constants"]
  CALL R17 1 1
  GETTABLEKS R19 R0 K5 ["Src"]
  GETTABLEKS R18 R19 K25 ["Util"]
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R18 K26 ["getAbsolutePosition"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R18 K27 ["makeNewPath2DControlPoint"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R18 K28 ["getSnapToControlPoint"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R18 K29 ["getUDim2FromVector2"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R18 K30 ["getUDim2OffsetFromScale"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R18 K31 ["getPositionMatchesControlPoint"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R18 K32 ["getPosOnCurveOffset"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R18 K33 ["getClosestControlPointToPosition"]
  CALL R26 1 1
  GETIMPORT R27 K35 [game]
  LOADK R29 K36 ["PathEditorInsertPointSnappingFix"]
  LOADB R30 0
  NAMECALL R27 R27 K37 ["defineFastFlag"]
  CALL R27 3 1
  GETTABLEKS R28 R2 K38 ["Component"]
  LOADK R30 K39 ["AddPointComponent"]
  NAMECALL R28 R28 K40 ["extend"]
  CALL R28 2 1
  DUPCLOSURE R29 K41 [PROTO_3]
  CAPTURE VAL R19
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE VAL R27
  CAPTURE VAL R26
  CAPTURE VAL R17
  CAPTURE VAL R25
  SETTABLEKS R29 R28 K42 ["init"]
  DUPCLOSURE R29 K43 [PROTO_6]
  CAPTURE VAL R19
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R27
  CAPTURE VAL R26
  CAPTURE VAL R17
  CAPTURE VAL R25
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R16
  SETTABLEKS R29 R28 K44 ["render"]
  GETTABLEKS R29 R3 K45 ["connect"]
  DUPCLOSURE R30 K46 [PROTO_7]
  DUPCLOSURE R31 K47 [PROTO_13]
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R7
  CALL R29 2 1
  MOVE R30 R28
  CALL R29 1 -1
  RETURN R29 -1
