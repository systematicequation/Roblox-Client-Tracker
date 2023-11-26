PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Columns"]
  GETTABLEKS R4 R1 K2 ["ColumnIndex"]
  GETTABLE R2 R3 R4
  GETTABLEKS R3 R2 K3 ["Key"]
  GETTABLEKS R4 R1 K4 ["Width"]
  JUMPIF R4 [+9]
  GETIMPORT R4 K7 [UDim.new]
  LOADN R6 1
  GETTABLEKS R8 R1 K1 ["Columns"]
  LENGTH R7 R8
  DIV R5 R6 R7
  LOADN R6 0
  CALL R4 2 1
  GETTABLEKS R5 R1 K8 ["Row"]
  GETTABLEKS R6 R1 K9 ["CellProps"]
  GETTABLEKS R8 R5 K10 ["item"]
  GETTABLE R7 R8 R3
  JUMPIFEQKS R3 K11 ["isEnabled"] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIFEQKS R3 K12 ["continueExecution"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  JUMPIFEQKS R3 K13 ["removeOnHit"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETUPVAL R11 0
  GETTABLEKS R12 R1 K14 ["Style"]
  GETTABLEKS R13 R6 K15 ["CellStyle"]
  CALL R11 2 1
  GETTABLEKS R14 R1 K17 ["RowIndex"]
  MODK R13 R14 K16 [2]
  JUMPIFNOTEQKN R13 K18 [1] [+4]
  GETTABLEKS R12 R11 K19 ["BackgroundOdd"]
  JUMPIF R12 [+2]
  GETTABLEKS R12 R11 K20 ["BackgroundEven"]
  GETTABLEKS R13 R1 K21 ["HighlightCell"]
  JUMPIFNOT R13 [+24]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K22 ["Hover"]
  GETTABLE R13 R11 R14
  JUMPIFNOT R13 [+19]
  GETTABLEKS R15 R1 K17 ["RowIndex"]
  MODK R14 R15 K16 [2]
  JUMPIFNOTEQKN R14 K18 [1] [+8]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K22 ["Hover"]
  GETTABLE R14 R11 R15
  GETTABLEKS R13 R14 K19 ["BackgroundOdd"]
  JUMPIF R13 [+6]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K22 ["Hover"]
  GETTABLE R14 R11 R15
  GETTABLEKS R13 R14 K20 ["BackgroundEven"]
  MOVE R12 R13
  GETTABLEKS R14 R5 K10 ["item"]
  GETTABLEKS R13 R14 K23 ["children"]
  JUMPIFNOT R13 [+10]
  GETTABLEKS R16 R5 K10 ["item"]
  GETTABLEKS R15 R16 K23 ["children"]
  LENGTH R14 R15
  LOADN R15 0
  JUMPIFLT R15 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIFNOT R8 [+23]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K27 [{"ColumnIndex", "Row", "Style", "HasChildren", "BackgroundColor", "Width", "CellProps"}]
  GETTABLEKS R17 R1 K2 ["ColumnIndex"]
  SETTABLEKS R17 R16 K2 ["ColumnIndex"]
  SETTABLEKS R5 R16 K8 ["Row"]
  SETTABLEKS R11 R16 K14 ["Style"]
  SETTABLEKS R13 R16 K25 ["HasChildren"]
  SETTABLEKS R12 R16 K26 ["BackgroundColor"]
  SETTABLEKS R4 R16 K4 ["Width"]
  SETTABLEKS R6 R16 K9 ["CellProps"]
  CALL R14 2 -1
  RETURN R14 -1
  JUMPIFNOT R9 [+19]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K29 [{"Row", "Style", "HasChildren", "BackgroundColor", "Width", "Value"}]
  SETTABLEKS R5 R16 K8 ["Row"]
  SETTABLEKS R11 R16 K14 ["Style"]
  SETTABLEKS R13 R16 K25 ["HasChildren"]
  SETTABLEKS R12 R16 K26 ["BackgroundColor"]
  SETTABLEKS R4 R16 K4 ["Width"]
  SETTABLEKS R7 R16 K28 ["Value"]
  CALL R14 2 -1
  RETURN R14 -1
  JUMPIFNOT R10 [+19]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K29 [{"Row", "Style", "HasChildren", "BackgroundColor", "Width", "Value"}]
  SETTABLEKS R5 R16 K8 ["Row"]
  SETTABLEKS R11 R16 K14 ["Style"]
  SETTABLEKS R13 R16 K25 ["HasChildren"]
  SETTABLEKS R12 R16 K26 ["BackgroundColor"]
  SETTABLEKS R4 R16 K4 ["Width"]
  SETTABLEKS R7 R16 K28 ["Value"]
  CALL R14 2 -1
  RETURN R14 -1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K33 [{"CellProps", "Columns", "ColumnIndex", "Row", "Width", "Style", "RowIndex", "HighlightCell", "OnRightClick", "SetCellContentsWidth", "Emphasis"}]
  GETTABLEKS R17 R1 K9 ["CellProps"]
  SETTABLEKS R17 R16 K9 ["CellProps"]
  GETTABLEKS R17 R1 K1 ["Columns"]
  SETTABLEKS R17 R16 K1 ["Columns"]
  GETTABLEKS R17 R1 K2 ["ColumnIndex"]
  SETTABLEKS R17 R16 K2 ["ColumnIndex"]
  GETTABLEKS R17 R1 K8 ["Row"]
  SETTABLEKS R17 R16 K8 ["Row"]
  GETTABLEKS R17 R1 K4 ["Width"]
  SETTABLEKS R17 R16 K4 ["Width"]
  GETTABLEKS R17 R1 K14 ["Style"]
  SETTABLEKS R17 R16 K14 ["Style"]
  GETTABLEKS R17 R1 K17 ["RowIndex"]
  SETTABLEKS R17 R16 K17 ["RowIndex"]
  GETTABLEKS R17 R1 K21 ["HighlightCell"]
  SETTABLEKS R17 R16 K21 ["HighlightCell"]
  GETTABLEKS R17 R1 K30 ["OnRightClick"]
  SETTABLEKS R17 R16 K30 ["OnRightClick"]
  GETTABLEKS R17 R1 K31 ["SetCellContentsWidth"]
  SETTABLEKS R17 R16 K31 ["SetCellContentsWidth"]
  GETTABLEKS R17 R1 K32 ["Emphasis"]
  SETTABLEKS R17 R16 K32 ["Emphasis"]
  CALL R14 2 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["StyleModifier"]
  GETTABLEKS R4 R2 K10 ["Dash"]
  GETTABLEKS R5 R4 K11 ["join"]
  GETTABLEKS R6 R2 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["Analytics"]
  GETTABLEKS R8 R2 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["TreeTableCell"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K16 ["Src"]
  GETTABLEKS R13 R14 K17 ["Components"]
  GETTABLEKS R12 R13 K18 ["Breakpoints"]
  GETTABLEKS R11 R12 K19 ["BreakpointsEnabledCell"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R15 R0 K16 ["Src"]
  GETTABLEKS R14 R15 K17 ["Components"]
  GETTABLEKS R13 R14 K18 ["Breakpoints"]
  GETTABLEKS R12 R13 K20 ["BreakpointsContinueExecutionCell"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R16 R0 K16 ["Src"]
  GETTABLEKS R15 R16 K17 ["Components"]
  GETTABLEKS R14 R15 K18 ["Breakpoints"]
  GETTABLEKS R13 R14 K21 ["BreakpointsRemoveOnHitCell"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K22 ["PureComponent"]
  LOADK R15 K23 ["BreakpointsTreeTableCell"]
  NAMECALL R13 R13 K24 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K25 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R14 R13 K26 ["render"]
  GETTABLEKS R14 R6 K27 ["withContext"]
  DUPTABLE R15 K28 [{"Analytics"}]
  SETTABLEKS R7 R15 K13 ["Analytics"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
