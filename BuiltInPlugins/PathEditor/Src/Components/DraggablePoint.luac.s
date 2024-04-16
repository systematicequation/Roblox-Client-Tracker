PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  RETURN R0 0

PROTO_7:
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["state"]
  GETTABLEKS R2 R1 K2 ["isDragging"]
  JUMPIF R2 [+3]
  GETTABLEKS R2 R1 K3 ["isDragStarting"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  DUPTABLE R4 K5 [{"isHovered"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["isHovered"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K7 ["OnHover"]
  CALL R2 0 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["state"]
  GETTABLEKS R2 R1 K2 ["isDragging"]
  JUMPIF R2 [+3]
  GETTABLEKS R2 R1 K3 ["isDragStarting"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  DUPTABLE R4 K5 [{"isHovered"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K4 ["isHovered"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K7 ["OnHoverEnd"]
  CALL R2 0 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R5 R3 K2 ["isDragging"]
  JUMPIFNOT R5 [+6]
  GETTABLEKS R5 R3 K3 ["mousePos"]
  GETTABLEKS R6 R3 K4 ["mouseOffset"]
  ADD R4 R5 R6
  JUMP [+2]
  GETTABLEKS R4 R2 K5 ["AbsolutePosition"]
  GETTABLEKS R5 R1 K6 ["UserInputType"]
  GETIMPORT R6 K9 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R5 R6 [+54]
  GETTABLEKS R5 R3 K2 ["isDragging"]
  JUMPIF R5 [+3]
  GETTABLEKS R5 R3 K10 ["isDragStarting"]
  JUMPIFNOT R5 [+1]
  RETURN R0 0
  GETIMPORT R5 K13 [Enum.UserInputState.Cancel]
  SETTABLEKS R5 R1 K11 ["UserInputState"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K14 ["DoubleClickDetector"]
  NAMECALL R5 R5 K15 ["isDoubleClick"]
  CALL R5 1 1
  JUMPIFNOT R5 [+4]
  GETTABLEKS R5 R2 K16 ["OnDoubleClicked"]
  CALL R5 0 0
  RETURN R0 0
  GETIMPORT R5 K19 [Vector2.new]
  GETTABLEKS R7 R1 K20 ["Position"]
  GETTABLEKS R6 R7 K21 ["X"]
  GETTABLEKS R8 R1 K20 ["Position"]
  GETTABLEKS R7 R8 K22 ["Y"]
  CALL R5 2 1
  GETUPVAL R6 0
  DUPTABLE R8 K24 [{"isDragStarting", "mouseStart", "mouseOffset", "mousePos"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K10 ["isDragStarting"]
  SETTABLEKS R5 R8 K23 ["mouseStart"]
  SUB R9 R4 R5
  SETTABLEKS R9 R8 K4 ["mouseOffset"]
  SETTABLEKS R5 R8 K3 ["mousePos"]
  NAMECALL R6 R6 K25 ["setState"]
  CALL R6 2 0
  GETTABLEKS R6 R2 K26 ["OnSelected"]
  MOVE R7 R5
  CALL R6 1 0
  RETURN R0 0
  GETTABLEKS R5 R1 K6 ["UserInputType"]
  GETIMPORT R6 K28 [Enum.UserInputType.MouseButton2]
  JUMPIFNOTEQ R5 R6 [+9]
  GETTABLEKS R5 R2 K29 ["OnRightClicked"]
  CALL R5 0 0
  GETIMPORT R5 K13 [Enum.UserInputState.Cancel]
  SETTABLEKS R5 R1 K11 ["UserInputState"]
  RETURN R0 0
  GETUPVAL R5 0
  DUPTABLE R7 K30 [{"mousePos"}]
  GETIMPORT R8 K19 [Vector2.new]
  GETTABLEKS R10 R1 K20 ["Position"]
  GETTABLEKS R9 R10 K21 ["X"]
  GETTABLEKS R11 R1 K20 ["Position"]
  GETTABLEKS R10 R11 K22 ["Y"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K3 ["mousePos"]
  NAMECALL R5 R5 K25 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R5 R3 K2 ["isDragging"]
  JUMPIFNOT R5 [+6]
  GETTABLEKS R5 R3 K3 ["mousePos"]
  GETTABLEKS R6 R3 K4 ["mouseOffset"]
  ADD R4 R5 R6
  JUMP [+2]
  GETTABLEKS R4 R2 K5 ["AbsolutePosition"]
  GETTABLEKS R5 R1 K6 ["UserInputType"]
  GETIMPORT R6 K9 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R5 R6 [+48]
  GETTABLEKS R5 R3 K2 ["isDragging"]
  JUMPIF R5 [+4]
  GETTABLEKS R5 R3 K10 ["isDragStarting"]
  JUMPIF R5 [+1]
  RETURN R0 0
  GETIMPORT R5 K13 [Vector2.new]
  GETTABLEKS R7 R1 K14 ["Position"]
  GETTABLEKS R6 R7 K15 ["X"]
  GETTABLEKS R8 R1 K14 ["Position"]
  GETTABLEKS R7 R8 K16 ["Y"]
  CALL R5 2 1
  GETUPVAL R6 0
  DUPTABLE R8 K18 [{"isDragging", "isDragStarting", "mouseStart", "mouseOffset", "mousePos"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K2 ["isDragging"]
  LOADB R9 0
  SETTABLEKS R9 R8 K10 ["isDragStarting"]
  GETIMPORT R9 K20 [Vector2.zero]
  SETTABLEKS R9 R8 K17 ["mouseStart"]
  GETIMPORT R9 K20 [Vector2.zero]
  SETTABLEKS R9 R8 K4 ["mouseOffset"]
  GETIMPORT R9 K20 [Vector2.zero]
  SETTABLEKS R9 R8 K3 ["mousePos"]
  NAMECALL R6 R6 K21 ["setState"]
  CALL R6 2 0
  GETTABLEKS R6 R2 K22 ["OnDragEnd"]
  GETTABLEKS R7 R2 K5 ["AbsolutePosition"]
  MOVE R8 R4
  CALL R6 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R3 R0 K2 ["UserInputType"]
  GETIMPORT R4 K5 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R3 R4 [+36]
  GETUPVAL R3 0
  DUPTABLE R5 K7 [{"mousePos"}]
  GETIMPORT R6 K10 [Vector2.new]
  GETTABLEKS R8 R0 K11 ["Position"]
  GETTABLEKS R7 R8 K12 ["X"]
  GETTABLEKS R9 R0 K11 ["Position"]
  GETTABLEKS R8 R9 K13 ["Y"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["mousePos"]
  NAMECALL R3 R3 K14 ["setState"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K15 ["OnHoverMoved"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R3 R1 K15 ["OnHoverMoved"]
  GETIMPORT R4 K10 [Vector2.new]
  GETTABLEKS R6 R0 K11 ["Position"]
  GETTABLEKS R5 R6 K12 ["X"]
  GETTABLEKS R7 R0 K11 ["Position"]
  GETTABLEKS R6 R7 K13 ["Y"]
  CALL R4 2 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K6 [{"isHovered", "isDragging", "isDragStarting", "mouseStart", "mousePos", "mouseOffset"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isHovered"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["isDragging"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["isDragStarting"]
  GETIMPORT R2 K9 [Vector2.zero]
  SETTABLEKS R2 R1 K3 ["mouseStart"]
  GETIMPORT R2 K9 [Vector2.zero]
  SETTABLEKS R2 R1 K4 ["mousePos"]
  GETIMPORT R2 K9 [Vector2.zero]
  SETTABLEKS R2 R1 K5 ["mouseOffset"]
  SETTABLEKS R1 R0 K10 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K12 ["DoubleClickDetector"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onMouseEnter"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["onMouseLeave"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["onInputBegan"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["onInputEnded"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["onInputChanged"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["isDragStarting"]
  JUMPIFNOT R3 [+27]
  GETTABLEKS R4 R2 K3 ["mouseStart"]
  GETTABLEKS R5 R2 K4 ["mousePos"]
  SUB R3 R4 R5
  GETTABLEKS R4 R3 K5 ["Magnitude"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["DragEpsilon"]
  JUMPIFNOTLT R5 R4 [+16]
  GETTABLEKS R4 R1 K7 ["OnDragStart"]
  GETTABLEKS R5 R2 K4 ["mousePos"]
  CALL R4 1 0
  DUPTABLE R6 K9 [{"isDragStarting", "isDragging"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K2 ["isDragStarting"]
  LOADB R7 1
  SETTABLEKS R7 R6 K8 ["isDragging"]
  NAMECALL R4 R0 K10 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Stylizer"]
  GETTABLEKS R5 R2 K3 ["isDragging"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Selected"]
  JUMP [+15]
  GETTABLEKS R5 R1 K5 ["IsSelected"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Selected"]
  JUMP [+8]
  GETTABLEKS R5 R2 K6 ["isHovered"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["Hover"]
  JUMP [+1]
  LOADNIL R4
  JUMPIFEQKNIL R4 [+11]
  GETTABLE R5 R3 R4
  JUMPIFEQKNIL R5 [+8]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["join"]
  MOVE R6 R3
  GETTABLE R7 R3 R4
  CALL R5 2 1
  MOVE R3 R5
  GETUPVAL R5 2
  GETTABLEKS R6 R3 K9 ["Disabled"]
  GETTABLEKS R7 R1 K9 ["Disabled"]
  CALL R5 2 1
  GETTABLEKS R6 R3 K10 ["BackgroundColor"]
  GETTABLEKS R7 R1 K11 ["AbsolutePosition"]
  GETTABLEKS R8 R3 K12 ["BackgroundImage"]
  GETUPVAL R9 2
  GETTABLEKS R10 R1 K13 ["AbsoluteSize"]
  GETTABLEKS R11 R3 K14 ["PointSize"]
  CALL R9 2 1
  GETUPVAL R10 2
  GETTABLEKS R11 R1 K15 ["Size"]
  GETIMPORT R12 K18 [UDim2.fromOffset]
  GETTABLEKS R13 R9 K19 ["X"]
  GETTABLEKS R14 R9 K20 ["Y"]
  CALL R12 2 -1
  CALL R10 -1 1
  GETTABLEKS R11 R3 K21 ["StrokeWidth"]
  JUMPIFNOTEQKNIL R11 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETTABLEKS R13 R1 K5 ["IsSelected"]
  JUMPIFNOT R13 [+6]
  GETTABLEKS R13 R3 K22 ["SelectedColor"]
  JUMPIFEQKNIL R13 [+3]
  GETTABLEKS R6 R3 K22 ["SelectedColor"]
  GETTABLEKS R13 R2 K3 ["isDragging"]
  JUMPIFNOT R13 [+21]
  GETTABLEKS R13 R3 K23 ["DragColor"]
  JUMPIFEQKNIL R13 [+3]
  GETTABLEKS R6 R3 K23 ["DragColor"]
  GETTABLEKS R14 R2 K24 ["mousePos"]
  GETTABLEKS R15 R2 K25 ["mouseOffset"]
  ADD R13 R14 R15
  GETTABLEKS R14 R1 K26 ["FollowCursorOnDrag"]
  JUMPIFNOT R14 [+1]
  MOVE R7 R13
  GETTABLEKS R14 R1 K27 ["OnDragMoved"]
  GETTABLEKS R15 R1 K11 ["AbsolutePosition"]
  MOVE R16 R13
  CALL R14 2 0
  NEWTABLE R13 0 0
  GETTABLEKS R14 R1 K28 ["children"]
  JUMPIFEQKNIL R14 [+3]
  GETTABLEKS R13 R1 K28 ["children"]
  JUMPIFEQKNIL R11 [+35]
  MOVE R15 R13
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K29 ["createElement"]
  LOADK R17 K30 ["Frame"]
  DUPTABLE R18 K32 [{"BackgroundTransparency", "Size"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K31 ["BackgroundTransparency"]
  SETTABLEKS R10 R18 K15 ["Size"]
  NEWTABLE R19 0 1
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K29 ["createElement"]
  LOADK R21 K33 ["UIStroke"]
  DUPTABLE R22 K36 [{"Thickness", "Color"}]
  GETTABLEKS R23 R3 K21 ["StrokeWidth"]
  SETTABLEKS R23 R22 K34 ["Thickness"]
  GETTABLEKS R23 R3 K37 ["StrokeColor"]
  SETTABLEKS R23 R22 K35 ["Color"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K40 [table.insert]
  CALL R14 -1 0
  GETTABLEKS R14 R3 K41 ["Padding"]
  MOVE R15 R10
  GETIMPORT R16 K43 [UDim2.new]
  LOADN R17 0
  GETTABLEKS R18 R7 K19 ["X"]
  LOADN R19 0
  GETTABLEKS R20 R7 K20 ["Y"]
  CALL R16 4 1
  JUMPIFEQKNIL R14 [+7]
  GETIMPORT R17 K18 [UDim2.fromOffset]
  MOVE R18 R14
  MOVE R19 R14
  CALL R17 2 1
  SUB R15 R10 R17
  GETUPVAL R17 4
  JUMPIFNOT R17 [+21]
  GETTABLEKS R17 R3 K44 ["HasControlPointVisual"]
  JUMPIFNOT R17 [+18]
  LOADNIL R8
  MOVE R18 R13
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K29 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K47 [{"Style", "StyleModifier"}]
  GETTABLEKS R22 R1 K45 ["Style"]
  SETTABLEKS R22 R21 K45 ["Style"]
  SETTABLEKS R4 R21 K46 ["StyleModifier"]
  CALL R19 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R17 K40 [table.insert]
  CALL R17 -1 0
  JUMPIFEQKNIL R8 [+43]
  JUMPIF R5 [+41]
  MOVE R18 R13
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K29 ["createElement"]
  LOADK R20 K48 ["ImageLabel"]
  DUPTABLE R21 K54 [{"AnchorPoint", "Position", "Size", "Image", "BackgroundTransparency", "ImageTransparency", "ScaleType"}]
  GETIMPORT R22 K56 [Vector2.new]
  LOADK R23 K57 [0.5]
  LOADK R24 K57 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K49 ["AnchorPoint"]
  GETIMPORT R22 K59 [UDim2.fromScale]
  LOADK R23 K57 [0.5]
  LOADK R24 K57 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K50 ["Position"]
  SETTABLEKS R15 R21 K15 ["Size"]
  SETTABLEKS R8 R21 K51 ["Image"]
  GETTABLEKS R22 R3 K31 ["BackgroundTransparency"]
  SETTABLEKS R22 R21 K31 ["BackgroundTransparency"]
  GETTABLEKS R22 R3 K52 ["ImageTransparency"]
  SETTABLEKS R22 R21 K52 ["ImageTransparency"]
  GETIMPORT R22 K62 [Enum.ScaleType.Crop]
  SETTABLEKS R22 R21 K53 ["ScaleType"]
  CALL R19 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R17 K40 [table.insert]
  CALL R17 -1 0
  LOADNIL R17
  JUMPIFNOT R5 [+76]
  JUMPIF R8 [+34]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K29 ["createElement"]
  LOADK R19 K30 ["Frame"]
  DUPTABLE R20 K66 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "Active", "ZIndex", "BackgroundTransparency"}]
  GETTABLEKS R21 R3 K49 ["AnchorPoint"]
  SETTABLEKS R21 R20 K49 ["AnchorPoint"]
  SETTABLEKS R16 R20 K50 ["Position"]
  SETTABLEKS R10 R20 K15 ["Size"]
  SETTABLEKS R6 R20 K63 ["BackgroundColor3"]
  LOADB R21 1
  SETTABLEKS R21 R20 K64 ["Active"]
  GETTABLEKS R21 R1 K65 ["ZIndex"]
  SETTABLEKS R21 R20 K65 ["ZIndex"]
  GETUPVAL R22 4
  JUMPIFNOT R22 [+3]
  GETTABLEKS R21 R3 K31 ["BackgroundTransparency"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K31 ["BackgroundTransparency"]
  MOVE R21 R13
  CALL R18 3 1
  MOVE R17 R18
  RETURN R17 1
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K29 ["createElement"]
  LOADK R19 K48 ["ImageLabel"]
  DUPTABLE R20 K67 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "Image", "Active", "ZIndex", "BackgroundTransparency", "ImageTransparency", "ScaleType"}]
  GETTABLEKS R21 R3 K49 ["AnchorPoint"]
  SETTABLEKS R21 R20 K49 ["AnchorPoint"]
  SETTABLEKS R16 R20 K50 ["Position"]
  OR R21 R15 R10
  SETTABLEKS R21 R20 K15 ["Size"]
  SETTABLEKS R6 R20 K63 ["BackgroundColor3"]
  SETTABLEKS R8 R20 K51 ["Image"]
  LOADB R21 1
  SETTABLEKS R21 R20 K64 ["Active"]
  GETTABLEKS R21 R1 K65 ["ZIndex"]
  SETTABLEKS R21 R20 K65 ["ZIndex"]
  GETTABLEKS R21 R3 K31 ["BackgroundTransparency"]
  SETTABLEKS R21 R20 K31 ["BackgroundTransparency"]
  GETTABLEKS R21 R3 K52 ["ImageTransparency"]
  SETTABLEKS R21 R20 K52 ["ImageTransparency"]
  GETIMPORT R21 K62 [Enum.ScaleType.Crop]
  SETTABLEKS R21 R20 K53 ["ScaleType"]
  MOVE R21 R13
  CALL R18 3 1
  MOVE R17 R18
  RETURN R17 1
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K29 ["createElement"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K68 ["Fragment"]
  NEWTABLE R20 0 0
  DUPTABLE R21 K71 [{"Point", "InputListener"}]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K29 ["createElement"]
  LOADK R23 K72 ["ImageButton"]
  NEWTABLE R24 16 0
  GETTABLEKS R25 R3 K49 ["AnchorPoint"]
  SETTABLEKS R25 R24 K49 ["AnchorPoint"]
  SETTABLEKS R16 R24 K50 ["Position"]
  SETTABLEKS R10 R24 K15 ["Size"]
  SETTABLEKS R6 R24 K63 ["BackgroundColor3"]
  LOADB R25 1
  SETTABLEKS R25 R24 K64 ["Active"]
  GETTABLEKS R25 R1 K65 ["ZIndex"]
  SETTABLEKS R25 R24 K65 ["ZIndex"]
  GETTABLEKS R25 R3 K31 ["BackgroundTransparency"]
  SETTABLEKS R25 R24 K31 ["BackgroundTransparency"]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K73 ["Event"]
  GETTABLEKS R25 R26 K74 ["MouseEnter"]
  GETTABLEKS R26 R0 K75 ["onMouseEnter"]
  SETTABLE R26 R24 R25
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K73 ["Event"]
  GETTABLEKS R25 R26 K76 ["MouseLeave"]
  GETTABLEKS R26 R0 K77 ["onMouseLeave"]
  SETTABLE R26 R24 R25
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K73 ["Event"]
  GETTABLEKS R25 R26 K78 ["InputBegan"]
  GETTABLEKS R26 R0 K79 ["onInputBegan"]
  SETTABLE R26 R24 R25
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K73 ["Event"]
  GETTABLEKS R25 R26 K80 ["InputEnded"]
  GETTABLEKS R26 R0 K81 ["onInputEnded"]
  SETTABLE R26 R24 R25
  MOVE R25 R13
  CALL R22 3 1
  SETTABLEKS R22 R21 K69 ["Point"]
  GETTABLEKS R23 R2 K3 ["isDragging"]
  JUMPIF R23 [+6]
  GETTABLEKS R23 R2 K82 ["isDragStarting"]
  JUMPIF R23 [+3]
  GETTABLEKS R22 R1 K83 ["OnHoverMoved"]
  JUMPIFNOT R22 [+15]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K29 ["createElement"]
  GETUPVAL R23 6
  DUPTABLE R24 K86 [{"signal", "callback"}]
  GETUPVAL R26 7
  GETTABLEKS R25 R26 K87 ["InputChanged"]
  SETTABLEKS R25 R24 K84 ["signal"]
  GETTABLEKS R25 R0 K88 ["onInputChanged"]
  SETTABLEKS R25 R24 K85 ["callback"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["InputListener"]
  CALL R18 3 1
  MOVE R17 R18
  RETURN R17 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UserInputService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Dash"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K15 ["ContextServices"]
  GETTABLEKS R7 R6 K16 ["withContext"]
  GETTABLEKS R9 R4 K17 ["Style"]
  GETTABLEKS R8 R9 K18 ["Stylizer"]
  GETTABLEKS R9 R4 K19 ["Util"]
  GETTABLEKS R10 R9 K20 ["DoubleClickDetector"]
  GETTABLEKS R11 R9 K21 ["prioritize"]
  GETTABLEKS R12 R9 K22 ["StyleModifier"]
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K9 ["Src"]
  GETTABLEKS R15 R16 K23 ["Resources"]
  GETTABLEKS R14 R15 K24 ["Constants"]
  CALL R13 1 1
  GETTABLEKS R15 R1 K9 ["Src"]
  GETTABLEKS R14 R15 K25 ["Components"]
  GETIMPORT R15 K8 [require]
  GETTABLEKS R16 R14 K26 ["SignalListener"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETTABLEKS R17 R14 K27 ["ControlPointVisual"]
  CALL R16 1 1
  GETIMPORT R17 K1 [game]
  LOADK R19 K28 ["PathEditorControlPointVisualImprovements2"]
  LOADB R20 0
  NAMECALL R17 R17 K29 ["DefineFastFlag"]
  CALL R17 3 1
  GETTABLEKS R18 R3 K30 ["Component"]
  LOADK R20 K31 ["DraggablePoint"]
  NAMECALL R18 R18 K32 ["extend"]
  CALL R18 2 1
  DUPTABLE R19 K47 [{"Style", "ZIndex", "AbsolutePosition", "FollowCursorOnDrag", "OnSelected", "OnMouse1Down", "OnHover", "OnHoverMoved", "OnHoverEnd", "OnDeselected", "OnDragStart", "OnDragMoved", "OnDragEnd", "OnDoubleClicked", "OnRightClicked"}]
  LOADK R20 K48 ["ControlPoint"]
  SETTABLEKS R20 R19 K17 ["Style"]
  LOADN R20 0
  SETTABLEKS R20 R19 K33 ["ZIndex"]
  GETIMPORT R20 K51 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K34 ["AbsolutePosition"]
  LOADB R20 1
  SETTABLEKS R20 R19 K35 ["FollowCursorOnDrag"]
  DUPCLOSURE R20 K52 [PROTO_0]
  SETTABLEKS R20 R19 K36 ["OnSelected"]
  DUPCLOSURE R20 K53 [PROTO_1]
  SETTABLEKS R20 R19 K37 ["OnMouse1Down"]
  DUPCLOSURE R20 K54 [PROTO_2]
  SETTABLEKS R20 R19 K38 ["OnHover"]
  LOADNIL R20
  SETTABLEKS R20 R19 K39 ["OnHoverMoved"]
  DUPCLOSURE R20 K55 [PROTO_3]
  SETTABLEKS R20 R19 K40 ["OnHoverEnd"]
  DUPCLOSURE R20 K56 [PROTO_4]
  SETTABLEKS R20 R19 K41 ["OnDeselected"]
  DUPCLOSURE R20 K57 [PROTO_5]
  SETTABLEKS R20 R19 K42 ["OnDragStart"]
  DUPCLOSURE R20 K58 [PROTO_6]
  SETTABLEKS R20 R19 K43 ["OnDragMoved"]
  DUPCLOSURE R20 K59 [PROTO_7]
  SETTABLEKS R20 R19 K44 ["OnDragEnd"]
  DUPCLOSURE R20 K60 [PROTO_8]
  SETTABLEKS R20 R19 K45 ["OnDoubleClicked"]
  DUPCLOSURE R20 K61 [PROTO_9]
  SETTABLEKS R20 R19 K46 ["OnRightClicked"]
  SETTABLEKS R19 R18 K62 ["defaultProps"]
  DUPCLOSURE R19 K63 [PROTO_15]
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K64 ["init"]
  DUPCLOSURE R19 K65 [PROTO_16]
  CAPTURE VAL R13
  SETTABLEKS R19 R18 K66 ["didUpdate"]
  DUPCLOSURE R19 K67 [PROTO_17]
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K68 ["render"]
  MOVE R19 R7
  DUPTABLE R20 K69 [{"Stylizer"}]
  SETTABLEKS R8 R20 K18 ["Stylizer"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  RETURN R18 1
