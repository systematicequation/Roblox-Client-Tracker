PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClick"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["ColumnIndex"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["RowIndex"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Value"]
  JUMPIFEQKB R1 TRUE [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R3 R0 K1 ["Style"]
  GETTABLEKS R4 R0 K2 ["Width"]
  JUMPIF R4 [+9]
  GETIMPORT R4 K5 [UDim.new]
  LOADN R6 1
  GETTABLEKS R8 R0 K6 ["Columns"]
  LENGTH R7 R8
  DIV R5 R6 R7
  LOADN R6 0
  CALL R4 2 1
  GETTABLEKS R6 R0 K7 ["Emphasis"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K8 ["BackgroundOdd"]
  JUMP [+2]
  GETTABLEKS R5 R3 K9 ["BackgroundEven"]
  GETTABLEKS R6 R0 K10 ["Tooltip"]
  LOADB R7 0
  JUMPIFEQKNIL R6 [+5]
  JUMPIFNOTEQKS R6 K11 [""] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K20 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
  GETTABLEKS R11 R0 K21 ["ColumnIndex"]
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  DUPTABLE R11 K26 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R12 4
  SETTABLEKS R12 R11 K22 ["Top"]
  LOADN R12 4
  SETTABLEKS R12 R11 K23 ["Bottom"]
  LOADN R12 4
  SETTABLEKS R12 R11 K24 ["Left"]
  LOADN R12 4
  SETTABLEKS R12 R11 K25 ["Right"]
  SETTABLEKS R11 R10 K14 ["Padding"]
  LOADK R11 K27 ["Box"]
  SETTABLEKS R11 R10 K1 ["Style"]
  SETTABLEKS R5 R10 K15 ["BackgroundColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K16 ["BorderSizePixel"]
  GETTABLEKS R11 R3 K28 ["Border"]
  SETTABLEKS R11 R10 K17 ["BorderColor3"]
  GETIMPORT R11 K30 [UDim2.new]
  GETTABLEKS R12 R4 K31 ["Scale"]
  GETTABLEKS R13 R4 K32 ["Offset"]
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K18 ["Size"]
  LOADB R11 1
  SETTABLEKS R11 R10 K19 ["ClipsDescendants"]
  DUPTABLE R11 K34 [{"Checkbox", "Tooltip"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K37 [{"Checked", "OnClick"}]
  SETTABLEKS R2 R14 K35 ["Checked"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K36 ["OnClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["Checkbox"]
  MOVE R12 R7
  JUMPIFNOT R12 [+18]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K41 [{"MaxWidth", "Text", "TextXAlignment"}]
  GETTABLEKS R16 R3 K10 ["Tooltip"]
  GETTABLEKS R15 R16 K38 ["MaxWidth"]
  SETTABLEKS R15 R14 K38 ["MaxWidth"]
  SETTABLEKS R6 R14 K39 ["Text"]
  GETIMPORT R15 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K40 ["TextXAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["Tooltip"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Pane"]
  GETTABLEKS R5 R3 K11 ["Tooltip"]
  GETTABLEKS R6 R3 K12 ["Checkbox"]
  DUPCLOSURE R7 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R7 1
