PROTO_0:
  GETUPVAL R0 0
  GETIMPORT R1 K2 [Vector2.new]
  LOADN R2 0
  LOADN R3 0
  CALL R1 2 -1
  CALL R0 -1 2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 3
  DUPTABLE R5 K7 [{"Size", "Layout", "VerticalAlignment"}]
  GETIMPORT R6 K10 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["Size"]
  GETIMPORT R6 K14 [Enum.FillDirection.Vertical]
  SETTABLEKS R6 R5 K5 ["Layout"]
  GETIMPORT R6 K16 [Enum.VerticalAlignment.Top]
  SETTABLEKS R6 R5 K6 ["VerticalAlignment"]
  DUPTABLE R6 K20 [{"Toolbar", "ToolSettings", "ToolGizmos"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K23 [{"LayoutOrder", "OnAbsoluteSizeChanged"}]
  NAMECALL R10 R2 K24 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["LayoutOrder"]
  SETTABLEKS R1 R9 K22 ["OnAbsoluteSizeChanged"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K17 ["Toolbar"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K25 [{"LayoutOrder", "Size"}]
  NAMECALL R10 R2 K24 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["LayoutOrder"]
  GETIMPORT R10 K26 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  GETTABLEKS R15 R0 K27 ["Y"]
  MINUS R14 R15
  CALL R10 4 1
  SETTABLEKS R10 R9 K4 ["Size"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["ToolSettings"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K25 [{"LayoutOrder", "Size"}]
  NAMECALL R10 R2 K24 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["LayoutOrder"]
  GETIMPORT R10 K26 [UDim2.new]
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["Size"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["ToolGizmos"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["LayoutOrderIterator"]
  GETTABLEKS R4 R1 K11 ["useState"]
  GETTABLEKS R5 R2 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["Pane"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["Toolbar"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K17 ["ToolGizmos"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K18 ["ToolSettings"]
  CALL R9 1 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R10 1
