PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["SECONDS_IN_MS"]
  DIV R1 R2 R3
  FASTCALL1 MATH_FLOOR R1 [+2]
  GETIMPORT R0 K3 [math.floor]
  CALL R0 1 1
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fromRawValue"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  LOADB R0 1
  GETUPVAL R1 0
  JUMPIFEQKNIL R1 [+6]
  GETUPVAL R1 0
  JUMPIFEQKS R1 K0 [""] [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["markNotificationRead"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K2 ["Index"]
  CALL R0 1 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K3 ["eventHandlers"]
  GETTABLEKS R0 R1 K4 ["notificationClicked"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K5 ["Notification"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["Index"]
  CALL R0 2 0
  GETUPVAL R0 6
  JUMPIF R0 [+9]
  GETUPVAL R0 0
  JUMPIF R0 [+7]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K6 ["notificationClient"]
  GETTABLEKS R0 R1 K1 ["markNotificationRead"]
  GETUPVAL R1 7
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  LOADK R3 K0 ["Notification"]
  LOADK R4 K1 ["notificationId"]
  CALL R1 3 1
  GETUPVAL R2 0
  MOVE R3 R0
  LOADK R4 K0 ["Notification"]
  LOADK R5 K2 ["creatorStreamNotificationContent"]
  LOADK R6 K3 ["title"]
  CALL R2 4 1
  GETUPVAL R3 0
  MOVE R4 R0
  LOADK R5 K0 ["Notification"]
  LOADK R6 K4 ["parameters"]
  CALL R3 3 1
  GETUPVAL R4 0
  MOVE R5 R0
  LOADK R6 K0 ["Notification"]
  LOADK R7 K2 ["creatorStreamNotificationContent"]
  LOADK R8 K5 ["body"]
  CALL R4 4 1
  GETUPVAL R5 0
  MOVE R6 R0
  LOADK R7 K0 ["Notification"]
  LOADK R8 K2 ["creatorStreamNotificationContent"]
  LOADK R9 K6 ["targetId"]
  CALL R5 4 1
  GETUPVAL R6 0
  MOVE R7 R0
  LOADK R8 K0 ["Notification"]
  LOADK R9 K2 ["creatorStreamNotificationContent"]
  LOADK R10 K7 ["targetType"]
  CALL R6 4 1
  GETUPVAL R7 0
  MOVE R8 R0
  LOADK R9 K0 ["Notification"]
  LOADK R10 K8 ["read"]
  CALL R7 3 1
  GETUPVAL R8 0
  MOVE R9 R0
  LOADK R10 K0 ["Notification"]
  LOADK R11 K2 ["creatorStreamNotificationContent"]
  LOADK R12 K9 ["clickAction"]
  CALL R8 4 1
  GETUPVAL R9 0
  MOVE R10 R0
  LOADK R11 K0 ["Notification"]
  LOADK R12 K10 ["createdUtcTimeInMs"]
  CALL R9 3 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["useMemo"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R9
  CAPTURE UPVAL U2
  NEWTABLE R12 0 1
  MOVE R13 R9
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["useMemo"]
  NEWCLOSURE R12 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R6
  NEWTABLE R13 0 1
  MOVE R14 R6
  SETLIST R13 R14 1 [1]
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["useContext"]
  GETUPVAL R13 4
  CALL R12 1 1
  GETUPVAL R13 5
  NAMECALL R13 R13 K13 ["use"]
  CALL R13 1 1
  GETUPVAL R14 6
  MOVE R15 R10
  CALL R14 1 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["useMemo"]
  NEWCLOSURE R16 P2
  CAPTURE VAL R8
  NEWTABLE R17 0 1
  MOVE R18 R8
  SETLIST R17 R18 1 [1]
  CALL R15 2 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K11 ["useMemo"]
  NEWCLOSURE R17 P3
  CAPTURE UPVAL U7
  CAPTURE VAL R5
  CAPTURE VAL R11
  NEWTABLE R18 0 2
  MOVE R19 R5
  MOVE R20 R11
  SETLIST R18 R19 2 [1]
  CALL R16 2 1
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["useMemo"]
  NEWCLOSURE R18 P4
  CAPTURE UPVAL U8
  CAPTURE VAL R5
  CAPTURE VAL R11
  NEWTABLE R19 0 2
  MOVE R20 R5
  MOVE R21 R11
  SETLIST R19 R20 2 [1]
  CALL R17 2 1
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K11 ["useMemo"]
  NEWCLOSURE R19 P5
  CAPTURE UPVAL U9
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWTABLE R20 0 2
  MOVE R21 R2
  MOVE R22 R3
  SETLIST R20 R21 2 [1]
  CALL R18 2 1
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K11 ["useMemo"]
  NEWCLOSURE R20 P6
  CAPTURE UPVAL U10
  CAPTURE VAL R7
  CAPTURE VAL R15
  NEWTABLE R21 0 2
  MOVE R22 R7
  MOVE R23 R15
  SETLIST R21 R22 2 [1]
  CALL R19 2 1
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K14 ["useCallback"]
  NEWCLOSURE R21 P7
  CAPTURE VAL R15
  CAPTURE UPVAL U11
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R0
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R1
  NEWTABLE R22 0 8
  MOVE R23 R8
  MOVE R24 R15
  MOVE R25 R1
  MOVE R26 R7
  GETTABLEKS R27 R0 K15 ["Index"]
  GETTABLEKS R28 R0 K0 ["Notification"]
  MOVE R29 R12
  MOVE R30 R13
  SETLIST R22 R23 8 [1]
  CALL R20 2 1
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K16 ["createElement"]
  LOADK R22 K17 ["Frame"]
  NEWTABLE R23 2 0
  GETTABLEKS R24 R0 K18 ["LayoutOrder"]
  SETTABLEKS R24 R23 K18 ["LayoutOrder"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K19 ["Tag"]
  LOADK R25 K20 ["Component-InnerNotificationCard"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K22 [{"InnerCard"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  LOADK R26 K23 ["TextButton"]
  NEWTABLE R27 8 0
  NOT R28 R15
  SETTABLEKS R28 R27 K24 ["Selectable"]
  NOT R28 R15
  SETTABLEKS R28 R27 K25 ["AutoButtonColor"]
  GETTABLEKS R28 R0 K18 ["LayoutOrder"]
  SETTABLEKS R28 R27 K18 ["LayoutOrder"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K26 ["Event"]
  GETTABLEKS R28 R29 K27 ["MouseButton1Click"]
  SETTABLE R20 R27 R28
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K19 ["Tag"]
  GETUPVAL R30 12
  GETTABLEKS R29 R30 K28 ["joinTags"]
  LOADK R30 K29 ["X-Left"]
  JUMPIFNOT R15 [+2]
  LOADNIL R31
  JUMP [+1]
  LOADK R31 K30 ["Plugin-NotificationCard-Hover"]
  CALL R29 2 1
  SETTABLE R29 R27 R28
  DUPTABLE R28 K34 [{"Icon", "Content", "StatusIndicator"}]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K16 ["createElement"]
  LOADK R30 K35 ["ImageLabel"]
  NEWTABLE R31 4 0
  SETTABLEKS R16 R31 K36 ["Image"]
  LOADN R32 1
  SETTABLEKS R32 R31 K18 ["LayoutOrder"]
  GETUPVAL R33 1
  GETTABLEKS R32 R33 K19 ["Tag"]
  LOADK R34 K37 ["%*"]
  MOVE R36 R17
  NAMECALL R34 R34 K38 ["format"]
  CALL R34 2 1
  MOVE R33 R34
  SETTABLE R33 R31 R32
  CALL R29 2 1
  SETTABLEKS R29 R28 K31 ["Icon"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K16 ["createElement"]
  GETUPVAL R30 13
  DUPTABLE R31 K42 [{"Subject", "Subline", "ElapsedTime", "LayoutOrder"}]
  SETTABLEKS R18 R31 K39 ["Subject"]
  SETTABLEKS R4 R31 K40 ["Subline"]
  SETTABLEKS R14 R31 K41 ["ElapsedTime"]
  LOADN R32 2
  SETTABLEKS R32 R31 K18 ["LayoutOrder"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K32 ["Content"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K16 ["createElement"]
  LOADK R30 K17 ["Frame"]
  NEWTABLE R31 2 0
  GETUPVAL R33 1
  GETTABLEKS R32 R33 K19 ["Tag"]
  LOADK R33 K43 ["X-Middle"]
  SETTABLE R33 R31 R32
  LOADN R32 3
  SETTABLEKS R32 R31 K18 ["LayoutOrder"]
  DUPTABLE R32 K45 [{"Indicator"}]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  LOADK R34 K35 ["ImageLabel"]
  NEWTABLE R35 2 0
  GETIMPORT R36 K48 [UDim2.new]
  LOADN R37 0
  LOADN R38 0
  LOADK R39 K49 [0.5]
  LOADN R40 0
  CALL R36 4 1
  SETTABLEKS R36 R35 K50 ["Position"]
  GETUPVAL R37 1
  GETTABLEKS R36 R37 K19 ["Tag"]
  LOADK R38 K37 ["%*"]
  MOVE R40 R19
  NAMECALL R38 R38 K38 ["format"]
  CALL R38 2 1
  MOVE R37 R38
  SETTABLE R37 R35 R36
  CALL R33 2 1
  SETTABLEKS R33 R32 K44 ["Indicator"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K33 ["StatusIndicator"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K21 ["InnerCard"]
  CALL R21 3 -1
  RETURN R21 -1

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
  GETTABLEKS R3 R2 K8 ["Styling"]
  GETIMPORT R4 K10 [game]
  LOADK R6 K11 ["GuiService"]
  NAMECALL R4 R4 K12 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K13 ["NotificationText"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Clients"]
  GETTABLEKS R7 R8 K16 ["NotificationClient"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K17 ["Contexts"]
  GETTABLEKS R8 R9 K18 ["NotificationsContext"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K17 ["Contexts"]
  GETTABLEKS R9 R10 K19 ["AnalyticsContext"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K20 ["Enums"]
  GETTABLEKS R10 R11 K21 ["NotificationTargetType"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K22 ["Util"]
  GETTABLEKS R11 R12 K23 ["IconGetters"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K24 ["getDynamicIconPath"]
  GETTABLEKS R12 R10 K25 ["getReadStatusIconTag"]
  GETTABLEKS R13 R10 K26 ["getStaticIconTag"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K14 ["Src"]
  GETTABLEKS R16 R17 K22 ["Util"]
  GETTABLEKS R15 R16 K27 ["interpolateNotificationSubject"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K14 ["Src"]
  GETTABLEKS R17 R18 K22 ["Util"]
  GETTABLEKS R16 R17 K28 ["useRelativeTime"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K14 ["Src"]
  GETTABLEKS R18 R19 K22 ["Util"]
  GETTABLEKS R17 R18 K29 ["optional"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K14 ["Src"]
  GETTABLEKS R19 R20 K22 ["Util"]
  GETTABLEKS R18 R19 K30 ["TimeConstants"]
  CALL R17 1 1
  DUPCLOSURE R18 K31 [PROTO_8]
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R18 1
