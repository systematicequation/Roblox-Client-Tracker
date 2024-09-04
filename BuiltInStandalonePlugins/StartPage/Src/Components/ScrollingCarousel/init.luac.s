PROTO_0:
  GETTABLEKS R5 R1 K0 ["X"]
  ADD R4 R0 R5
  GETTABLEKS R5 R2 K0 ["X"]
  JUMPIFLT R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_1:
  GETIMPORT R2 K2 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  JUMPIFNOTEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnLoadRange"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnLoadRange"]
  LOADN R1 0
  LOADN R2 10
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R2 K3 [TweenInfo.new]
  LOADK R3 K4 [0.1]
  GETIMPORT R4 K8 [Enum.EasingStyle.Linear]
  GETIMPORT R5 K11 [Enum.EasingDirection.Out]
  CALL R2 3 1
  GETUPVAL R3 2
  MOVE R5 R1
  MOVE R6 R2
  DUPTABLE R7 K13 [{"CanvasPosition"}]
  GETIMPORT R8 K15 [Vector2.new]
  GETTABLEKS R11 R1 K12 ["CanvasPosition"]
  GETTABLEKS R10 R11 K16 ["X"]
  ADD R9 R10 R0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["CanvasPosition"]
  NAMECALL R3 R3 K17 ["Create"]
  CALL R3 4 1
  NAMECALL R4 R3 K18 ["Play"]
  CALL R4 1 0
  GETUPVAL R4 3
  LOADB R5 1
  CALL R4 1 0
  GETTABLEKS R4 R3 K19 ["Completed"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U3
  NAMECALL R4 R4 K20 ["Connect"]
  CALL R4 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["X"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADN R1 20
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADN R1 236
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 0
  LOADN R4 0
  CALL R3 1 2
  GETUPVAL R5 1
  LOADNIL R6
  CALL R5 1 1
  GETUPVAL R6 0
  GETIMPORT R7 K2 [Vector2.new]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 -1
  CALL R6 -1 2
  GETUPVAL R8 2
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  NEWTABLE R10 0 0
  CALL R8 2 0
  NEWTABLE R8 0 0
  GETTABLEKS R9 R0 K3 ["Cells"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  MOVE R15 R8
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETTABLEKS R17 R0 K5 ["CellComponent"]
  DUPTABLE R18 K8 [{"Size", "Cell"}]
  GETTABLEKS R19 R0 K9 ["CellSize"]
  SETTABLEKS R19 R18 K6 ["Size"]
  SETTABLEKS R13 R18 K7 ["Cell"]
  CALL R16 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K12 [table.insert]
  CALL R14 -1 0
  FORGLOOP R9 2 [-19]
  NEWCLOSURE R9 P1
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K4 ["createElement"]
  LOADK R11 K13 ["Frame"]
  NEWTABLE R12 4 0
  GETTABLEKS R13 R0 K6 ["Size"]
  SETTABLEKS R13 R12 K6 ["Size"]
  GETTABLEKS R13 R0 K14 ["Position"]
  SETTABLEKS R13 R12 K14 ["Position"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K15 ["Change"]
  GETTABLEKS R13 R14 K16 ["AbsoluteSize"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R4
  SETTABLE R14 R12 R13
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K17 ["Tag"]
  LOADK R14 K18 ["X-Transparent"]
  SETTABLE R14 R12 R13
  NEWTABLE R13 0 3
  GETIMPORT R16 K2 [Vector2.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  JUMPIFNOTEQ R6 R16 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  JUMPIFNOT R15 [+37]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K21 [{"Size", "Position", "IsArrowRight", "OnClick"}]
  GETIMPORT R17 K23 [UDim2.new]
  LOADN R18 0
  LOADN R19 100
  LOADN R20 0
  GETTABLEKS R23 R0 K9 ["CellSize"]
  GETTABLEKS R22 R23 K24 ["Height"]
  GETTABLEKS R21 R22 K25 ["Offset"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K6 ["Size"]
  GETIMPORT R17 K23 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K14 ["Position"]
  LOADB R17 0
  SETTABLEKS R17 R16 K19 ["IsArrowRight"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R9
  SETTABLEKS R17 R16 K20 ["OnClick"]
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 6
  NEWTABLE R17 8 0
  GETIMPORT R18 K23 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K6 ["Size"]
  LOADN R18 0
  SETTABLEKS R18 R17 K26 ["ScrollBarThickness"]
  GETIMPORT R18 K30 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K31 ["Layout"]
  GETIMPORT R18 K34 [Enum.ScrollingDirection.X]
  SETTABLEKS R18 R17 K32 ["ScrollingDirection"]
  SETTABLEKS R5 R17 K35 ["ForwardRef"]
  LOADB R18 1
  SETTABLEKS R18 R17 K36 ["ScrollingEnabled"]
  SETTABLEKS R7 R17 K37 ["OnScrollUpdate"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K17 ["Tag"]
  LOADK R19 K38 ["X-RowM X-Middle StartPage-PadScrollingCarouselLeft X-Transparent"]
  SETTABLE R19 R17 R18
  MOVE R18 R8
  CALL R15 3 1
  GETTABLEKS R17 R5 K39 ["current"]
  JUMPIFNOT R17 [+51]
  GETTABLEKS R19 R5 K39 ["current"]
  GETTABLEKS R18 R19 K40 ["AbsoluteCanvasSize"]
  GETTABLEKS R20 R6 K33 ["X"]
  ADD R19 R3 R20
  GETTABLEKS R20 R18 K33 ["X"]
  JUMPIFLT R19 R20 [+2]
  LOADB R17 0 +1
  LOADB R17 1
  JUMPIFNOT R17 [+37]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K41 [{"Size", "Position", "OnClick", "IsArrowRight"}]
  GETIMPORT R19 K23 [UDim2.new]
  LOADN R20 0
  LOADN R21 100
  LOADN R22 0
  GETTABLEKS R25 R0 K9 ["CellSize"]
  GETTABLEKS R24 R25 K24 ["Height"]
  GETTABLEKS R23 R24 K25 ["Offset"]
  CALL R19 4 1
  SETTABLEKS R19 R18 K6 ["Size"]
  GETIMPORT R19 K23 [UDim2.new]
  LOADN R20 1
  LOADN R21 156
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Position"]
  NEWCLOSURE R19 P4
  CAPTURE VAL R9
  SETTABLEKS R19 R18 K20 ["OnClick"]
  LOADB R19 1
  SETTABLEKS R19 R18 K19 ["IsArrowRight"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETLIST R13 R14 3 [1]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useRef"]
  GETTABLEKS R3 R1 K9 ["useState"]
  GETTABLEKS R4 R1 K10 ["useEffect"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["ScrollingFrame"]
  GETIMPORT R8 K15 [game]
  LOADK R10 K16 ["TweenService"]
  NAMECALL R8 R8 K17 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K18 ["Src"]
  GETTABLEKS R12 R13 K19 ["Components"]
  GETTABLEKS R11 R12 K20 ["ScrollingCarousel"]
  GETTABLEKS R10 R11 K21 ["Chevron"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K18 ["Src"]
  GETTABLEKS R11 R12 K22 ["Types"]
  CALL R10 1 1
  DUPCLOSURE R11 K23 [PROTO_0]
  DUPCLOSURE R12 K24 [PROTO_1]
  DUPCLOSURE R13 K25 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  RETURN R13 1
