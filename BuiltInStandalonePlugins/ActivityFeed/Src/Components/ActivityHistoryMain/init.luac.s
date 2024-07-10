PROTO_0:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K2 [tonumber]
  CALL R2 1 1
  ORK R1 R2 K0 [0]
  LOADK R3 K3 [86400000]
  MUL R2 R3 R1
  GETIMPORT R5 K6 [DateTime.now]
  CALL R5 0 1
  GETTABLEKS R4 R5 K7 ["UnixTimestampMillis"]
  SUB R3 R4 R2
  RETURN R3 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["EndDate"]
  GETTABLEKS R3 R1 K0 ["EndDate"]
  JUMPIFNOTEQ R2 R3 [+15]
  GETTABLEKS R2 R0 K1 ["ShowEveryoneElse"]
  GETTABLEKS R3 R1 K1 ["ShowEveryoneElse"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETTABLEKS R3 R0 K2 ["ExcludedEventCategories"]
  LENGTH R2 R3
  GETTABLEKS R4 R1 K2 ["ExcludedEventCategories"]
  LENGTH R3 R4
  JUMPIFEQ R2 R3 [+3]
  LOADB R2 0
  RETURN R2 1
  GETIMPORT R2 K4 [pairs]
  GETTABLEKS R3 R0 K2 ["ExcludedEventCategories"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["List"]
  GETTABLEKS R7 R8 K6 ["find"]
  GETTABLEKS R8 R1 K2 ["ExcludedEventCategories"]
  MOVE R9 R6
  CALL R7 2 1
  JUMPIFNOTEQKNIL R7 [+3]
  LOADB R7 0
  RETURN R7 1
  FORGLOOP R2 2 [-14]
  GETIMPORT R2 K4 [pairs]
  GETTABLEKS R3 R0 K7 ["ShowCollaborators"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R8 R1 K7 ["ShowCollaborators"]
  GETTABLE R7 R8 R5
  JUMPIFEQ R7 R6 [+3]
  LOADB R7 0
  RETURN R7 1
  FORGLOOP R2 2 [-8]
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["placeId"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R1 R0 K0 ["placeId"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+3]
  LOADB R1 0
  RETURN R1 1
  GETIMPORT R1 K2 [pairs]
  GETUPVAL R4 1
  GETTABLEKS R2 R4 K3 ["ExcludedEventCategories"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["eventTypeToCategory"]
  GETTABLEKS R7 R0 K5 ["eventType"]
  CALL R6 1 1
  JUMPIFNOTEQ R6 R5 [+3]
  LOADB R6 0
  RETURN R6 1
  FORGLOOP R1 2 [-11]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["ShowCollaborators"]
  GETTABLEKS R3 R0 K7 ["userId"]
  GETTABLE R1 R2 R3
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["ShowEveryoneElse"]
  RETURN R2 1

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  RETURN R2 1

PROTO_4:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_6:
  LOADN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETIMPORT R2 K2 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  ADDK R0 R0 K3 [1]
  FORGLOOP R2 2 [-2]
  GETUPVAL R2 1
  LOADK R4 K4 ["bubblesSeenOnSessionEnd"]
  MOVE R5 R0
  GETUPVAL R6 2
  GETUPVAL R7 3
  NAMECALL R2 R2 K5 ["report"]
  CALL R2 5 0
  RETURN R0 0

PROTO_7:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R0 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["current"]
  MOVE R4 R0
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["current"]
  RETURN R0 0

PROTO_9:
  NEWTABLE R0 0 0
  LOADN R1 0
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_NEXT R2
  ADDK R1 R1 K2 [1]
  FASTCALL2 TABLE_INSERT R0 R6 [+5]
  MOVE R8 R0
  MOVE R9 R6
  GETIMPORT R7 K5 [table.insert]
  CALL R7 2 0
  LOADN R7 10
  JUMPIFLE R7 R1 [+3]
  FORGLOOP R2 2 [-12]
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R3 1
  CALL R2 1 3
  FORGPREP_NEXT R2
  ADDK R1 R1 K2 [1]
  FASTCALL2 TABLE_INSERT R0 R5 [+5]
  MOVE R8 R0
  MOVE R9 R5
  GETIMPORT R7 K5 [table.insert]
  CALL R7 2 0
  LOADN R7 10
  JUMPIFLE R7 R1 [+3]
  FORGLOOP R2 2 [-12]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["fetchUsernames"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R3 R5 K3 ["events"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K4 ["userId"]
  LOADB R8 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-5]
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Dictionary"]
  GETTABLEKS R3 R4 K6 ["join"]
  GETUPVAL R4 2
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  GETTABLEKS R3 R0 K2 ["responseBody"]
  GETTABLEKS R2 R3 K3 ["events"]
  GETUPVAL R4 3
  JUMPIF R4 [+10]
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R4 R5 K7 ["hasMore"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K2 ["responseBody"]
  GETTABLEKS R3 R4 K8 ["nextCursor"]
  JUMPIF R3 [+1]
  LOADNIL R3
  GETUPVAL R5 3
  JUMPIFNOT R5 [+10]
  GETTABLEKS R6 R0 K2 ["responseBody"]
  GETTABLEKS R5 R6 K7 ["hasMore"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R4 R5 K8 ["nextCursor"]
  JUMPIF R4 [+1]
  LOADNIL R4
  GETUPVAL R5 4
  MOVE R6 R2
  MOVE R7 R3
  MOVE R8 R4
  GETUPVAL R9 3
  GETUPVAL R10 5
  CALL R5 5 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["activityHistoryClient"]
  GETTABLEKS R5 R6 K1 ["fetchActivityHistory"]
  GETUPVAL R6 1
  GETUPVAL R7 2
  JUMPIFEQKS R1 K2 [""] [+3]
  MOVE R8 R1
  JUMPIF R8 [+1]
  LOADNIL R8
  MOVE R9 R2
  MOVE R10 R3
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R4
  CALL R5 6 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  NEWCLOSURE R0 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  RETURN R0 1

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  NEWCLOSURE R0 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  RETURN R0 1

PROTO_14:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activityHistoryClient"]
  GETTABLEKS R0 R1 K1 ["activityFeedRTEEffect"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_17:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["FilterMenu"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 1
  JUMPIF R1 [+30]
  GETTABLEKS R1 R0 K0 ["EndDate"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["EndDate"]
  JUMPIFEQ R1 R2 [+22]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["jumpToDate"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["EndDate"]
  FASTCALL1 TONUMBER R3 [+3]
  MOVE R6 R3
  GETIMPORT R5 K4 [tonumber]
  CALL R5 1 1
  ORK R4 R5 K2 [0]
  LOADK R6 K5 [86400000]
  MUL R5 R6 R4
  GETIMPORT R7 K8 [DateTime.now]
  CALL R7 0 1
  GETTABLEKS R6 R7 K9 ["UnixTimestampMillis"]
  SUB R2 R6 R5
  CALL R1 1 0
  GETUPVAL R1 1
  RETURN R1 1
  RETURN R0 1

PROTO_19:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R1 1 0
  GETUPVAL R1 3
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K0 ["AllEvents"]
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["jumpToDate"]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R1 1
  RETURN R1 1
  RETURN R0 1

PROTO_21:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 0
  GETUPVAL R0 4
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K0 ["AllEvents"]
  CALL R0 1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R3 3
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useState"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K3 ["AllEvents"]
  CALL R4 1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["useState"]
  NEWTABLE R7 0 0
  CALL R6 1 2
  GETTABLEKS R8 R1 K4 ["useCollaborators"]
  CALL R8 0 1
  GETTABLEKS R9 R1 K5 ["usePlaceAndUniverseId"]
  GETTABLEKS R10 R0 K6 ["plugin"]
  CALL R9 1 2
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["useRef"]
  NEWTABLE R12 0 0
  CALL R11 1 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K8 ["useMemo"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R11
  NEWTABLE R14 0 0
  CALL R12 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["useMemo"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  NEWTABLE R15 0 1
  MOVE R16 R11
  SETLIST R15 R16 1 [1]
  CALL R13 2 1
  GETTABLEKS R14 R1 K9 ["useConnectToDataModelSessionEffect"]
  MOVE R15 R12
  MOVE R16 R13
  CALL R14 2 0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K10 ["useCallback"]
  NEWCLOSURE R15 P2
  CAPTURE VAL R11
  CAPTURE UPVAL U5
  NEWTABLE R16 0 1
  MOVE R17 R11
  SETLIST R16 R17 1 [1]
  CALL R14 2 1
  GETUPVAL R15 6
  CALL R15 0 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["useEffect"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R15
  NEWTABLE R18 0 2
  MOVE R19 R6
  MOVE R20 R8
  SETLIST R18 R19 2 [1]
  CALL R16 2 0
  LOADNIL R16
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K10 ["useCallback"]
  NEWCLOSURE R18 P4
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE UPVAL U5
  CAPTURE VAL R6
  NEWTABLE R19 0 3
  GETTABLEKS R20 R1 K12 ["activityHistoryClient"]
  MOVE R21 R9
  MOVE R22 R10
  SETLIST R19 R20 3 [1]
  CALL R17 2 1
  MOVE R16 R17
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K2 ["useState"]
  GETUPVAL R18 7
  CALL R17 1 2
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K2 ["useState"]
  NEWCLOSURE R20 P5
  CAPTURE UPVAL U7
  CAPTURE VAL R9
  CAPTURE UPVAL U8
  CALL R19 1 2
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K11 ["useEffect"]
  NEWCLOSURE R22 P6
  CAPTURE VAL R20
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE UPVAL U8
  NEWTABLE R23 0 3
  MOVE R24 R17
  MOVE R25 R20
  MOVE R26 R9
  SETLIST R23 R24 3 [1]
  CALL R21 2 0
  GETUPVAL R21 9
  MOVE R22 R16
  MOVE R23 R19
  GETUPVAL R24 10
  GETUPVAL R25 11
  GETUPVAL R26 12
  CALL R21 5 1
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K10 ["useCallback"]
  DUPCLOSURE R23 K13 [PROTO_15]
  NEWTABLE R24 0 0
  CALL R22 2 1
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K11 ["useEffect"]
  NEWCLOSURE R24 P8
  CAPTURE VAL R1
  CAPTURE VAL R22
  NEWTABLE R25 0 0
  CALL R23 2 0
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K14 ["createElement"]
  LOADK R24 K15 ["Frame"]
  NEWTABLE R25 1 0
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K16 ["Tag"]
  GETUPVAL R27 13
  LOADK R28 K17 ["X-Column"]
  LOADK R29 K18 ["Component-ActivityHistoryMain"]
  CALL R27 2 1
  SETTABLE R27 R25 R26
  DUPTABLE R26 K21 [{"EventList", "FilterMenu"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K14 ["createElement"]
  LOADK R28 K15 ["Frame"]
  NEWTABLE R29 4 0
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K16 ["Tag"]
  GETUPVAL R31 13
  LOADK R32 K17 ["X-Column"]
  LOADK R33 K22 ["CX-Invisible"]
  CALL R31 2 1
  SETTABLE R31 R29 R30
  GETUPVAL R30 14
  NAMECALL R30 R30 K23 ["getNextOrder"]
  CALL R30 1 1
  SETTABLEKS R30 R29 K24 ["LayoutOrder"]
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K3 ["AllEvents"]
  JUMPIFEQ R4 R31 [+2]
  LOADB R30 0 +1
  LOADB R30 1
  SETTABLEKS R30 R29 K25 ["Visible"]
  DUPTABLE R30 K28 [{"HeaderContainer", "ActivityHistoryBubbleListContainer"}]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K14 ["createElement"]
  LOADK R32 K15 ["Frame"]
  NEWTABLE R33 1 0
  GETUPVAL R35 0
  GETTABLEKS R34 R35 K16 ["Tag"]
  GETUPVAL R35 13
  LOADK R36 K29 ["X-Border"]
  LOADK R37 K30 ["X-Corner"]
  LOADK R38 K22 ["CX-Invisible"]
  CALL R35 3 1
  SETTABLE R35 R33 R34
  DUPTABLE R34 K32 [{"Header"}]
  GETUPVAL R36 0
  GETTABLEKS R35 R36 K14 ["createElement"]
  LOADK R36 K15 ["Frame"]
  NEWTABLE R37 1 0
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K16 ["Tag"]
  GETUPVAL R39 13
  LOADK R40 K33 ["X-Fill"]
  LOADK R41 K22 ["CX-Invisible"]
  CALL R39 2 1
  SETTABLE R39 R37 R38
  DUPTABLE R38 K36 [{"ToggleFilterMenuButton", "FilterMenuToggleIconContainer"}]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K14 ["createElement"]
  LOADK R40 K37 ["TextButton"]
  NEWTABLE R41 4 0
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K16 ["Tag"]
  GETUPVAL R43 13
  LOADK R44 K33 ["X-Fill"]
  CALL R43 1 1
  SETTABLE R43 R41 R42
  GETUPVAL R42 14
  NAMECALL R42 R42 K23 ["getNextOrder"]
  CALL R42 1 1
  SETTABLEKS R42 R41 K24 ["LayoutOrder"]
  LOADK R44 K38 ["ActivityHistoryMain"]
  LOADK R45 K3 ["AllEvents"]
  NAMECALL R42 R2 K39 ["getText"]
  CALL R42 3 1
  SETTABLEKS R42 R41 K40 ["Text"]
  GETUPVAL R44 0
  GETTABLEKS R43 R44 K41 ["Event"]
  GETTABLEKS R42 R43 K42 ["Activated"]
  NEWCLOSURE R43 P9
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  SETTABLE R43 R41 R42
  CALL R39 2 1
  SETTABLEKS R39 R38 K34 ["ToggleFilterMenuButton"]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K14 ["createElement"]
  LOADK R40 K15 ["Frame"]
  NEWTABLE R41 1 0
  GETUPVAL R43 0
  GETTABLEKS R42 R43 K16 ["Tag"]
  GETUPVAL R43 13
  LOADK R44 K22 ["CX-Invisible"]
  CALL R43 1 1
  SETTABLE R43 R41 R42
  DUPTABLE R42 K44 [{"FilterMenuToggleIcon"}]
  GETUPVAL R44 0
  GETTABLEKS R43 R44 K14 ["createElement"]
  LOADK R44 K45 ["ImageLabel"]
  DUPTABLE R45 K46 [{"LayoutOrder"}]
  GETUPVAL R46 14
  NAMECALL R46 R46 K23 ["getNextOrder"]
  CALL R46 1 1
  SETTABLEKS R46 R45 K24 ["LayoutOrder"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K43 ["FilterMenuToggleIcon"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K35 ["FilterMenuToggleIconContainer"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K31 ["Header"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K26 ["HeaderContainer"]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K14 ["createElement"]
  LOADK R32 K15 ["Frame"]
  NEWTABLE R33 2 0
  GETUPVAL R35 0
  GETTABLEKS R34 R35 K16 ["Tag"]
  GETUPVAL R35 13
  LOADK R36 K22 ["CX-Invisible"]
  CALL R35 1 1
  SETTABLE R35 R33 R34
  GETUPVAL R34 14
  NAMECALL R34 R34 K23 ["getNextOrder"]
  CALL R34 1 1
  SETTABLEKS R34 R33 K24 ["LayoutOrder"]
  DUPTABLE R34 K48 [{"ActivityHistoryBubbleList"}]
  GETUPVAL R36 0
  GETTABLEKS R35 R36 K14 ["createElement"]
  GETUPVAL R36 15
  NEWTABLE R37 8 0
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K16 ["Tag"]
  LOADK R39 K49 [".ActivityHistoryBubbleList"]
  SETTABLE R39 R37 R38
  GETTABLEKS R38 R21 K50 ["vlref"]
  SETTABLEKS R38 R37 K51 ["Vlref"]
  GETTABLEKS R38 R21 K52 ["eventList"]
  SETTABLEKS R38 R37 K53 ["Events"]
  LOADK R38 K54 [∞]
  SETTABLEKS R38 R37 K55 ["IndexOffset"]
  SETTABLEKS R14 R37 K56 ["OnViewableItemsChanged"]
  GETTABLEKS R38 R21 K57 ["onScroll"]
  SETTABLEKS R38 R37 K58 ["OnScroll"]
  GETTABLEKS R38 R21 K59 ["fetchPreviousPageInProgress"]
  SETTABLEKS R38 R37 K60 ["ShowHeaderLoadingIndicator"]
  GETTABLEKS R38 R21 K61 ["fetchNextPageInProgress"]
  SETTABLEKS R38 R37 K62 ["ShowFooterLoadingIndicator"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K47 ["ActivityHistoryBubbleList"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K27 ["ActivityHistoryBubbleListContainer"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K19 ["EventList"]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K14 ["createElement"]
  LOADK R28 K15 ["Frame"]
  DUPTABLE R29 K63 [{"LayoutOrder", "Visible"}]
  GETUPVAL R30 14
  NAMECALL R30 R30 K23 ["getNextOrder"]
  CALL R30 1 1
  SETTABLEKS R30 R29 K24 ["LayoutOrder"]
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K3 ["AllEvents"]
  JUMPIFNOTEQ R4 R31 [+2]
  LOADB R30 0 +1
  LOADB R30 1
  SETTABLEKS R30 R29 K25 ["Visible"]
  DUPTABLE R30 K64 [{"FilterMenu"}]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K14 ["createElement"]
  GETUPVAL R32 16
  DUPTABLE R33 K68 [{"collaborators", "OnApply", "OnClear"}]
  GETTABLEKS R34 R15 K69 ["cache"]
  SETTABLEKS R34 R33 K65 ["collaborators"]
  NEWCLOSURE R34 P10
  CAPTURE VAL R18
  CAPTURE UPVAL U17
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  SETTABLEKS R34 R33 K66 ["OnApply"]
  NEWCLOSURE R34 P11
  CAPTURE VAL R18
  CAPTURE UPVAL U17
  CAPTURE UPVAL U7
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  SETTABLEKS R34 R33 K67 ["OnClear"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K20 ["FilterMenu"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K20 ["FilterMenu"]
  CALL R23 3 -1
  RETURN R23 -1

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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R5 K10 ["Analytics"]
  GETTABLEKS R6 R2 K9 ["ContextServices"]
  GETTABLEKS R5 R6 K11 ["Localization"]
  GETTABLEKS R7 R2 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["LayoutOrderIterator"]
  GETTABLEKS R7 R6 K14 ["new"]
  CALL R7 0 1
  GETTABLEKS R9 R2 K15 ["Styling"]
  GETTABLEKS R8 R9 K16 ["joinTags"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["Clients"]
  GETTABLEKS R10 R11 K19 ["ActivityHistoryClient"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K20 ["Contexts"]
  GETTABLEKS R11 R12 K21 ["ActivityHistoryContext"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K22 ["Components"]
  GETTABLEKS R12 R13 K23 ["FilterMenu"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K22 ["Components"]
  GETTABLEKS R13 R14 K24 ["ActivityHistoryBubbleList"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K17 ["Src"]
  GETTABLEKS R15 R16 K12 ["Util"]
  GETTABLEKS R14 R15 K25 ["ActivityHistoryEventTranslated"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K26 ["Hooks"]
  GETTABLEKS R15 R16 K27 ["BidirectionalInfiniteScroll"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K17 ["Src"]
  GETTABLEKS R17 R18 K26 ["Hooks"]
  GETTABLEKS R16 R17 K28 ["UsernameCache"]
  CALL R15 1 1
  GETIMPORT R16 K30 [game]
  LOADK R18 K31 ["ActivityFeedBDISFetchSensitivity"]
  NAMECALL R16 R16 K32 ["GetFastInt"]
  CALL R16 2 1
  GETIMPORT R17 K30 [game]
  LOADK R19 K33 ["ActivityFeedBDISMinEvents"]
  NAMECALL R17 R17 K32 ["GetFastInt"]
  CALL R17 2 1
  GETIMPORT R18 K30 [game]
  LOADK R20 K34 ["ActivityFeedRefreshMs"]
  NAMECALL R18 R18 K32 ["GetFastInt"]
  CALL R18 2 1
  DUPCLOSURE R19 K35 [PROTO_0]
  DUPCLOSURE R20 K36 [PROTO_1]
  CAPTURE VAL R3
  DUPCLOSURE R21 K37 [PROTO_3]
  CAPTURE VAL R13
  DUPTABLE R22 K39 [{"AllEvents", "FilterMenu"}]
  LOADK R23 K40 ["All Events"]
  SETTABLEKS R23 R22 K38 ["AllEvents"]
  LOADK R23 K41 ["Filter Menu"]
  SETTABLEKS R23 R22 K23 ["FilterMenu"]
  DUPTABLE R23 K46 [{"EndDate", "ExcludedEventCategories", "ShowCollaborators", "ShowEveryoneElse"}]
  LOADK R24 K47 [""]
  SETTABLEKS R24 R23 K42 ["EndDate"]
  NEWTABLE R24 0 0
  SETTABLEKS R24 R23 K43 ["ExcludedEventCategories"]
  NEWTABLE R24 0 0
  SETTABLEKS R24 R23 K44 ["ShowCollaborators"]
  LOADB R24 1
  SETTABLEKS R24 R23 K45 ["ShowEveryoneElse"]
  DUPCLOSURE R24 K48 [PROTO_22]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R22
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R23
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R20
  RETURN R24 1
