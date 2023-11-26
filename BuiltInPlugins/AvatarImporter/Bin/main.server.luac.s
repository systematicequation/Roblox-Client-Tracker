PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["StoreProvider"]
  DUPTABLE R2 K3 [{"store"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K2 ["store"]
  DUPTABLE R3 K5 [{"AvatarImporter"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K7 [{"pluginGui"}]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K6 ["pluginGui"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["AvatarImporter"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["plugin"]
  GETTABLEKS R1 R2 K1 ["enabled"]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["SetActive"]
  CALL R2 2 0
  GETUPVAL R2 1
  SETTABLEKS R1 R2 K3 ["Enabled"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["update"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R2 0 -1
  CALL R0 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Bin"]
  GETTABLEKS R2 R3 K6 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K7 ["src"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["src"]
  GETTABLEKS R3 R4 K9 ["Globals"]
  CALL R2 1 1
  GETIMPORT R3 K11 [plugin]
  SETTABLEKS R3 R2 K10 ["plugin"]
  GETTABLEKS R3 R2 K10 ["plugin"]
  GETTABLEKS R5 R1 K12 ["TOOLBAR_NAME"]
  NAMECALL R3 R3 K13 ["CreateToolbar"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["toolbar"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K15 ["Packages"]
  GETTABLEKS R4 R5 K16 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K15 ["Packages"]
  GETTABLEKS R5 R6 K17 ["Rodux"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K15 ["Packages"]
  GETTABLEKS R6 R7 K18 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["src"]
  GETTABLEKS R8 R9 K19 ["components"]
  GETTABLEKS R7 R8 K20 ["AvatarImporter"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K7 ["src"]
  GETTABLEKS R8 R9 K21 ["reducers"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K7 ["src"]
  GETTABLEKS R10 R11 K22 ["actions"]
  GETTABLEKS R9 R10 K23 ["ClosePlugin"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K7 ["src"]
  GETTABLEKS R11 R12 K22 ["actions"]
  GETTABLEKS R10 R11 K24 ["TogglePlugin"]
  CALL R9 1 1
  GETTABLEKS R11 R4 K25 ["Store"]
  GETTABLEKS R10 R11 K26 ["new"]
  MOVE R11 R7
  LOADNIL R12
  NEWTABLE R13 0 1
  GETTABLEKS R14 R4 K27 ["thunkMiddleware"]
  SETLIST R13 R14 1 [1]
  CALL R10 3 1
  GETTABLEKS R11 R2 K10 ["plugin"]
  GETTABLEKS R13 R1 K28 ["NAME"]
  DUPTABLE R14 K34 [{"Enabled", "Title", "Name", "Modal", "Size"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K29 ["Enabled"]
  GETTABLEKS R15 R1 K35 ["TITLE"]
  SETTABLEKS R15 R14 K30 ["Title"]
  GETTABLEKS R15 R1 K28 ["NAME"]
  SETTABLEKS R15 R14 K31 ["Name"]
  LOADB R15 1
  SETTABLEKS R15 R14 K32 ["Modal"]
  GETIMPORT R15 K37 [Vector2.new]
  GETTABLEKS R16 R1 K38 ["BACKGROUND_WIDTH"]
  GETTABLEKS R17 R1 K39 ["BACKGROUND_HEIGHT"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K33 ["Size"]
  NAMECALL R11 R11 K40 ["CreateQWidgetPluginGui"]
  CALL R11 3 1
  GETTABLEKS R12 R1 K28 ["NAME"]
  SETTABLEKS R12 R11 K31 ["Name"]
  DUPCLOSURE R14 K41 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R8
  NAMECALL R12 R11 K42 ["BindToClose"]
  CALL R12 2 0
  DUPCLOSURE R12 K43 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R11
  GETTABLEKS R13 R3 K44 ["mount"]
  MOVE R14 R12
  CALL R14 0 1
  MOVE R15 R11
  CALL R13 2 1
  GETTABLEKS R14 R2 K14 ["toolbar"]
  GETTABLEKS R16 R1 K45 ["BUTTON_NAME"]
  GETTABLEKS R17 R1 K46 ["BUTTON_TOOLTIP"]
  LOADK R18 K47 ["rbxlocaltheme://AvatarImporter"]
  NAMECALL R14 R14 K48 ["CreateButton"]
  CALL R14 4 1
  GETTABLEKS R15 R14 K49 ["Click"]
  DUPCLOSURE R17 K50 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R9
  NAMECALL R15 R15 K51 ["Connect"]
  CALL R15 2 0
  GETTABLEKS R15 R10 K52 ["changed"]
  DUPCLOSURE R17 K53 [PROTO_3]
  CAPTURE VAL R14
  CAPTURE VAL R11
  NAMECALL R15 R15 K54 ["connect"]
  CALL R15 2 0
  GETIMPORT R17 K56 [settings]
  CALL R17 0 1
  GETTABLEKS R16 R17 K57 ["Studio"]
  GETTABLEKS R15 R16 K58 ["ThemeChanged"]
  DUPCLOSURE R17 K59 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R12
  NAMECALL R15 R15 K51 ["Connect"]
  CALL R15 2 0
  LOADNIL R15
  RETURN R15 1
