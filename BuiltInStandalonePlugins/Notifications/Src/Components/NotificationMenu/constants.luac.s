MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 2
  LOADK R1 K0 ["MarkAllAsRead"]
  LOADK R2 K1 ["Settings"]
  SETLIST R0 R1 2 [1]
  GETIMPORT R1 K5 [Enum.Font.SourceSans]
  LENGTH R2 R0
  MULK R3 R2 K6 [36]
  SUBK R4 R3 K7 [2]
  DIV R5 R4 R2
  DUPTABLE R6 K19 [{"MENU_OPTIONS", "BORDER_SIZE", "HORIZONTAL_BUFFER", "LEFT_RIGHT_BUTTON_PADDING", "TEXT_FONT", "TEXT_SIZE", "NUMBER_OF_OPTIONS", "TOTAL_MENU_HEIGHT", "TEXT_WIDTH_PADDING", "INNER_MENU_HEIGHT", "BUTTON_HEIGHT"}]
  SETTABLEKS R0 R6 K8 ["MENU_OPTIONS"]
  LOADN R7 1
  SETTABLEKS R7 R6 K9 ["BORDER_SIZE"]
  LOADN R7 4
  SETTABLEKS R7 R6 K10 ["HORIZONTAL_BUFFER"]
  LOADN R7 8
  SETTABLEKS R7 R6 K11 ["LEFT_RIGHT_BUTTON_PADDING"]
  SETTABLEKS R1 R6 K12 ["TEXT_FONT"]
  LOADN R7 18
  SETTABLEKS R7 R6 K13 ["TEXT_SIZE"]
  SETTABLEKS R2 R6 K14 ["NUMBER_OF_OPTIONS"]
  SETTABLEKS R3 R6 K15 ["TOTAL_MENU_HEIGHT"]
  LOADN R7 20
  SETTABLEKS R7 R6 K16 ["TEXT_WIDTH_PADDING"]
  SETTABLEKS R4 R6 K17 ["INNER_MENU_HEIGHT"]
  SETTABLEKS R5 R6 K18 ["BUTTON_HEIGHT"]
  RETURN R6 1
