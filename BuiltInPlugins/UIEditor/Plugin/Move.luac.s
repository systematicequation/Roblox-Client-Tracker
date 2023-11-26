PROTO_0:
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIFNOT R2 [+10]
  MOVE R5 R1
  NAMECALL R3 R2 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R2 K0 ["Parent"]
  JUMP [+1]
  RETURN R2 1
  JUMPBACK [-11]
  LOADNIL R3
  RETURN R3 1

PROTO_1:
  LOADN R3 1
  GETUPVAL R4 0
  LENGTH R1 R4
  LOADN R2 1
  FORNPREP R1
  GETUPVAL R6 0
  GETTABLE R5 R6 R3
  GETTABLEN R4 R5 1
  GETTABLEKS R6 R4 K0 ["Parent"]
  JUMPIFNOT R6 [+11]
  LOADK R9 K1 ["Folder"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R6 K0 ["Parent"]
  JUMP [+2]
  MOVE R5 R6
  JUMP [+2]
  JUMPBACK [-12]
  LOADNIL R5
  JUMPIFNOT R5 [+213]
  LOADK R8 K3 ["GuiBase2d"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+208]
  GETUPVAL R6 1
  GETUPVAL R10 0
  GETTABLE R9 R10 R3
  GETTABLEN R8 R9 3
  NAMECALL R6 R6 K4 ["isOnlyScaleUDim2"]
  CALL R6 2 1
  JUMPIF R6 [+13]
  GETUPVAL R7 1
  GETUPVAL R11 0
  GETTABLE R10 R11 R3
  GETTABLEN R9 R10 3
  NAMECALL R7 R7 K5 ["isOnlyOffsetUDim2"]
  CALL R7 2 1
  NOT R6 R7
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 2
  NAMECALL R6 R6 K6 ["isScale"]
  CALL R6 1 1
  GETUPVAL R7 3
  JUMPIFNOT R7 [+20]
  GETUPVAL R10 0
  GETTABLE R9 R10 R3
  GETTABLEN R8 R9 2
  ADD R7 R8 R0
  GETUPVAL R8 4
  MOVE R10 R6
  MOVE R11 R7
  GETTABLEKS R12 R4 K7 ["AbsoluteSize"]
  GETTABLEKS R13 R4 K8 ["Position"]
  MOVE R14 R5
  GETTABLEKS R15 R4 K9 ["AnchorPoint"]
  NAMECALL R8 R8 K10 ["convertAbsolutePositionToScaleOrOffset"]
  CALL R8 7 1
  SETTABLEKS R8 R4 K8 ["Position"]
  JUMP [+165]
  LOADK R9 K11 ["UIPadding"]
  NAMECALL R7 R5 K12 ["FindFirstChildWhichIsA"]
  CALL R7 2 1
  GETIMPORT R8 K15 [Vector2.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  GETIMPORT R9 K15 [Vector2.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  JUMPIFNOT R7 [+52]
  GETIMPORT R10 K15 [Vector2.new]
  GETTABLEKS R12 R7 K16 ["PaddingLeft"]
  GETTABLEKS R11 R12 K17 ["Offset"]
  GETTABLEKS R13 R7 K18 ["PaddingTop"]
  GETTABLEKS R12 R13 K17 ["Offset"]
  CALL R10 2 1
  GETIMPORT R12 K15 [Vector2.new]
  GETTABLEKS R14 R7 K16 ["PaddingLeft"]
  GETTABLEKS R13 R14 K19 ["Scale"]
  GETTABLEKS R15 R7 K18 ["PaddingTop"]
  GETTABLEKS R14 R15 K19 ["Scale"]
  CALL R12 2 1
  GETTABLEKS R13 R5 K7 ["AbsoluteSize"]
  MUL R11 R12 R13
  ADD R8 R10 R11
  GETIMPORT R10 K15 [Vector2.new]
  GETTABLEKS R12 R7 K20 ["PaddingRight"]
  GETTABLEKS R11 R12 K17 ["Offset"]
  GETTABLEKS R13 R7 K21 ["PaddingBottom"]
  GETTABLEKS R12 R13 K17 ["Offset"]
  CALL R10 2 1
  GETIMPORT R12 K15 [Vector2.new]
  GETTABLEKS R14 R7 K20 ["PaddingRight"]
  GETTABLEKS R13 R14 K19 ["Scale"]
  GETTABLEKS R15 R7 K21 ["PaddingBottom"]
  GETTABLEKS R14 R15 K19 ["Scale"]
  CALL R12 2 1
  GETTABLEKS R13 R5 K7 ["AbsoluteSize"]
  MUL R11 R12 R13
  ADD R9 R10 R11
  JUMPIFNOT R6 [+82]
  GETTABLEKS R13 R5 K7 ["AbsoluteSize"]
  SUB R12 R13 R8
  SUB R11 R12 R9
  DIV R10 R0 R11
  LOADK R13 K22 ["ScrollingFrame"]
  NAMECALL R11 R5 K2 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+56]
  GETTABLEKS R13 R5 K23 ["CanvasSize"]
  GETTABLEKS R12 R13 K24 ["X"]
  GETTABLEKS R11 R12 K19 ["Scale"]
  LOADN R12 1
  JUMPIFNOTLE R12 R11 [+20]
  GETIMPORT R11 K15 [Vector2.new]
  GETTABLEKS R13 R0 K24 ["X"]
  GETTABLEKS R17 R5 K25 ["AbsoluteCanvasSize"]
  GETTABLEKS R16 R17 K24 ["X"]
  GETTABLEKS R17 R8 K24 ["X"]
  SUB R15 R16 R17
  GETTABLEKS R16 R9 K24 ["X"]
  SUB R14 R15 R16
  DIV R12 R13 R14
  GETTABLEKS R13 R10 K26 ["Y"]
  CALL R11 2 1
  MOVE R10 R11
  GETTABLEKS R13 R5 K23 ["CanvasSize"]
  GETTABLEKS R12 R13 K26 ["Y"]
  GETTABLEKS R11 R12 K19 ["Scale"]
  LOADN R12 1
  JUMPIFNOTLE R12 R11 [+20]
  GETIMPORT R11 K15 [Vector2.new]
  GETTABLEKS R12 R10 K24 ["X"]
  GETTABLEKS R14 R0 K26 ["Y"]
  GETTABLEKS R18 R5 K25 ["AbsoluteCanvasSize"]
  GETTABLEKS R17 R18 K26 ["Y"]
  GETTABLEKS R18 R8 K26 ["Y"]
  SUB R16 R17 R18
  GETTABLEKS R17 R9 K26 ["Y"]
  SUB R15 R16 R17
  DIV R13 R14 R15
  CALL R11 2 1
  MOVE R10 R11
  GETUPVAL R14 0
  GETTABLE R13 R14 R3
  GETTABLEN R12 R13 3
  GETIMPORT R13 K28 [UDim2.new]
  GETTABLEKS R14 R10 K24 ["X"]
  LOADN R15 0
  GETTABLEKS R16 R10 K26 ["Y"]
  LOADN R17 0
  CALL R13 4 1
  ADD R11 R12 R13
  SETTABLEKS R11 R4 K8 ["Position"]
  JUMP [+15]
  GETUPVAL R13 0
  GETTABLE R12 R13 R3
  GETTABLEN R11 R12 3
  GETIMPORT R12 K28 [UDim2.new]
  LOADN R13 0
  GETTABLEKS R14 R0 K24 ["X"]
  LOADN R15 0
  GETTABLEKS R16 R0 K26 ["Y"]
  CALL R12 4 1
  ADD R10 R11 R12
  SETTABLEKS R10 R4 K8 ["Position"]
  FORNLOOP R1
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  SUB R2 R0 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOTEQKN R0 K0 [1] [+7]
  GETIMPORT R1 K3 [Vector2.new]
  LOADN R2 0
  LOADN R3 255
  CALL R1 2 -1
  RETURN R1 -1
  JUMPIFNOTEQKN R0 K4 [2] [+7]
  GETIMPORT R1 K3 [Vector2.new]
  LOADN R2 0
  LOADN R3 1
  CALL R1 2 -1
  RETURN R1 -1
  JUMPIFNOTEQKN R0 K5 [3] [+7]
  GETIMPORT R1 K3 [Vector2.new]
  LOADN R2 255
  LOADN R3 0
  CALL R1 2 -1
  RETURN R1 -1
  JUMPIFNOTEQKN R0 K6 [4] [+7]
  GETIMPORT R1 K3 [Vector2.new]
  LOADN R2 1
  LOADN R3 0
  CALL R1 2 -1
  RETURN R1 -1
  GETIMPORT R1 K3 [Vector2.new]
  LOADN R2 0
  LOADN R3 255
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  JUMPIFNOT R0 [+3]
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R0 K0 ["Parent"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K0 ["Parent"]
  RETURN R2 1
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["Parent"]
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  JUMPIFNOT R0 [+12]
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIFNOTEQ R2 R1 [+3]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R0 R0 K0 ["Parent"]
  JUMPBACK [-13]
  LOADB R2 0
  RETURN R2 1

PROTO_6:
  JUMPIFNOTEQ R0 R1 [+3]
  LOADN R2 0
  RETURN R2 1
  LOADN R2 0
  LOADK R5 K0 ["GuiObject"]
  NAMECALL R3 R0 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  GETTABLEKS R2 R0 K2 ["ZIndex"]
  NAMECALL R3 R0 K3 ["GetChildren"]
  CALL R3 1 1
  LOADN R6 1
  LENGTH R4 R3
  LOADN R5 1
  FORNPREP R4
  MOVE R8 R2
  GETGLOBAL R9 K4 ["getHighestZIndexOfSelfAndDescendants"]
  GETTABLE R10 R3 R6
  MOVE R11 R1
  CALL R9 2 -1
  FASTCALL MATH_MAX [+2]
  GETIMPORT R7 K7 [math.max]
  CALL R7 -1 1
  MOVE R2 R7
  FORNLOOP R4
  RETURN R2 1

PROTO_7:
  LOADK R4 K0 ["GuiObject"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  GETTABLEKS R3 R0 K2 ["zIndex"]
  ADD R2 R3 R1
  SETTABLEKS R2 R0 K3 ["ZIndex"]
  NAMECALL R2 R0 K4 ["GetChildren"]
  CALL R2 1 1
  LOADN R5 1
  LENGTH R3 R2
  LOADN R4 1
  FORNPREP R3
  GETGLOBAL R6 K5 ["incrementZIndexOfSelfAndDescendantsBy"]
  GETTABLE R7 R2 R5
  MOVE R8 R1
  CALL R6 2 0
  FORNLOOP R3
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  RETURN R1 1

PROTO_9:
  NEWTABLE R2 0 0
  SETUPVAL R2 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["getFilteredSelectionCommonAncestors"]
  CALL R2 1 1
  LOADN R5 1
  LENGTH R3 R2
  LOADN R4 1
  FORNPREP R3
  GETUPVAL R7 0
  NEWTABLE R8 0 3
  GETTABLE R9 R2 R5
  GETTABLE R11 R2 R5
  GETTABLEKS R10 R11 K1 ["AbsolutePosition"]
  GETTABLE R12 R2 R5
  GETTABLEKS R11 R12 K2 ["Position"]
  SETLIST R8 R9 3 [1]
  FASTCALL2 TABLE_INSERT R7 R8 [+3]
  GETIMPORT R6 K5 [table.insert]
  CALL R6 2 0
  FORNLOOP R3
  GETUPVAL R4 0
  LENGTH R3 R4
  JUMPIFNOTEQKN R3 K6 [0] [+2]
  RETURN R0 0
  SETUPVAL R1 2
  LOADB R3 1
  SETUPVAL R3 3
  LOADB R3 0
  SETUPVAL R3 4
  GETUPVAL R3 6
  MOVE R5 R2
  NAMECALL R3 R3 K7 ["getExtentsFromGuis"]
  CALL R3 2 1
  SETUPVAL R3 5
  GETUPVAL R3 7
  NAMECALL R3 R3 K8 ["setToMoveIcon"]
  CALL R3 1 0
  GETUPVAL R3 8
  NAMECALL R3 R3 K9 ["createSelectionAdorns"]
  CALL R3 1 0
  GETUPVAL R3 9
  MOVE R5 R1
  NAMECALL R3 R3 K10 ["onMoveBegan"]
  CALL R3 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 1
  LOADK R4 K0 ["Move"]
  NAMECALL R2 R2 K1 ["reportEvent"]
  CALL R2 2 0
  GETUPVAL R2 2
  LOADK R4 K2 ["Translate Objects (better tt needed)"]
  NAMECALL R2 R2 K3 ["SetWaypoint"]
  CALL R2 2 0
  LOADB R2 0
  SETUPVAL R2 3
  LOADNIL R2
  SETUPVAL R2 4
  GETUPVAL R2 5
  NAMECALL R2 R2 K4 ["hideSnappingLines"]
  CALL R2 1 0
  LOADB R2 0
  SETUPVAL R2 0
  GETUPVAL R2 6
  NAMECALL R2 R2 K5 ["setToDefaultIcon"]
  CALL R2 1 0
  GETUPVAL R2 5
  NAMECALL R2 R2 K6 ["deleteSelectionAdorns"]
  CALL R2 1 0
  GETUPVAL R2 7
  MOVE R4 R1
  NAMECALL R2 R2 K7 ["onMoveEnded"]
  CALL R2 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  JUMPIF R2 [+10]
  GETUPVAL R2 1
  GETUPVAL R5 2
  SUB R4 R1 R5
  NAMECALL R2 R2 K0 ["manhattanDistance"]
  CALL R2 2 1
  LOADN R3 3
  JUMPIFNOTLE R2 R3 [+2]
  RETURN R0 0
  LOADB R2 1
  SETUPVAL R2 0
  GETUPVAL R2 3
  NAMECALL R2 R2 K1 ["hideSnappingLines"]
  CALL R2 1 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["MoveXY"]
  GETUPVAL R3 5
  GETIMPORT R5 K6 [Enum.KeyCode.LeftShift]
  NAMECALL R3 R3 K7 ["IsKeyDown"]
  CALL R3 2 1
  JUMPIF R3 [+7]
  GETUPVAL R3 5
  GETIMPORT R5 K9 [Enum.KeyCode.RightShift]
  NAMECALL R3 R3 K7 ["IsKeyDown"]
  CALL R3 2 1
  JUMPIFNOT R3 [+41]
  GETTABLEKS R5 R1 K10 ["Y"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["Y"]
  SUB R4 R5 R6
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K13 [math.abs]
  CALL R3 1 1
  GETTABLEKS R6 R1 K14 ["X"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["X"]
  SUB R5 R6 R7
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K13 [math.abs]
  CALL R4 1 1
  JUMPIFNOTLT R3 R4 [+11]
  GETIMPORT R5 K17 [Vector2.new]
  GETTABLEKS R6 R1 K14 ["X"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["Y"]
  CALL R5 2 1
  MOVE R1 R5
  JUMP [+9]
  GETIMPORT R5 K17 [Vector2.new]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K14 ["X"]
  GETTABLEKS R7 R1 K10 ["Y"]
  CALL R5 2 1
  MOVE R1 R5
  GETUPVAL R3 6
  GETUPVAL R5 7
  GETUPVAL R7 2
  SUB R6 R1 R7
  NAMECALL R3 R3 K18 ["translate"]
  CALL R3 3 1
  LOADNIL R4
  GETUPVAL R5 8
  MOVE R7 R3
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K2 ["MoveXY"]
  NAMECALL R5 R5 K19 ["snapExtents"]
  CALL R5 3 2
  MOVE R3 R5
  MOVE R4 R6
  LOADN R7 1
  LENGTH R5 R4
  LOADN R6 1
  FORNPREP R5
  GETUPVAL R8 3
  GETTABLE R10 R4 R7
  NAMECALL R8 R8 K20 ["showSnappingLine"]
  CALL R8 2 0
  FORNLOOP R5
  LOADNIL R5
  GETUPVAL R6 1
  GETTABLEKS R9 R3 K21 ["TopLeft"]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K21 ["TopLeft"]
  SUB R8 R9 R10
  NAMECALL R6 R6 K22 ["floorVector2"]
  CALL R6 2 1
  MOVE R5 R6
  GETUPVAL R7 2
  ADD R6 R7 R5
  GETUPVAL R7 9
  GETUPVAL R9 2
  SUB R8 R6 R9
  CALL R7 1 0
  GETUPVAL R6 3
  MOVE R8 R3
  NAMECALL R6 R6 K23 ["updateSelectionAdorns"]
  CALL R6 2 0
  GETUPVAL R6 10
  MOVE R8 R1
  NAMECALL R6 R6 K24 ["onMoveChanged"]
  CALL R6 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["hasFilteredSelection"]
  CALL R1 1 1
  JUMPIF R1 [+9]
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["hideSelection"]
  CALL R1 1 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K2 ["setToDefaultIcon"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K3 ["updateSelectionPosition"]
  CALL R1 1 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K4 ["showSelection"]
  CALL R1 1 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K5 ["setToMoveIcon"]
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETIMPORT R4 K2 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 -1
  NAMECALL R2 R2 K3 ["startDrag"]
  CALL R2 -1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R1
  CALL R3 1 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K4 ["finishDrag"]
  CALL R2 2 0
  RETURN R0 0

PROTO_14:
  SETUPVAL R1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["AdornmentModule"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Analytics"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Convert"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Extents2D"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K9 ["FFlag"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K10 ["GlobalValues"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K11 ["MouseIconManager"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K12 ["RotateUtility"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K13 ["Select"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K14 ["SelectionManager"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K4 ["Parent"]
  GETTABLEKS R11 R12 K15 ["SnappingPointManager"]
  CALL R10 1 1
  GETIMPORT R11 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K4 ["Parent"]
  GETTABLEKS R12 R13 K16 ["Utility"]
  CALL R11 1 1
  GETIMPORT R12 K1 [require]
  GETIMPORT R15 K3 [script]
  GETTABLEKS R14 R15 K4 ["Parent"]
  GETTABLEKS R13 R14 K7 ["Convert"]
  CALL R12 1 1
  GETIMPORT R13 K1 [require]
  GETIMPORT R17 K3 [script]
  GETTABLEKS R16 R17 K4 ["Parent"]
  GETTABLEKS R15 R16 K17 ["Enum"]
  GETTABLEKS R14 R15 K18 ["SnappingType"]
  CALL R13 1 1
  GETIMPORT R14 K20 [game]
  LOADK R16 K21 ["UserInputService"]
  NAMECALL R14 R14 K22 ["GetService"]
  CALL R14 2 1
  GETIMPORT R15 K20 [game]
  LOADK R17 K23 ["ChangeHistoryService"]
  NAMECALL R15 R15 K22 ["GetService"]
  CALL R15 2 1
  GETIMPORT R16 K20 [game]
  LOADK R18 K24 ["UIEditorRotateTranslationVector"]
  LOADB R19 0
  NAMECALL R16 R16 K25 ["DefineFastFlag"]
  CALL R16 3 1
  LOADNIL R17
  LOADNIL R18
  LOADB R19 0
  LOADB R20 0
  NEWTABLE R21 0 0
  LOADNIL R22
  DUPCLOSURE R23 K26 [PROTO_0]
  NEWCLOSURE R24 P1
  CAPTURE REF R21
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R12
  NEWCLOSURE R25 P2
  CAPTURE VAL R24
  CAPTURE REF R18
  DUPCLOSURE R26 K27 [PROTO_3]
  DUPCLOSURE R27 K28 [PROTO_4]
  CAPTURE VAL R27
  DUPCLOSURE R28 K29 [PROTO_5]
  DUPCLOSURE R29 K30 [PROTO_6]
  SETGLOBAL R29 K31 ["getHighestZIndexOfSelfAndDescendants"]
  DUPCLOSURE R29 K32 [PROTO_7]
  SETGLOBAL R29 K33 ["incrementZIndexOfSelfAndDescendantsBy"]
  NEWTABLE R29 16 0
  NEWCLOSURE R30 P8
  CAPTURE REF R19
  SETTABLEKS R30 R29 K34 ["isDragInProgress"]
  NEWCLOSURE R30 P9
  CAPTURE REF R21
  CAPTURE VAL R9
  CAPTURE REF R18
  CAPTURE REF R19
  CAPTURE REF R20
  CAPTURE REF R22
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE REF R17
  SETTABLEKS R30 R29 K35 ["startDrag"]
  NEWCLOSURE R30 P10
  CAPTURE REF R20
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE REF R19
  CAPTURE REF R18
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE REF R17
  SETTABLEKS R30 R29 K36 ["finishDrag"]
  NEWCLOSURE R30 P11
  CAPTURE REF R20
  CAPTURE VAL R11
  CAPTURE REF R18
  CAPTURE VAL R0
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE REF R22
  CAPTURE VAL R10
  CAPTURE VAL R24
  CAPTURE REF R17
  SETTABLEKS R30 R29 K37 ["updateDrag"]
  DUPCLOSURE R30 K38 [PROTO_12]
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R6
  SETTABLEKS R30 R29 K39 ["onSelectionChanged"]
  DUPCLOSURE R30 K40 [PROTO_13]
  CAPTURE VAL R29
  CAPTURE VAL R24
  CAPTURE VAL R26
  SETTABLEKS R30 R29 K41 ["bump"]
  NEWCLOSURE R30 P14
  CAPTURE REF R17
  SETTABLEKS R30 R29 K42 ["setActionMediator"]
  LOADN R30 1
  SETTABLEKS R30 R29 K43 ["UP"]
  LOADN R30 2
  SETTABLEKS R30 R29 K44 ["DOWN"]
  LOADN R30 3
  SETTABLEKS R30 R29 K45 ["LEFT"]
  LOADN R30 4
  SETTABLEKS R30 R29 K46 ["RIGHT"]
  CLOSEUPVALS R17
  RETURN R29 1
