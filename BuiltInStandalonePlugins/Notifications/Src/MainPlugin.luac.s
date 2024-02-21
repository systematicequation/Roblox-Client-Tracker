PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioWidgetsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RibbonNotificationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["state"]
  GETTABLEKS R5 R6 K1 ["enabled"]
  NOT R4 R5
  AND R3 R4 R0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["state"]
  GETTABLEKS R4 R5 K2 ["widget"]
  JUMPIFNOT R4 [+54]
  JUMPIF R3 [+1]
  JUMPIFNOT R1 [+52]
  GETUPVAL R4 1
  LOADK R6 K3 ["whatsNewAction"]
  NAMECALL R4 R4 K4 ["GetWidgetFromLabel"]
  CALL R4 2 1
  GETIMPORT R5 K7 [Instance.new]
  LOADK R6 K8 ["StudioAttachment"]
  CALL R5 1 1
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["IsArrowVisible"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["attachmentInfo"]
  GETTABLEKS R6 R7 K11 ["SourceAnchorPoint"]
  SETTABLEKS R6 R5 K11 ["SourceAnchorPoint"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["attachmentInfo"]
  GETTABLEKS R6 R7 K12 ["TargetAnchorPoint"]
  SETTABLEKS R6 R5 K12 ["TargetAnchorPoint"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["attachmentInfo"]
  GETTABLEKS R6 R7 K13 ["Offset"]
  SETTABLEKS R6 R5 K13 ["Offset"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["state"]
  GETTABLEKS R6 R7 K2 ["widget"]
  LOADB R7 1
  SETTABLEKS R7 R6 K14 ["Enabled"]
  GETUPVAL R6 1
  MOVE R8 R4
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["state"]
  GETTABLEKS R9 R10 K2 ["widget"]
  MOVE R10 R5
  NAMECALL R6 R6 K15 ["AttachPluginGui"]
  CALL R6 4 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["state"]
  GETTABLEKS R4 R5 K2 ["widget"]
  JUMPIFNOT R4 [+8]
  JUMPIFNOT R3 [+7]
  JUMPIFNOT R2 [+6]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K16 ["eventHandlers"]
  GETTABLEKS R4 R5 K17 ["trayOpened"]
  CALL R4 0 0
  GETUPVAL R4 0
  DUPTABLE R6 K18 [{"enabled"}]
  SETTABLEKS R0 R6 K1 ["enabled"]
  NAMECALL R4 R4 K19 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toggleEnabled"]
  MOVE R3 R0
  LOADB R4 0
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["DatamodelSessionLoadedAttachmentInfo"]
  SETTABLEKS R2 R1 K1 ["attachmentInfo"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["enabled"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["toggleEnabled"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["enabled"]
  LOADB R3 1
  LOADB R4 0
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["DatamodelSessionUnloadedAttachmentInfo"]
  SETTABLEKS R2 R1 K1 ["attachmentInfo"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["enabled"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["toggleEnabled"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["enabled"]
  LOADB R3 1
  LOADB R4 0
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R2 K2 [{"enabled", "widget"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["widget"]
  SETTABLEKS R2 R0 K3 ["state"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["DatamodelSessionUnloadedAttachmentInfo"]
  SETTABLEKS R2 R0 K5 ["attachmentInfo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K6 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["onWidgetEnabledChanged"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K10 ["Localization"]
  GETTABLEKS R2 R3 K11 ["new"]
  DUPTABLE R3 K15 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K12 ["stringResourceTable"]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K13 ["translationResourceTable"]
  LOADK R4 K16 ["Notifications"]
  SETTABLEKS R4 R3 K14 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K17 ["localization"]
  GETUPVAL R2 6
  GETTABLEKS R3 R1 K18 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K19 ["design"]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K20 ["ToggleNotificationTray"]
  NEWCLOSURE R4 P4
  CAPTURE VAL R0
  NAMECALL R2 R2 K21 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K22 ["toggleNotificationTrayConnection"]
  GETTABLEKS R3 R1 K18 ["Plugin"]
  GETTABLEKS R2 R3 K23 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R3 R2 K24 ["DataModelSessionStarted"]
  NEWCLOSURE R5 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K21 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K25 ["dmOpenSession"]
  GETTABLEKS R3 R2 K26 ["DataModelSessionEnded"]
  NEWCLOSURE R5 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K21 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K27 ["dmCloseSession"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["widget"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["Plugin"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["Name"]
  DUPTABLE R4 K10 [{"Size", "MinSize", "Modal", "Callout", "InitialEnabled"}]
  GETIMPORT R5 K13 [Vector2.new]
  GETUPVAL R6 1
  GETUPVAL R7 2
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Size"]
  GETIMPORT R5 K13 [Vector2.new]
  GETUPVAL R6 1
  GETUPVAL R7 2
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["MinSize"]
  LOADB R5 0
  SETTABLEKS R5 R4 K7 ["Modal"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["Callout"]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["InitialEnabled"]
  NAMECALL R1 R1 K14 ["CreateQWidgetPluginGui"]
  CALL R1 3 1
  DUPTABLE R4 K15 [{"widget"}]
  SETTABLEKS R1 R4 K1 ["widget"]
  NAMECALL R2 R0 K16 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["toggleNotificationTrayConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["dmOpenSession"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["dmCloseSession"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETTABLEKS R6 R0 K1 ["state"]
  GETTABLEKS R5 R6 K4 ["widget"]
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["provide"]
  NEWTABLE R6 0 6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["new"]
  NAMECALL R9 R3 K7 ["getMouse"]
  CALL R9 1 -1
  CALL R8 -1 1
  GETUPVAL R10 3
  CALL R10 0 1
  JUMPIFNOT R10 [+9]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K6 ["new"]
  GETTABLEKS R11 R0 K1 ["state"]
  GETTABLEKS R10 R11 K4 ["widget"]
  CALL R9 1 1
  JUMP [+1]
  LOADNIL R9
  GETUPVAL R10 5
  CALL R10 0 1
  GETTABLEKS R11 R0 K8 ["localization"]
  GETUPVAL R12 6
  SETLIST R6 R7 6 [1]
  DUPTABLE R7 K10 [{"MainWidget"}]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K11 ["createElement"]
  GETUPVAL R9 8
  NEWTABLE R10 16 0
  LOADK R11 K12 ["StudioNotifications"]
  SETTABLEKS R11 R10 K13 ["Id"]
  SETTABLEKS R4 R10 K14 ["Enabled"]
  GETTABLEKS R11 R0 K8 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K15 ["Name"]
  NAMECALL R11 R11 K16 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K17 ["Title"]
  GETIMPORT R11 K21 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K19 ["ZIndexBehavior"]
  GETIMPORT R11 K24 [Enum.InitialDockState.Left]
  SETTABLEKS R11 R10 K22 ["InitialDockState"]
  GETIMPORT R11 K26 [Vector2.new]
  GETUPVAL R12 9
  GETUPVAL R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["Size"]
  GETIMPORT R11 K26 [Vector2.new]
  GETUPVAL R12 9
  GETUPVAL R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["MinSize"]
  GETTABLEKS R11 R0 K29 ["onClose"]
  SETTABLEKS R11 R10 K30 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K31 ["ShouldRestore"]
  GETTABLEKS R11 R0 K32 ["onRestore"]
  SETTABLEKS R11 R10 K33 ["OnWidgetRestored"]
  GETTABLEKS R12 R0 K1 ["state"]
  GETTABLEKS R11 R12 K4 ["widget"]
  SETTABLEKS R11 R10 K34 ["Widget"]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K35 ["Change"]
  GETTABLEKS R11 R12 K14 ["Enabled"]
  GETTABLEKS R12 R0 K36 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K39 [{"AppWithProvider", "StyleLink"}]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K11 ["createElement"]
  GETUPVAL R13 11
  DUPTABLE R14 K41 [{"trayVisible"}]
  SETTABLEKS R4 R14 K40 ["trayVisible"]
  DUPTABLE R15 K43 [{"App"}]
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 12
  CALL R16 1 1
  SETTABLEKS R16 R15 K42 ["App"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K37 ["AppWithProvider"]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K38 ["StyleLink"]
  DUPTABLE R14 K45 [{"StyleSheet"}]
  GETTABLEKS R15 R0 K46 ["design"]
  SETTABLEKS R15 R14 K44 ["StyleSheet"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K38 ["StyleLink"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["MainWidget"]
  LOADB R8 1
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
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
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R2 K9 ["Styling"]
  GETTABLEKS R5 R3 K10 ["DockWidget"]
  GETIMPORT R6 K12 [pcall]
  DUPCLOSURE R7 K13 [PROTO_0]
  CALL R6 1 2
  JUMPIFNOT R6 [+2]
  MOVE R8 R7
  JUMP [+1]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  DUPCLOSURE R10 K14 [PROTO_1]
  CALL R9 1 2
  JUMPIFNOT R9 [+2]
  MOVE R11 R10
  JUMP [+1]
  LOADNIL R11
  GETTABLEKS R12 R2 K15 ["ContextServices"]
  GETTABLEKS R13 R4 K16 ["registerPluginStyles"]
  GETTABLEKS R14 R12 K17 ["Plugin"]
  GETTABLEKS R15 R12 K18 ["Mouse"]
  GETTABLEKS R16 R12 K19 ["Focus"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K20 ["Src"]
  GETTABLEKS R19 R20 K21 ["Contexts"]
  GETTABLEKS R18 R19 K22 ["AnalyticsContext"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K20 ["Src"]
  GETTABLEKS R20 R21 K21 ["Contexts"]
  GETTABLEKS R19 R20 K23 ["TrayVisibleProvider"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K20 ["Src"]
  GETTABLEKS R21 R22 K24 ["Resources"]
  GETTABLEKS R20 R21 K25 ["MakeTheme"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K20 ["Src"]
  GETTABLEKS R22 R23 K26 ["Util"]
  GETTABLEKS R21 R22 K27 ["AttachmentConstants"]
  CALL R20 1 1
  GETTABLEKS R24 R0 K20 ["Src"]
  GETTABLEKS R23 R24 K24 ["Resources"]
  GETTABLEKS R22 R23 K28 ["Localization"]
  GETTABLEKS R21 R22 K29 ["SourceStrings"]
  GETTABLEKS R25 R0 K20 ["Src"]
  GETTABLEKS R24 R25 K24 ["Resources"]
  GETTABLEKS R23 R24 K28 ["Localization"]
  GETTABLEKS R22 R23 K30 ["LocalizedStrings"]
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K20 ["Src"]
  GETTABLEKS R25 R26 K26 ["Util"]
  GETTABLEKS R24 R25 K31 ["TraySize"]
  CALL R23 1 1
  GETTABLEKS R24 R23 K32 ["TRAY_WIDTH"]
  GETTABLEKS R25 R23 K33 ["TRAY_HEIGHT"]
  GETTABLEKS R27 R0 K20 ["Src"]
  GETTABLEKS R26 R27 K34 ["Components"]
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R26 K35 ["App"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R32 R0 K20 ["Src"]
  GETTABLEKS R31 R32 K26 ["Util"]
  GETTABLEKS R30 R31 K36 ["SharedFlags"]
  GETTABLEKS R29 R30 K37 ["getFFlagNotificationsMarkAllAsRead"]
  CALL R28 1 1
  GETTABLEKS R29 R1 K38 ["PureComponent"]
  LOADK R31 K39 ["MainPlugin"]
  NAMECALL R29 R29 K40 ["extend"]
  CALL R29 2 1
  DUPCLOSURE R30 K41 [PROTO_9]
  CAPTURE VAL R20
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R30 R29 K42 ["init"]
  DUPCLOSURE R30 K43 [PROTO_10]
  CAPTURE VAL R0
  CAPTURE VAL R24
  CAPTURE VAL R25
  SETTABLEKS R30 R29 K44 ["didMount"]
  DUPCLOSURE R30 K45 [PROTO_11]
  SETTABLEKS R30 R29 K46 ["willUnmount"]
  DUPCLOSURE R30 K47 [PROTO_12]
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R28
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R18
  CAPTURE VAL R27
  SETTABLEKS R30 R29 K48 ["render"]
  RETURN R29 1
