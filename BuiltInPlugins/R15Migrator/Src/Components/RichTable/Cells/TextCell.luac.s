PROTO_0:
  GETTABLEKS R1 R0 K0 ["Value"]
  GETTABLEKS R2 R0 K1 ["Style"]
  GETTABLEKS R3 R0 K2 ["Width"]
  JUMPIF R3 [+9]
  GETIMPORT R3 K5 [UDim.new]
  LOADN R5 1
  GETTABLEKS R7 R0 K6 ["Columns"]
  LENGTH R6 R7
  DIV R4 R5 R6
  LOADN R5 0
  CALL R3 2 1
  GETTABLEKS R5 R0 K7 ["Emphasis"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K8 ["BackgroundOdd"]
  JUMP [+2]
  GETTABLEKS R4 R2 K9 ["BackgroundEven"]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K11 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K12 ["number"] [+14]
  FASTCALL1 MATH_FLOOR R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K15 [math.floor]
  CALL R6 1 1
  JUMPIFEQ R6 R1 [+7]
  GETIMPORT R5 K18 [string.format]
  LOADK R6 K19 ["%.3f"]
  MOVE R7 R1
  CALL R5 2 1
  JUMP [+5]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K21 [tostring]
  CALL R5 1 1
  GETTABLEKS R7 R0 K22 ["Tooltip"]
  OR R6 R7 R5
  LOADB R7 0
  JUMPIFEQKNIL R6 [+5]
  JUMPIFNOTEQKS R6 K23 [""] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K24 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K32 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
  GETTABLEKS R11 R0 K33 ["ColumnIndex"]
  SETTABLEKS R11 R10 K25 ["LayoutOrder"]
  DUPTABLE R11 K38 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K34 ["Top"]
  LOADN R12 1
  SETTABLEKS R12 R11 K35 ["Bottom"]
  LOADN R12 5
  SETTABLEKS R12 R11 K36 ["Left"]
  LOADN R12 5
  SETTABLEKS R12 R11 K37 ["Right"]
  SETTABLEKS R11 R10 K26 ["Padding"]
  LOADK R11 K39 ["Box"]
  SETTABLEKS R11 R10 K1 ["Style"]
  SETTABLEKS R4 R10 K27 ["BackgroundColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K28 ["BorderSizePixel"]
  GETTABLEKS R11 R2 K40 ["Border"]
  SETTABLEKS R11 R10 K29 ["BorderColor3"]
  GETIMPORT R11 K42 [UDim2.new]
  GETTABLEKS R12 R3 K43 ["Scale"]
  GETTABLEKS R13 R3 K44 ["Offset"]
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K30 ["Size"]
  LOADB R11 1
  SETTABLEKS R11 R10 K31 ["ClipsDescendants"]
  DUPTABLE R11 K46 [{"Text", "Tooltip"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K24 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K49 [{"Text", "TextTruncate", "Size", "TextXAlignment"}]
  SETTABLEKS R5 R14 K45 ["Text"]
  GETIMPORT R15 K52 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R15 R14 K47 ["TextTruncate"]
  GETIMPORT R15 K54 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["Size"]
  GETIMPORT R15 K55 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K48 ["TextXAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K45 ["Text"]
  MOVE R12 R7
  JUMPIFNOT R12 [+18]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K24 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K57 [{"MaxWidth", "Text", "TextXAlignment"}]
  GETTABLEKS R16 R2 K22 ["Tooltip"]
  GETTABLEKS R15 R16 K56 ["MaxWidth"]
  SETTABLEKS R15 R14 K56 ["MaxWidth"]
  SETTABLEKS R6 R14 K45 ["Text"]
  GETIMPORT R15 K55 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K48 ["TextXAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["Tooltip"]
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
  GETTABLEKS R6 R3 K12 ["TextLabel"]
  DUPCLOSURE R7 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R7 1
