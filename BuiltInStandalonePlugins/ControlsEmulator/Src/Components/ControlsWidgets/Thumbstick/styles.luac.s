MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["THUMBSTICK_SIZE"]
  GETTABLEKS R5 R3 K14 ["THUMBSTICK_SOCKET_SIZE"]
  MOVE R6 R2
  LOADK R7 K15 [".Widget-Thumbstick"]
  DUPTABLE R8 K18 [{"Size", "BackgroundColor3"}]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 0
  MOVE R11 R5
  LOADN R12 0
  MOVE R13 R5
  CALL R9 4 1
  SETTABLEKS R9 R8 K16 ["Size"]
  LOADK R9 K22 ["$ForegroundMuted"]
  SETTABLEKS R9 R8 K17 ["BackgroundColor3"]
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K23 ["> .Widget-Thumbstick-Stick"]
  DUPTABLE R12 K26 [{"BackgroundColor3", "Size", "Position", "AnchorPoint"}]
  LOADK R13 K27 ["$Foreground"]
  SETTABLEKS R13 R12 K17 ["BackgroundColor3"]
  GETIMPORT R13 K21 [UDim2.new]
  LOADN R14 0
  MOVE R15 R4
  LOADN R16 0
  MOVE R17 R4
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["Size"]
  GETIMPORT R13 K21 [UDim2.new]
  LOADK R14 K28 [0.5]
  LOADN R15 0
  LOADK R16 K28 [0.5]
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K24 ["Position"]
  GETIMPORT R13 K30 [Vector2.new]
  LOADK R14 K28 [0.5]
  LOADK R15 K28 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["AnchorPoint"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  RETURN R6 -1
