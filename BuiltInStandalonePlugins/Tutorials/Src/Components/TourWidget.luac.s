PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnQuit"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showTopics"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["state"]
  GETTABLEKS R4 R5 K0 ["showTopics"]
  NOT R3 R4
  SETTABLEKS R3 R2 K0 ["showTopics"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["StepData"]
  GETTABLEKS R1 R2 K2 ["topic"]
  JUMPIFNOTLT R0 R1 [+22]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["OnSelectTopic"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 0
  DUPTABLE R3 K6 [{"showTopics", "jumpToTopic"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["showTopics"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["None"]
  SETTABLEKS R4 R3 K5 ["jumpToTopic"]
  NAMECALL R1 R1 K8 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K9 [{"jumpToTopic"}]
  SETTABLEKS R0 R3 K5 ["jumpToTopic"]
  NAMECALL R1 R1 K8 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOTEQKS R0 K0 ["accept"] [+27]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R1 R2 K2 ["jumpToTopic"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["props"]
  GETTABLEKS R2 R3 K4 ["OnSelectTopic"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 0
  DUPTABLE R4 K6 [{"showTopics", "jumpToTopic"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["showTopics"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["None"]
  SETTABLEKS R5 R4 K2 ["jumpToTopic"]
  NAMECALL R2 R2 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K9 [{"jumpToTopic"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["None"]
  SETTABLEKS R4 R3 K2 ["jumpToTopic"]
  NAMECALL R1 R1 K8 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  LOADNIL R0
  LOADN R1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["complimentRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  JUMPIFEQKNIL R2 [+5]
  GETUPVAL R2 0
  GETTABLEKS R0 R2 K0 ["complimentRef"]
  JUMP [+4]
  GETUPVAL R2 0
  GETTABLEKS R0 R2 K2 ["windowRef"]
  LOADN R1 19
  GETTABLEKS R2 R0 K1 ["current"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["lastSize"]
  GETTABLEKS R4 R0 K1 ["current"]
  GETTABLEKS R3 R4 K4 ["AbsoluteSize"]
  JUMPIFEQ R2 R3 [+43]
  GETTABLEKS R3 R0 K1 ["current"]
  GETTABLEKS R2 R3 K4 ["AbsoluteSize"]
  GETIMPORT R3 K7 [Vector2.new]
  GETTABLEKS R6 R2 K8 ["X"]
  FASTCALL2 MATH_MAX R1 R6 [+4]
  MOVE R5 R1
  GETIMPORT R4 K11 [math.max]
  CALL R4 2 1
  GETTABLEKS R5 R2 K12 ["Y"]
  CALL R3 2 1
  MOVE R2 R3
  GETIMPORT R3 K14 [game]
  LOADK R5 K15 ["StudioWidgetsService"]
  NAMECALL R3 R3 K16 ["GetService"]
  CALL R3 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K17 ["props"]
  GETTABLEKS R6 R7 K18 ["Widget"]
  NAMECALL R4 R3 K19 ["GetWidgetFromPluginGui"]
  CALL R4 2 1
  GETTABLEKS R7 R2 K8 ["X"]
  GETTABLEKS R8 R2 K12 ["Y"]
  NAMECALL R5 R4 K20 ["SetFixedSize"]
  CALL R5 3 0
  GETUPVAL R5 0
  SETTABLEKS R2 R5 K3 ["lastSize"]
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K2 [{"showTopics", "jumpToTopic"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["showTopics"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["jumpToTopic"]
  SETTABLEKS R1 R0 K3 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["windowRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K6 ["complimentRef"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["lastSize"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onClose"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onToggleTopics"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K10 ["onSelectTopic"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K11 ["onJumpDialogAction"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["onAbsoluteSizeChanged"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onSelectTopic"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Localization"]
  GETTABLEKS R4 R2 K2 ["Stylizer"]
  NEWTABLE R5 0 0
  GETUPVAL R6 0
  CALL R6 0 1
  GETTABLEKS R7 R2 K3 ["StepData"]
  GETTABLEKS R8 R7 K4 ["topics"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  JUMPIFEQ R11 R1 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIFNOT R13 [+3]
  GETTABLEKS R14 R4 K5 ["SelectedTopicTextColor"]
  JUMP [+2]
  GETTABLEKS R14 R4 K6 ["TopicTextColor"]
  MOVE R16 R5
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K12 [{"Layout", "HorizontalAlignment", "Spacing", "Size"}]
  GETIMPORT R20 K16 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K8 ["Layout"]
  GETIMPORT R20 K18 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K9 ["HorizontalAlignment"]
  GETTABLEKS R20 R4 K19 ["PaddingSmall"]
  SETTABLEKS R20 R19 K10 ["Spacing"]
  GETIMPORT R20 K22 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETTABLEKS R25 R4 K23 ["CircleSize"]
  GETTABLEKS R26 R4 K19 ["PaddingSmall"]
  ADD R24 R25 R26
  CALL R20 4 1
  SETTABLEKS R20 R19 K11 ["Size"]
  DUPTABLE R20 K26 [{"Number", "Title"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K7 ["createElement"]
  GETUPVAL R22 2
  DUPTABLE R23 K29 [{"BackgroundColor3", "Padding", "Size"}]
  GETTABLEKS R24 R4 K30 ["CircleColor"]
  SETTABLEKS R24 R23 K27 ["BackgroundColor3"]
  GETTABLEKS R24 R4 K19 ["PaddingSmall"]
  SETTABLEKS R24 R23 K28 ["Padding"]
  GETIMPORT R24 K32 [UDim2.fromOffset]
  GETTABLEKS R25 R4 K23 ["CircleSize"]
  GETTABLEKS R26 R4 K23 ["CircleSize"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K11 ["Size"]
  DUPTABLE R24 K35 [{"Corner", "Text"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K7 ["createElement"]
  LOADK R26 K36 ["UICorner"]
  DUPTABLE R27 K38 [{"CornerRadius"}]
  GETIMPORT R28 K40 [UDim.new]
  LOADN R29 0
  GETTABLEKS R30 R4 K23 ["CircleSize"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K37 ["CornerRadius"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K33 ["Corner"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K7 ["createElement"]
  GETUPVAL R26 3
  DUPTABLE R27 K46 [{"AnchorPoint", "AutomaticSize", "Font", "Position", "Text", "TextColor"}]
  GETIMPORT R28 K48 [Vector2.new]
  LOADK R29 K49 [0.5]
  LOADK R30 K49 [0.5]
  CALL R28 2 1
  SETTABLEKS R28 R27 K41 ["AnchorPoint"]
  GETIMPORT R28 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R28 R27 K42 ["AutomaticSize"]
  GETIMPORT R28 K53 [Enum.Font.SourceSansBold]
  SETTABLEKS R28 R27 K43 ["Font"]
  GETIMPORT R28 K55 [UDim2.fromScale]
  LOADK R29 K49 [0.5]
  LOADK R30 K49 [0.5]
  CALL R28 2 1
  SETTABLEKS R28 R27 K44 ["Position"]
  LOADK R28 K56 ["%d"]
  MOVE R30 R11
  NAMECALL R28 R28 K57 ["format"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K34 ["Text"]
  SETTABLEKS R14 R27 K45 ["TextColor"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K34 ["Text"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K24 ["Number"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K7 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K64 [{"AutomaticSize", "Cursor", "Disabled", "DisabledTextColor", "OnClick", "LayoutOrder", "Style", "Text", "TextColor"}]
  GETIMPORT R24 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K42 ["AutomaticSize"]
  JUMPIFNOT R13 [+2]
  LOADNIL R24
  JUMP [+1]
  LOADK R24 K65 ["PointingHand"]
  SETTABLEKS R24 R23 K58 ["Cursor"]
  SETTABLEKS R13 R23 K59 ["Disabled"]
  SETTABLEKS R14 R23 K60 ["DisabledTextColor"]
  NEWCLOSURE R24 P0
  CAPTURE VAL R0
  CAPTURE VAL R11
  SETTABLEKS R24 R23 K61 ["OnClick"]
  MOVE R24 R6
  CALL R24 0 1
  SETTABLEKS R24 R23 K62 ["LayoutOrder"]
  LOADK R24 K66 ["IconOnly"]
  SETTABLEKS R24 R23 K63 ["Style"]
  GETTABLEKS R26 R7 K67 ["id"]
  LOADK R28 K68 ["topic_"]
  MOVE R29 R12
  CONCAT R27 R28 R29
  NAMECALL R24 R3 K69 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K34 ["Text"]
  SETTABLEKS R14 R23 K45 ["TextColor"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K25 ["Title"]
  CALL R17 3 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R15 5
  CALL R15 -1 0
  FORGLOOP R8 2 [-174]
  RETURN R5 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETUPVAL R3 0
  CALL R3 0 1
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R5 R1 K3 ["Localization"]
  GETTABLEKS R6 R1 K4 ["StepData"]
  JUMPIF R6 [+2]
  LOADNIL R7
  RETURN R7 1
  GETTABLEKS R7 R6 K5 ["step"]
  JUMPIF R7 [+2]
  LOADNIL R8
  RETURN R8 1
  GETTABLEKS R9 R7 K6 ["kind"]
  JUMPIFEQKS R9 K7 ["Completed"] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETTABLEKS R10 R7 K6 ["kind"]
  JUMPIFEQKS R10 K8 ["Skipped"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  OR R10 R8 R9
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K14 [{"OnClose", "ShouldRestore", "Title", "Widget"}]
  GETTABLEKS R14 R0 K15 ["onClose"]
  SETTABLEKS R14 R13 K10 ["OnClose"]
  LOADB R14 1
  SETTABLEKS R14 R13 K11 ["ShouldRestore"]
  LOADK R14 K16 [""]
  SETTABLEKS R14 R13 K12 ["Title"]
  GETTABLEKS R14 R1 K13 ["Widget"]
  SETTABLEKS R14 R13 K13 ["Widget"]
  DUPTABLE R14 K19 [{"Window", "Dialog"}]
  JUMPIFNOT R10 [+49]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R16 3
  NEWTABLE R17 8 0
  GETTABLEKS R18 R4 K20 ["IconSize"]
  SETTABLEKS R18 R17 K20 ["IconSize"]
  GETTABLEKS R18 R4 K21 ["CheckmarkImage"]
  SETTABLEKS R18 R17 K22 ["Image"]
  MOVE R18 R3
  CALL R18 0 1
  SETTABLEKS R18 R17 K23 ["LayoutOrder"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R18 R7 K24 ["description"]
  JUMP [+11]
  GETTABLEKS R20 R6 K25 ["id"]
  LOADK R21 K26 ["%s_Compliment"]
  GETTABLEKS R23 R7 K25 ["id"]
  NAMECALL R21 R21 K27 ["format"]
  CALL R21 2 -1
  NAMECALL R18 R5 K28 ["getText"]
  CALL R18 -1 1
  SETTABLEKS R18 R17 K29 ["Text"]
  GETTABLEKS R18 R0 K30 ["complimentRef"]
  SETTABLEKS R18 R17 K31 ["PaneRef"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K32 ["Change"]
  GETTABLEKS R18 R19 K33 ["AbsoluteSize"]
  GETTABLEKS R19 R0 K34 ["onAbsoluteSizeChanged"]
  SETTABLE R19 R17 R18
  CALL R15 2 1
  JUMP [+3]
  NAMECALL R15 R0 K35 ["renderWindow"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K17 ["Window"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K43 [{"Buttons", "Enabled", "MinContentSize", "Modal", "OnClose", "OnButtonPressed", "Size", "Style", "Title"}]
  NEWTABLE R18 0 2
  DUPTABLE R19 K45 [{"Key", "Text"}]
  LOADK R20 K46 ["accept"]
  SETTABLEKS R20 R19 K44 ["Key"]
  LOADK R22 K47 ["Tutorial"]
  LOADK R23 K48 ["Skip"]
  NAMECALL R20 R5 K28 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K29 ["Text"]
  DUPTABLE R20 K45 [{"Key", "Text"}]
  LOADK R21 K49 ["cancel"]
  SETTABLEKS R21 R20 K44 ["Key"]
  LOADK R23 K47 ["Tutorial"]
  LOADK R24 K50 ["Back"]
  NAMECALL R21 R5 K28 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K29 ["Text"]
  SETLIST R18 R19 2 [1]
  SETTABLEKS R18 R17 K36 ["Buttons"]
  GETTABLEKS R19 R2 K51 ["jumpToTopic"]
  JUMPIFNOTEQKNIL R19 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  SETTABLEKS R18 R17 K37 ["Enabled"]
  GETIMPORT R18 K54 [Vector2.new]
  LOADN R19 194
  LOADN R20 100
  CALL R18 2 1
  SETTABLEKS R18 R17 K38 ["MinContentSize"]
  LOADB R18 1
  SETTABLEKS R18 R17 K39 ["Modal"]
  GETTABLEKS R18 R0 K55 ["onJumpDialogAction"]
  SETTABLEKS R18 R17 K10 ["OnClose"]
  GETTABLEKS R18 R0 K55 ["onJumpDialogAction"]
  SETTABLEKS R18 R17 K40 ["OnButtonPressed"]
  GETIMPORT R18 K58 [UDim2.fromOffset]
  LOADN R19 194
  LOADN R20 100
  CALL R18 2 1
  SETTABLEKS R18 R17 K41 ["Size"]
  LOADK R18 K59 ["AcceptCancel"]
  SETTABLEKS R18 R17 K42 ["Style"]
  GETTABLEKS R20 R6 K25 ["id"]
  LOADK R21 K12 ["Title"]
  NAMECALL R18 R5 K28 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K12 ["Title"]
  DUPTABLE R18 K61 [{"Content"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K9 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K65 [{"HorizontalAlignment", "Layout", "Spacing"}]
  GETIMPORT R22 K68 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K62 ["HorizontalAlignment"]
  GETIMPORT R22 K71 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K63 ["Layout"]
  LOADN R22 20
  SETTABLEKS R22 R21 K64 ["Spacing"]
  DUPTABLE R22 K72 [{"Title", "Text"}]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K9 ["createElement"]
  GETUPVAL R24 6
  DUPTABLE R25 K75 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment"}]
  GETIMPORT R26 K77 [Enum.AutomaticSize.XY]
  SETTABLEKS R26 R25 K73 ["AutomaticSize"]
  MOVE R26 R3
  CALL R26 0 1
  SETTABLEKS R26 R25 K23 ["LayoutOrder"]
  LOADK R26 K12 ["Title"]
  SETTABLEKS R26 R25 K42 ["Style"]
  LOADK R28 K78 ["SkipDialog"]
  LOADK R29 K12 ["Title"]
  NAMECALL R26 R5 K28 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K29 ["Text"]
  GETIMPORT R26 K79 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K74 ["TextXAlignment"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K12 ["Title"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K9 ["createElement"]
  GETUPVAL R24 6
  DUPTABLE R25 K81 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R26 K83 [Enum.AutomaticSize.Y]
  SETTABLEKS R26 R25 K73 ["AutomaticSize"]
  MOVE R26 R3
  CALL R26 0 1
  SETTABLEKS R26 R25 K23 ["LayoutOrder"]
  GETIMPORT R26 K85 [UDim2.fromScale]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K41 ["Size"]
  LOADK R28 K78 ["SkipDialog"]
  LOADK R29 K29 ["Text"]
  NAMECALL R26 R5 K28 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K29 ["Text"]
  LOADB R26 1
  SETTABLEKS R26 R25 K80 ["TextWrapped"]
  GETIMPORT R26 K79 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K74 ["TextXAlignment"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K29 ["Text"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K60 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K18 ["Dialog"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_9:
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETUPVAL R3 0
  CALL R3 0 1
  GETTABLEKS R4 R1 K2 ["StepData"]
  GETTABLEKS R5 R4 K3 ["step"]
  GETTABLEKS R6 R1 K4 ["Stylizer"]
  GETTABLEKS R7 R1 K5 ["Localization"]
  GETTABLEKS R10 R4 K6 ["id"]
  LOADK R12 K7 ["topic_"]
  GETTABLEKS R14 R4 K8 ["topics"]
  GETTABLEKS R15 R4 K9 ["topic"]
  GETTABLE R13 R14 R15
  CONCAT R11 R12 R13
  NAMECALL R8 R7 K10 ["getText"]
  CALL R8 3 1
  LOADK R11 K11 ["Tutorial"]
  LOADK R12 K12 ["TopicNumber"]
  NAMECALL R9 R7 K10 ["getText"]
  CALL R9 3 1
  GETTABLEKS R11 R4 K9 ["topic"]
  GETTABLEKS R13 R4 K8 ["topics"]
  LENGTH R12 R13
  NAMECALL R9 R9 K13 ["format"]
  CALL R9 3 1
  GETTABLEKS R10 R1 K14 ["PressedKeys"]
  GETTABLEKS R11 R4 K15 ["showNext"]
  LOADB R12 0
  GETTABLEKS R13 R4 K9 ["topic"]
  JUMPIFNOTEQKN R13 K16 [1] [+7]
  GETTABLEKS R13 R4 K17 ["topicStep"]
  JUMPIFEQKN R13 K16 [1] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 2
  NEWTABLE R15 16 0
  GETIMPORT R16 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K20 ["AutomaticSize"]
  GETIMPORT R16 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K26 ["Layout"]
  GETIMPORT R16 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K27 ["HorizontalAlignment"]
  GETTABLEKS R16 R6 K30 ["Padding"]
  SETTABLEKS R16 R15 K30 ["Padding"]
  GETTABLEKS R16 R6 K30 ["Padding"]
  SETTABLEKS R16 R15 K31 ["Spacing"]
  LOADK R16 K32 ["Box"]
  SETTABLEKS R16 R15 K33 ["Style"]
  GETIMPORT R16 K36 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K34 ["VerticalAlignment"]
  GETTABLEKS R16 R0 K37 ["windowRef"]
  SETTABLEKS R16 R15 K38 ["ref"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K39 ["Change"]
  GETTABLEKS R16 R17 K40 ["AbsoluteSize"]
  GETTABLEKS R17 R0 K41 ["onAbsoluteSizeChanged"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K46 [{"TopicBar", "Separator", "Scroller", "NavigationRow"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K18 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K49 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing"}]
  GETIMPORT R20 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K20 ["AutomaticSize"]
  GETIMPORT R20 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K26 ["Layout"]
  MOVE R20 R3
  CALL R20 0 1
  SETTABLEKS R20 R19 K47 ["LayoutOrder"]
  GETIMPORT R20 K54 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K48 ["Size"]
  GETTABLEKS R20 R6 K55 ["PaddingSmall"]
  SETTABLEKS R20 R19 K31 ["Spacing"]
  DUPTABLE R20 K59 [{"CurrentTopic", "List", "Close"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 2
  DUPTABLE R23 K60 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Layout", "Size", "Spacing"}]
  GETIMPORT R24 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K20 ["AutomaticSize"]
  GETIMPORT R24 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R24 R23 K27 ["HorizontalAlignment"]
  MOVE R24 R3
  CALL R24 0 1
  SETTABLEKS R24 R23 K47 ["LayoutOrder"]
  GETIMPORT R24 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K26 ["Layout"]
  GETIMPORT R24 K62 [UDim2.new]
  LOADN R25 1
  LOADN R26 196
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K48 ["Size"]
  GETTABLEKS R24 R6 K55 ["PaddingSmall"]
  SETTABLEKS R24 R23 K31 ["Spacing"]
  DUPTABLE R24 K64 [{"TopicNumber", "TopicName"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R26 3
  DUPTABLE R27 K67 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment", "Style"}]
  GETIMPORT R28 K69 [Enum.AutomaticSize.XY]
  SETTABLEKS R28 R27 K20 ["AutomaticSize"]
  MOVE R28 R3
  CALL R28 0 1
  SETTABLEKS R28 R27 K47 ["LayoutOrder"]
  SETTABLEKS R9 R27 K65 ["Text"]
  GETIMPORT R28 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K66 ["TextXAlignment"]
  LOADK R28 K71 ["Label"]
  SETTABLEKS R28 R27 K33 ["Style"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K12 ["TopicNumber"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R26 3
  DUPTABLE R27 K67 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment", "Style"}]
  GETIMPORT R28 K69 [Enum.AutomaticSize.XY]
  SETTABLEKS R28 R27 K20 ["AutomaticSize"]
  MOVE R28 R3
  CALL R28 0 1
  SETTABLEKS R28 R27 K47 ["LayoutOrder"]
  SETTABLEKS R8 R27 K65 ["Text"]
  GETIMPORT R28 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K66 ["TextXAlignment"]
  LOADK R28 K72 ["Semibold"]
  SETTABLEKS R28 R27 K33 ["Style"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K63 ["TopicName"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K56 ["CurrentTopic"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K76 [{"Cursor", "OnClick", "LayoutOrder", "LeftIcon", "Size", "Style", "Text"}]
  LOADK R24 K77 ["PointingHand"]
  SETTABLEKS R24 R23 K73 ["Cursor"]
  GETTABLEKS R24 R0 K78 ["onToggleTopics"]
  SETTABLEKS R24 R23 K74 ["OnClick"]
  MOVE R24 R3
  CALL R24 0 1
  SETTABLEKS R24 R23 K47 ["LayoutOrder"]
  GETTABLEKS R25 R2 K79 ["showTopics"]
  JUMPIFNOT R25 [+3]
  GETTABLEKS R24 R6 K80 ["ListSelectedImage"]
  JUMP [+2]
  GETTABLEKS R24 R6 K81 ["ListImage"]
  SETTABLEKS R24 R23 K75 ["LeftIcon"]
  GETTABLEKS R24 R6 K82 ["IconSize"]
  SETTABLEKS R24 R23 K48 ["Size"]
  LOADK R24 K83 ["IconOnly"]
  SETTABLEKS R24 R23 K33 ["Style"]
  LOADK R24 K84 [""]
  SETTABLEKS R24 R23 K65 ["Text"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K57 ["List"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K76 [{"Cursor", "OnClick", "LayoutOrder", "LeftIcon", "Size", "Style", "Text"}]
  LOADK R24 K77 ["PointingHand"]
  SETTABLEKS R24 R23 K73 ["Cursor"]
  GETTABLEKS R25 R0 K0 ["props"]
  GETTABLEKS R24 R25 K85 ["OnQuit"]
  SETTABLEKS R24 R23 K74 ["OnClick"]
  MOVE R24 R3
  CALL R24 0 1
  SETTABLEKS R24 R23 K47 ["LayoutOrder"]
  GETTABLEKS R24 R6 K86 ["CloseImage"]
  SETTABLEKS R24 R23 K75 ["LeftIcon"]
  GETTABLEKS R24 R6 K82 ["IconSize"]
  SETTABLEKS R24 R23 K48 ["Size"]
  LOADK R24 K83 ["IconOnly"]
  SETTABLEKS R24 R23 K33 ["Style"]
  LOADK R24 K84 [""]
  SETTABLEKS R24 R23 K65 ["Text"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K58 ["Close"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K42 ["TopicBar"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K18 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K87 [{"LayoutOrder"}]
  MOVE R20 R3
  CALL R20 0 1
  SETTABLEKS R20 R19 K47 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K43 ["Separator"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K18 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K88 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing"}]
  GETIMPORT R20 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K20 ["AutomaticSize"]
  GETIMPORT R20 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K27 ["HorizontalAlignment"]
  GETIMPORT R20 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K26 ["Layout"]
  MOVE R20 R3
  CALL R20 0 1
  SETTABLEKS R20 R19 K47 ["LayoutOrder"]
  LOADN R20 0
  SETTABLEKS R20 R19 K30 ["Padding"]
  GETIMPORT R20 K90 [UDim.new]
  LOADN R21 0
  GETTABLEKS R22 R6 K30 ["Padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K31 ["Spacing"]
  GETTABLEKS R21 R2 K79 ["showTopics"]
  JUMPIFNOT R21 [+6]
  GETTABLEKS R22 R4 K9 ["topic"]
  NAMECALL R20 R0 K91 ["getTopicList"]
  CALL R20 2 1
  JUMP [+83]
  DUPTABLE R20 K95 [{"StepTitle", "StepDescription", "Keys"}]
  GETTABLEKS R22 R5 K96 ["title"]
  JUMPIFNOT R22 [+22]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 3
  DUPTABLE R23 K97 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R24 K69 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K20 ["AutomaticSize"]
  MOVE R24 R3
  CALL R24 0 1
  SETTABLEKS R24 R23 K47 ["LayoutOrder"]
  LOADK R24 K98 ["Title"]
  SETTABLEKS R24 R23 K33 ["Style"]
  GETTABLEKS R24 R5 K96 ["title"]
  SETTABLEKS R24 R23 K65 ["Text"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K92 ["StepTitle"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 3
  DUPTABLE R23 K101 [{"AutomaticSize", "LayoutOrder", "RichText", "Size", "Text", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R24 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K20 ["AutomaticSize"]
  MOVE R24 R3
  CALL R24 0 1
  SETTABLEKS R24 R23 K47 ["LayoutOrder"]
  LOADB R24 1
  SETTABLEKS R24 R23 K99 ["RichText"]
  GETIMPORT R24 K54 [UDim2.fromScale]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K48 ["Size"]
  GETTABLEKS R24 R5 K102 ["description"]
  SETTABLEKS R24 R23 K65 ["Text"]
  LOADB R24 1
  SETTABLEKS R24 R23 K100 ["TextWrapped"]
  GETIMPORT R24 K70 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K66 ["TextXAlignment"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K93 ["StepDescription"]
  JUMPIFNOT R10 [+13]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 6
  DUPTABLE R23 K103 [{"LayoutOrder", "PressedKeys"}]
  MOVE R24 R3
  CALL R24 0 1
  SETTABLEKS R24 R23 K47 ["LayoutOrder"]
  SETTABLEKS R10 R23 K14 ["PressedKeys"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K94 ["Keys"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K44 ["Scroller"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K18 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K104 [{"AutomaticSize", "LayoutOrder"}]
  GETIMPORT R20 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K20 ["AutomaticSize"]
  MOVE R20 R3
  CALL R20 0 1
  SETTABLEKS R20 R19 K47 ["LayoutOrder"]
  DUPTABLE R20 K108 [{"Back", "PaginationDots", "Next"}]
  JUMPIF R12 [+32]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K109 [{"AutomaticSize", "Cursor", "OnClick", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R24 K69 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K20 ["AutomaticSize"]
  LOADK R24 K77 ["PointingHand"]
  SETTABLEKS R24 R23 K73 ["Cursor"]
  GETTABLEKS R24 R1 K110 ["OnBack"]
  SETTABLEKS R24 R23 K74 ["OnClick"]
  MOVE R24 R3
  CALL R24 0 1
  SETTABLEKS R24 R23 K47 ["LayoutOrder"]
  LOADK R24 K111 ["Link"]
  SETTABLEKS R24 R23 K33 ["Style"]
  LOADK R26 K11 ["Tutorial"]
  LOADK R27 K105 ["Back"]
  NAMECALL R24 R7 K10 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K65 ["Text"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K105 ["Back"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 2
  DUPTABLE R23 K114 [{"AnchorPoint", "HorizontalAlignment", "Layout", "Position", "VerticalAlignment"}]
  GETIMPORT R24 K116 [Vector2.new]
  LOADK R25 K117 [0.5]
  LOADK R26 K117 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K112 ["AnchorPoint"]
  GETIMPORT R24 K119 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R24 R23 K27 ["HorizontalAlignment"]
  GETIMPORT R24 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K26 ["Layout"]
  GETIMPORT R24 K54 [UDim2.fromScale]
  LOADK R25 K117 [0.5]
  LOADK R26 K117 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K113 ["Position"]
  GETIMPORT R24 K120 [Enum.VerticalAlignment.Center]
  SETTABLEKS R24 R23 K34 ["VerticalAlignment"]
  DUPTABLE R24 K122 [{"Child"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R26 7
  DUPTABLE R27 K126 [{"Count", "OnSelected", "SelectedIndex"}]
  GETTABLEKS R28 R4 K127 ["topicStepCount"]
  SETTABLEKS R28 R27 K123 ["Count"]
  DUPCLOSURE R28 K128 [PROTO_9]
  SETTABLEKS R28 R27 K124 ["OnSelected"]
  GETTABLEKS R28 R4 K17 ["topicStep"]
  SETTABLEKS R28 R27 K125 ["SelectedIndex"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K121 ["Child"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K106 ["PaginationDots"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K129 [{"AnchorPoint", "AutomaticSize", "Cursor", "LayoutOrder", "OnClick", "Position", "Style", "Text"}]
  GETIMPORT R24 K116 [Vector2.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K112 ["AnchorPoint"]
  GETIMPORT R24 K69 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K20 ["AutomaticSize"]
  LOADK R24 K77 ["PointingHand"]
  SETTABLEKS R24 R23 K73 ["Cursor"]
  MOVE R24 R3
  CALL R24 0 1
  SETTABLEKS R24 R23 K47 ["LayoutOrder"]
  GETTABLEKS R24 R1 K130 ["OnNext"]
  SETTABLEKS R24 R23 K74 ["OnClick"]
  GETIMPORT R24 K54 [UDim2.fromScale]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K113 ["Position"]
  JUMPIFNOT R11 [+2]
  LOADK R24 K131 ["Primary"]
  JUMP [+1]
  LOADK R24 K111 ["Link"]
  SETTABLEKS R24 R23 K33 ["Style"]
  JUMPIFNOT R11 [+6]
  LOADK R26 K132 ["Plugin"]
  LOADK R27 K107 ["Next"]
  NAMECALL R24 R7 K10 ["getText"]
  CALL R24 3 1
  JUMP [+5]
  LOADK R26 K11 ["Tutorial"]
  LOADK R27 K133 ["Skip"]
  NAMECALL R24 R7 K10 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K65 ["Text"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K107 ["Next"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K45 ["NavigationRow"]
  CALL R13 3 -1
  RETURN R13 -1

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
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Stylizer"]
  GETTABLEKS R6 R3 K11 ["Localization"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["TutorialTypes"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["DockWidget"]
  GETTABLEKS R10 R8 K17 ["IconButton"]
  GETTABLEKS R11 R8 K18 ["PaginationDots"]
  GETTABLEKS R12 R8 K19 ["Pane"]
  GETTABLEKS R13 R8 K20 ["ScrollingFrame"]
  GETTABLEKS R14 R8 K21 ["StyledDialog"]
  GETTABLEKS R15 R8 K22 ["Separator"]
  GETTABLEKS R16 R8 K23 ["TextLabel"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K12 ["Src"]
  GETTABLEKS R19 R20 K24 ["Components"]
  GETTABLEKS R18 R19 K25 ["Compliment"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K12 ["Src"]
  GETTABLEKS R20 R21 K24 ["Components"]
  GETTABLEKS R19 R20 K26 ["HintKeys"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K12 ["Src"]
  GETTABLEKS R21 R22 K13 ["Util"]
  GETTABLEKS R20 R21 K27 ["counter"]
  CALL R19 1 1
  GETIMPORT R20 K30 [table.insert]
  GETTABLEKS R21 R1 K31 ["PureComponent"]
  LOADK R23 K32 ["TourWidget"]
  NAMECALL R21 R21 K33 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K34 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R22 R21 K35 ["init"]
  DUPCLOSURE R22 K36 [PROTO_7]
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R20
  SETTABLEKS R22 R21 K37 ["getTopicList"]
  DUPCLOSURE R22 K38 [PROTO_8]
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R16
  SETTABLEKS R22 R21 K39 ["render"]
  DUPCLOSURE R22 K40 [PROTO_10]
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R18
  CAPTURE VAL R11
  SETTABLEKS R22 R21 K41 ["renderWindow"]
  MOVE R22 R4
  DUPTABLE R23 K42 [{"Localization", "Stylizer"}]
  SETTABLEKS R6 R23 K11 ["Localization"]
  SETTABLEKS R5 R23 K10 ["Stylizer"]
  CALL R22 1 1
  MOVE R23 R21
  CALL R22 1 1
  MOVE R21 R22
  RETURN R21 1
