PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["eventHandlers"]
  GETTABLEKS R0 R1 K2 ["settingsButtonClicked"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setMenuVisible"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["menuVisible"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["setMenuVisible"]
  LOADB R4 0
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["trayVisible"]
  JUMPIF R0 [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["setMenuVisible"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["useContext"]
  GETUPVAL R5 4
  CALL R4 1 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["useCallback"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  NEWTABLE R8 0 1
  MOVE R9 R4
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R7 7
  CALL R7 0 1
  JUMPIFNOT R7 [+102]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["useCallback"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R4
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["useEffect"]
  NEWCLOSURE R9 P3
  CAPTURE VAL R3
  CAPTURE VAL R4
  NEWTABLE R10 0 1
  GETTABLEKS R11 R3 K4 ["trayVisible"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K6 ["Frame"]
  NEWTABLE R10 2 0
  GETTABLEKS R11 R0 K7 ["LayoutOrder"]
  SETTABLEKS R11 R10 K7 ["LayoutOrder"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K8 ["Tag"]
  LOADK R12 K9 ["Component-NotificationHeader"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K13 [{"Title", "MoreOptionsFrame", "DropdownMenu"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K14 ["TextLabel"]
  DUPTABLE R14 K16 [{"Text"}]
  LOADK R17 K17 ["Plugin"]
  LOADK R18 K18 ["Name"]
  NAMECALL R15 R1 K19 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K15 ["Text"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["Title"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K6 ["Frame"]
  NEWTABLE R14 0 0
  DUPTABLE R15 K21 [{"MoreOptionsButton"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K5 ["createElement"]
  LOADK R17 K22 ["ImageButton"]
  NEWTABLE R18 4 0
  LOADB R19 0
  SETTABLEKS R19 R18 K23 ["AutoButtonColor"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K24 ["Event"]
  GETTABLEKS R19 R20 K25 ["MouseButton1Click"]
  SETTABLE R6 R18 R19
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K8 ["Tag"]
  LOADK R20 K26 ["Plugin-Icon-ThreeDots"]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLEKS R16 R15 K20 ["MoreOptionsButton"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K11 ["MoreOptionsFrame"]
  GETTABLEKS R13 R4 K27 ["menuVisible"]
  JUMPIFNOT R13 [+9]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K29 [{"OnDropdownMenuFocusLost"}]
  SETTABLEKS R7 R14 K28 ["OnDropdownMenuFocusLost"]
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K12 ["DropdownMenu"]
  CALL R8 3 -1
  RETURN R8 -1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K6 ["Frame"]
  NEWTABLE R9 2 0
  GETTABLEKS R10 R0 K7 ["LayoutOrder"]
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["Tag"]
  LOADK R11 K9 ["Component-NotificationHeader"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K31 [{"Title", "SettingsFrame"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K14 ["TextLabel"]
  DUPTABLE R13 K32 [{"Text", "LayoutOrder"}]
  LOADK R16 K17 ["Plugin"]
  LOADK R17 K18 ["Name"]
  NAMECALL R14 R1 K19 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K15 ["Text"]
  LOADN R14 1
  SETTABLEKS R14 R13 K7 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["Title"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K6 ["Frame"]
  DUPTABLE R13 K33 [{"LayoutOrder"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K7 ["LayoutOrder"]
  DUPTABLE R14 K35 [{"SettingsButton"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K5 ["createElement"]
  LOADK R16 K22 ["ImageButton"]
  NEWTABLE R17 2 0
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K24 ["Event"]
  GETTABLEKS R18 R19 K25 ["MouseButton1Click"]
  SETTABLE R5 R17 R18
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K8 ["Tag"]
  LOADK R19 K36 ["Plugin-Icon-NotificationSettings"]
  SETTABLE R19 R17 R18
  CALL R15 2 1
  SETTABLEKS R15 R14 K34 ["SettingsButton"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K30 ["SettingsFrame"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K8 ["RobloxAPI"]
  GETTABLEKS R4 R5 K9 ["Url"]
  GETTABLEKS R3 R4 K10 ["new"]
  CALL R3 0 1
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETIMPORT R5 K14 [game]
  LOADK R7 K15 ["GuiService"]
  NAMECALL R5 R5 K16 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K17 ["Src"]
  GETTABLEKS R8 R9 K18 ["Contexts"]
  GETTABLEKS R7 R8 K19 ["TrayVisibleContext"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K17 ["Src"]
  GETTABLEKS R9 R10 K18 ["Contexts"]
  GETTABLEKS R8 R9 K20 ["MenuVisibleContext"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K21 ["NotificationMenu"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["Contexts"]
  GETTABLEKS R10 R11 K22 ["AnalyticsContext"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K23 ["Util"]
  GETTABLEKS R12 R13 K24 ["SharedFlags"]
  GETTABLEKS R11 R12 K25 ["getFFlagNotificationsMarkAllAsRead"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K26 ["composeUrl"]
  GETTABLEKS R12 R3 K27 ["CREATOR_HUB_URL"]
  LOADK R13 K28 ["settings/notifications"]
  CALL R11 2 1
  DUPCLOSURE R12 K29 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R8
  RETURN R12 1
