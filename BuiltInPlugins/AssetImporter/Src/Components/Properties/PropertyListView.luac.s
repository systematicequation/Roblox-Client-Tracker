PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"absoluteHorizontalSize"}]
  GETTABLEKS R4 R0 K2 ["x"]
  SETTABLEKS R4 R3 K0 ["absoluteHorizontalSize"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NEWTABLE R2 0 0
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R3 K2 [{"expanded", "absoluteHorizontalSize"}]
  DUPTABLE R4 K5 [{"FileGeneral", "ObjectGeneral"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["FileGeneral"]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["ObjectGeneral"]
  SETTABLEKS R4 R3 K0 ["expanded"]
  LOADN R4 0
  SETTABLEKS R4 R3 K1 ["absoluteHorizontalSize"]
  NAMECALL R1 R0 K6 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETTABLEKS R2 R0 K7 ["props"]
  GETTABLEKS R1 R2 K8 ["Instance"]
  NAMECALL R1 R1 K9 ["GetStatuses"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K10 ["statuses"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["onContentResize"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["refreshForStatusCompatibility"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["Instance"]
  NAMECALL R3 R3 K2 ["GetStatuses"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K3 ["statuses"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["instance"]
  GETTABLEKS R4 R0 K1 ["sectionName"]
  GETTABLEKS R5 R0 K2 ["style"]
  GETTABLEKS R6 R0 K3 ["localization"]
  GETUPVAL R7 0
  NAMECALL R8 R3 K4 ["GetStatuses_DEPRECATED"]
  CALL R8 1 1
  MOVE R9 R4
  CALL R7 2 1
  GETIMPORT R8 K6 [pairs]
  MOVE R9 R7
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETUPVAL R14 1
  GETTABLE R13 R14 R11
  GETIMPORT R14 K6 [pairs]
  MOVE R15 R12
  CALL R14 1 3
  FORGPREP_NEXT R14
  DUPTABLE R19 K10 [{"Level", "Type", "Context"}]
  SETTABLEKS R13 R19 K7 ["Level"]
  GETTABLEKS R20 R18 K11 ["StatusType"]
  SETTABLEKS R20 R19 K8 ["Type"]
  SETTABLEKS R18 R19 K9 ["Context"]
  GETTABLEKS R20 R2 K12 ["Status"]
  JUMPIFEQKNIL R20 [+7]
  GETTABLEKS R21 R2 K12 ["Status"]
  GETTABLEKS R20 R21 K7 ["Level"]
  JUMPIFEQKS R20 K13 ["Error"] [+6]
  SETTABLEKS R19 R2 K12 ["Status"]
  LOADB R20 1
  SETTABLEKS R20 R2 K14 ["IsSectionStatus"]
  JUMPIFNOTEQKS R13 K13 ["Error"] [+4]
  GETTABLEKS R20 R5 K15 ["ErrorStatus"]
  JUMP [+2]
  GETTABLEKS R20 R5 K16 ["WarningStatus"]
  GETUPVAL R21 2
  MOVE R22 R6
  GETTABLEKS R23 R18 K11 ["StatusType"]
  MOVE R24 R11
  MOVE R25 R18
  CALL R21 4 1
  MOVE R23 R1
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K17 ["createElement"]
  GETUPVAL R25 4
  DUPTABLE R26 K25 [{"AutomaticSize", "LayoutOrder", "Size", "Style", "Text", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R27 K28 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K18 ["AutomaticSize"]
  LENGTH R27 R1
  SETTABLEKS R27 R26 K19 ["LayoutOrder"]
  GETIMPORT R27 K31 [UDim2.fromOffset]
  GETTABLEKS R29 R0 K32 ["absoluteXSize"]
  GETTABLEKS R31 R5 K33 ["Sizes"]
  GETTABLEKS R30 R31 K34 ["StatusMessagePadding"]
  SUB R28 R29 R30
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K20 ["Size"]
  SETTABLEKS R20 R26 K21 ["Style"]
  SETTABLEKS R21 R26 K22 ["Text"]
  LOADB R27 1
  SETTABLEKS R27 R26 K23 ["TextWrapped"]
  GETIMPORT R27 K36 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K24 ["TextXAlignment"]
  CALL R24 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R22 K39 [table.insert]
  CALL R22 -1 0
  FORGLOOP R14 2 [-81]
  FORGLOOP R8 2 [-90]
  RETURN R0 0

PROTO_5:
  NEWTABLE R3 0 0
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R2 K0 ["Status"]
  JUMPIFNOT R9 [+6]
  GETTABLEKS R10 R2 K0 ["Status"]
  GETTABLEKS R9 R10 K1 ["Level"]
  JUMPIFEQKS R9 K2 ["Error"] [+6]
  SETTABLEKS R8 R2 K0 ["Status"]
  LOADB R9 1
  SETTABLEKS R9 R2 K3 ["IsSectionStatus"]
  GETTABLEKS R10 R8 K1 ["Level"]
  JUMPIFNOTEQKS R10 K2 ["Error"] [+6]
  GETTABLEKS R10 R1 K4 ["style"]
  GETTABLEKS R9 R10 K5 ["ErrorStatus"]
  JUMP [+4]
  GETTABLEKS R10 R1 K4 ["style"]
  GETTABLEKS R9 R10 K6 ["WarningStatus"]
  GETUPVAL R10 0
  GETTABLEKS R11 R1 K7 ["localization"]
  GETTABLEKS R12 R8 K8 ["Type"]
  GETTABLEKS R13 R8 K1 ["Level"]
  GETTABLEKS R14 R8 K9 ["Context"]
  CALL R10 4 1
  MOVE R12 R3
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K18 [{"AutomaticSize", "LayoutOrder", "Size", "Style", "Text", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R16 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K11 ["AutomaticSize"]
  LENGTH R16 R3
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  GETIMPORT R16 K24 [UDim2.fromOffset]
  GETTABLEKS R18 R1 K25 ["absoluteXSize"]
  GETTABLEKS R21 R1 K4 ["style"]
  GETTABLEKS R20 R21 K26 ["Sizes"]
  GETTABLEKS R19 R20 K27 ["StatusMessagePadding"]
  SUB R17 R18 R19
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K13 ["Size"]
  SETTABLEKS R9 R15 K14 ["Style"]
  SETTABLEKS R10 R15 K15 ["Text"]
  LOADB R16 1
  SETTABLEKS R16 R15 K16 ["TextWrapped"]
  GETIMPORT R16 K29 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K17 ["TextXAlignment"]
  CALL R13 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K32 [table.insert]
  CALL R11 -1 0
  FORGLOOP R4 2 [-82]
  RETURN R3 1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 3
  JUMPIFNOTEQKS R3 K0 [""] [+3]
  LOADNIL R5
  RETURN R5 1
  DUPTABLE R5 K4 [{"Level", "Type", "Context"}]
  SETTABLEKS R2 R5 K1 ["Level"]
  SETTABLEKS R3 R5 K2 ["Type"]
  SETTABLEKS R4 R5 K3 ["Context"]
  RETURN R5 1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["status"]
  JUMPIFNOT R3 [+18]
  GETTABLEKS R4 R1 K1 ["Status"]
  JUMPIFNOT R4 [+10]
  GETTABLEKS R5 R1 K1 ["Status"]
  GETTABLEKS R4 R5 K2 ["Level"]
  JUMPIFEQKS R4 K3 ["Error"] [+10]
  GETTABLEKS R4 R3 K2 ["Level"]
  JUMPIFNOTEQKS R4 K3 ["Error"] [+6]
  SETTABLEKS R3 R1 K1 ["Status"]
  LOADB R4 0
  SETTABLEKS R4 R1 K4 ["IsSectionStatus"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K11 [{"Instance", "LayoutOrder", "Localization", "Status", "PropertyMetadata", "OnInteract"}]
  GETTABLEKS R7 R0 K12 ["importData"]
  SETTABLEKS R7 R6 K6 ["Instance"]
  GETTABLEKS R7 R0 K13 ["layoutOrder"]
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  GETTABLEKS R7 R0 K14 ["localization"]
  SETTABLEKS R7 R6 K8 ["Localization"]
  SETTABLEKS R3 R6 K1 ["Status"]
  GETTABLEKS R7 R0 K15 ["propertyMetadata"]
  SETTABLEKS R7 R6 K9 ["PropertyMetadata"]
  SETTABLEKS R2 R6 K10 ["OnInteract"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_8:
  GETTABLEKS R3 R1 K0 ["Arrow"]
  GETTABLEKS R2 R3 K1 ["Size"]
  GETTABLEKS R3 R1 K2 ["Spacing"]
  GETTABLEKS R6 R2 K3 ["X"]
  GETTABLEKS R5 R6 K4 ["Offset"]
  ADD R4 R5 R3
  JUMPIFNOT R0 [+18]
  GETTABLEKS R5 R1 K5 ["Text"]
  GETUPVAL R6 0
  MOVE R8 R0
  GETTABLEKS R9 R5 K6 ["TextSize"]
  GETTABLEKS R10 R5 K7 ["Font"]
  GETIMPORT R11 K10 [Vector2.new]
  CALL R11 0 -1
  NAMECALL R6 R6 K11 ["GetTextSize"]
  CALL R6 -1 1
  GETTABLEKS R8 R6 K3 ["X"]
  ADD R7 R8 R3
  ADD R4 R4 R7
  RETURN R4 1

PROTO_9:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"expanded"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Dictionary"]
  GETTABLEKS R3 R4 K3 ["join"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["state"]
  GETTABLEKS R4 R5 K0 ["expanded"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["Section"]
  GETUPVAL R8 3
  NOT R7 R8
  SETTABLE R7 R5 R6
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["expanded"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K1 ["Stylizer"]
  GETTABLEKS R5 R6 K2 ["PropertySectionHeader"]
  GETUPVAL R6 0
  MOVE R7 R5
  NEWTABLE R8 0 2
  LOADK R9 K3 ["Arrow"]
  LOADK R10 K4 ["Text"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K5 ["Localization"]
  LOADK R9 K6 ["Sections"]
  GETTABLEKS R10 R1 K7 ["Section"]
  NAMECALL R7 R7 K8 ["getText"]
  CALL R7 3 1
  LOADNIL R8
  JUMPIFNOT R3 [+54]
  GETTABLEKS R11 R5 K3 ["Arrow"]
  GETTABLEKS R10 R11 K9 ["Size"]
  GETTABLEKS R11 R5 K10 ["Spacing"]
  GETTABLEKS R14 R10 K11 ["X"]
  GETTABLEKS R13 R14 K12 ["Offset"]
  ADD R12 R13 R11
  JUMPIFNOT R7 [+18]
  GETTABLEKS R13 R5 K4 ["Text"]
  GETUPVAL R14 1
  MOVE R16 R7
  GETTABLEKS R17 R13 K13 ["TextSize"]
  GETTABLEKS R18 R13 K14 ["Font"]
  GETIMPORT R19 K17 [Vector2.new]
  CALL R19 0 -1
  NAMECALL R14 R14 K18 ["GetTextSize"]
  CALL R14 -1 1
  GETTABLEKS R16 R14 K11 ["X"]
  ADD R15 R16 R11
  ADD R12 R12 R15
  MOVE R9 R12
  GETIMPORT R10 K20 [UDim2.new]
  LOADN R11 1
  MINUS R12 R9
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  GETUPVAL R11 2
  MOVE R12 R4
  DUPTABLE R13 K22 [{"LayoutOrder", "Size"}]
  LOADN R14 3
  SETTABLEKS R14 R13 K21 ["LayoutOrder"]
  SETTABLEKS R10 R13 K9 ["Size"]
  CALL R11 2 1
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K23 ["createElement"]
  MOVE R13 R3
  MOVE R14 R11
  CALL R12 2 1
  MOVE R8 R12
  NEWTABLE R9 0 0
  GETUPVAL R10 4
  CALL R10 0 1
  JUMPIFNOT R10 [+18]
  GETUPVAL R10 5
  CALL R10 0 1
  JUMPIFNOT R10 [+15]
  GETTABLEKS R10 R1 K24 ["Callouts"]
  JUMPIFNOT R10 [+12]
  JUMPIF R2 [+11]
  GETUPVAL R10 6
  GETTABLEKS R11 R1 K24 ["Callouts"]
  GETTABLEKS R12 R1 K7 ["Section"]
  GETTABLEKS R14 R0 K0 ["props"]
  GETTABLEKS R13 R14 K25 ["AssetImportSession"]
  CALL R10 3 1
  MOVE R9 R10
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K23 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K32 [{"HorizontalAlignment", "LayoutOrder", "Layout", "OnClick", "Padding", "Size", "Style", "Spacing", "VerticalAlignment"}]
  GETTABLEKS R13 R5 K26 ["HorizontalAlignment"]
  SETTABLEKS R13 R12 K26 ["HorizontalAlignment"]
  LOADN R13 1
  SETTABLEKS R13 R12 K21 ["LayoutOrder"]
  GETIMPORT R13 K36 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K27 ["Layout"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K28 ["OnClick"]
  GETTABLEKS R13 R5 K29 ["Padding"]
  SETTABLEKS R13 R12 K29 ["Padding"]
  GETTABLEKS R13 R5 K9 ["Size"]
  SETTABLEKS R13 R12 K9 ["Size"]
  SETTABLEKS R6 R12 K30 ["Style"]
  GETTABLEKS R13 R5 K10 ["Spacing"]
  SETTABLEKS R13 R12 K10 ["Spacing"]
  GETTABLEKS R13 R5 K31 ["VerticalAlignment"]
  SETTABLEKS R13 R12 K31 ["VerticalAlignment"]
  DUPTABLE R13 K40 [{"Image", "Title", "HeaderStatus"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K23 ["createElement"]
  GETUPVAL R15 9
  DUPTABLE R16 K42 [{"LayoutOrder", "Style", "StyleModifier"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K21 ["LayoutOrder"]
  GETTABLEKS R17 R5 K3 ["Arrow"]
  SETTABLEKS R17 R16 K30 ["Style"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R18 10
  GETTABLEKS R17 R18 K43 ["Selected"]
  JUMPIF R17 [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K41 ["StyleModifier"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["Image"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K23 ["createElement"]
  GETUPVAL R15 11
  DUPTABLE R16 K46 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextWrapped"}]
  GETIMPORT R17 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K44 ["AutomaticSize"]
  LOADN R17 2
  SETTABLEKS R17 R16 K21 ["LayoutOrder"]
  GETTABLEKS R17 R5 K4 ["Text"]
  SETTABLEKS R17 R16 K30 ["Style"]
  SETTABLEKS R7 R16 K4 ["Text"]
  LOADB R17 1
  SETTABLEKS R17 R16 K45 ["TextWrapped"]
  MOVE R17 R9
  CALL R14 3 1
  SETTABLEKS R14 R13 K38 ["Title"]
  SETTABLEKS R8 R13 K39 ["HeaderStatus"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_11:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"expanded"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Dictionary"]
  GETTABLEKS R3 R4 K3 ["join"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["state"]
  GETTABLEKS R4 R5 K0 ["expanded"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["Section"]
  GETUPVAL R8 3
  NOT R7 R8
  SETTABLE R7 R5 R6
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["expanded"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R0 K0 ["props"]
  DUPTABLE R4 K3 [{"Status", "IsSectionStatus"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K1 ["Status"]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["IsSectionStatus"]
  DUPTABLE R5 K7 [{"absoluteXSize", "style", "localization"}]
  GETTABLEKS R7 R0 K8 ["state"]
  GETTABLEKS R6 R7 K9 ["absoluteHorizontalSize"]
  SETTABLEKS R6 R5 K4 ["absoluteXSize"]
  GETTABLEKS R6 R3 K10 ["Stylizer"]
  SETTABLEKS R6 R5 K5 ["style"]
  GETTABLEKS R6 R3 K11 ["Localization"]
  SETTABLEKS R6 R5 K6 ["localization"]
  GETUPVAL R6 0
  GETUPVAL R7 1
  GETTABLEKS R8 R2 K12 ["Section"]
  GETTABLEKS R9 R0 K13 ["statuses"]
  CALL R7 2 1
  MOVE R8 R5
  MOVE R9 R4
  CALL R6 3 1
  DUPTABLE R7 K16 [{"instance", "sectionName", "absoluteXSize", "style", "localization"}]
  GETTABLEKS R8 R3 K17 ["Instance"]
  SETTABLEKS R8 R7 K14 ["instance"]
  GETTABLEKS R8 R2 K12 ["Section"]
  SETTABLEKS R8 R7 K15 ["sectionName"]
  GETTABLEKS R9 R0 K8 ["state"]
  GETTABLEKS R8 R9 K9 ["absoluteHorizontalSize"]
  SETTABLEKS R8 R7 K4 ["absoluteXSize"]
  GETTABLEKS R8 R3 K10 ["Stylizer"]
  SETTABLEKS R8 R7 K5 ["style"]
  GETTABLEKS R8 R3 K11 ["Localization"]
  SETTABLEKS R8 R7 K6 ["localization"]
  GETUPVAL R8 2
  MOVE R9 R7
  MOVE R10 R6
  MOVE R11 R4
  CALL R8 3 0
  NEWTABLE R8 0 0
  GETIMPORT R9 K19 [pairs]
  GETTABLEKS R10 R2 K20 ["Properties"]
  CALL R9 1 3
  FORGPREP_NEXT R9
  GETTABLEKS R14 R13 K21 ["ShouldHide"]
  JUMPIFNOT R14 [+8]
  GETTABLEKS R14 R13 K21 ["ShouldHide"]
  GETTABLEKS R15 R3 K17 ["Instance"]
  GETTABLEKS R16 R3 K22 ["AssetImportSession"]
  CALL R14 2 1
  JUMPIF R14 [+58]
  GETUPVAL R14 1
  GETTABLEKS R15 R13 K23 ["Name"]
  GETTABLEKS R16 R0 K13 ["statuses"]
  CALL R14 2 1
  GETUPVAL R15 3
  MOVE R16 R14
  CALL R15 1 1
  JUMPIF R15 [+20]
  GETTABLEKS R16 R3 K17 ["Instance"]
  GETTABLEKS R17 R13 K23 ["Name"]
  GETUPVAL R18 4
  MOVE R19 R16
  MOVE R20 R17
  CALL R18 2 3
  JUMPIFNOTEQKS R19 K24 [""] [+3]
  LOADNIL R15
  JUMP [+8]
  DUPTABLE R21 K28 [{"Level", "Type", "Context"}]
  SETTABLEKS R18 R21 K25 ["Level"]
  SETTABLEKS R19 R21 K26 ["Type"]
  SETTABLEKS R20 R21 K27 ["Context"]
  MOVE R15 R21
  DUPTABLE R16 K33 [{"importData", "layoutOrder", "propertyMetadata", "localization", "status"}]
  GETTABLEKS R17 R3 K17 ["Instance"]
  SETTABLEKS R17 R16 K29 ["importData"]
  LENGTH R18 R6
  ADD R17 R12 R18
  SETTABLEKS R17 R16 K30 ["layoutOrder"]
  SETTABLEKS R13 R16 K31 ["propertyMetadata"]
  GETTABLEKS R17 R3 K11 ["Localization"]
  SETTABLEKS R17 R16 K6 ["localization"]
  SETTABLEKS R15 R16 K32 ["status"]
  MOVE R18 R8
  GETUPVAL R19 5
  MOVE R20 R16
  MOVE R21 R4
  GETTABLEKS R22 R0 K34 ["refreshForStatusCompatibility"]
  CALL R19 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R17 K37 [table.insert]
  CALL R17 -1 0
  FORGLOOP R9 2 [-70]
  LENGTH R9 R6
  JUMPIFNOTEQKN R9 K38 [0] [+6]
  LENGTH R9 R8
  JUMPIFNOTEQKN R9 K38 [0] [+3]
  LOADNIL R9
  RETURN R9 1
  GETTABLEKS R11 R0 K8 ["state"]
  GETTABLEKS R10 R11 K39 ["expanded"]
  GETTABLEKS R11 R2 K12 ["Section"]
  GETTABLE R9 R10 R11
  LOADB R10 0
  GETTABLEKS R11 R4 K1 ["Status"]
  JUMPIFEQKNIL R11 [+5]
  NOT R10 R9
  JUMPIF R10 [+2]
  GETTABLEKS R10 R4 K2 ["IsSectionStatus"]
  JUMPIFNOT R10 [+2]
  GETUPVAL R11 6
  JUMP [+1]
  LOADNIL R11
  JUMPIFNOT R10 [+29]
  DUPTABLE R12 K44 [{"StatusLevel", "StatusMessage", "StatusContext", "Position"}]
  GETTABLEKS R14 R4 K1 ["Status"]
  GETTABLEKS R13 R14 K25 ["Level"]
  SETTABLEKS R13 R12 K40 ["StatusLevel"]
  GETTABLEKS R14 R4 K1 ["Status"]
  GETTABLEKS R13 R14 K26 ["Type"]
  SETTABLEKS R13 R12 K41 ["StatusMessage"]
  GETTABLEKS R14 R4 K1 ["Status"]
  GETTABLEKS R13 R14 K27 ["Context"]
  SETTABLEKS R13 R12 K42 ["StatusContext"]
  GETIMPORT R13 K47 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K43 ["Position"]
  JUMP [+1]
  LOADNIL R12
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K48 ["createElement"]
  GETUPVAL R14 8
  DUPTABLE R15 K58 [{"Expanded", "OnExpandedChanged", "Layout", "LayoutOrder", "Style", "Text", "HeaderComponent", "HeaderComponentProps", "HeaderOverride"}]
  SETTABLEKS R9 R15 K49 ["Expanded"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE VAL R2
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K50 ["OnExpandedChanged"]
  GETIMPORT R16 K62 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K51 ["Layout"]
  SETTABLEKS R1 R15 K52 ["LayoutOrder"]
  LOADK R16 K63 ["ImportTree"]
  SETTABLEKS R16 R15 K53 ["Style"]
  GETTABLEKS R16 R3 K11 ["Localization"]
  LOADK R18 K64 ["Sections"]
  GETTABLEKS R19 R2 K12 ["Section"]
  NAMECALL R16 R16 K65 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K54 ["Text"]
  GETUPVAL R17 10
  CALL R17 0 1
  JUMPIFNOT R17 [+3]
  GETUPVAL R17 11
  CALL R17 0 1
  JUMPIF R17 [+2]
  MOVE R16 R11
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K55 ["HeaderComponent"]
  GETUPVAL R17 10
  CALL R17 0 1
  JUMPIFNOT R17 [+3]
  GETUPVAL R17 11
  CALL R17 0 1
  JUMPIF R17 [+2]
  MOVE R16 R12
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K56 ["HeaderComponentProps"]
  GETUPVAL R17 10
  CALL R17 0 1
  JUMPIFNOT R17 [+11]
  GETUPVAL R17 11
  CALL R17 0 1
  JUMPIFNOT R17 [+8]
  MOVE R18 R2
  MOVE R19 R9
  MOVE R20 R11
  MOVE R21 R12
  NAMECALL R16 R0 K66 ["createHeader"]
  CALL R16 5 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K57 ["HeaderOverride"]
  GETUPVAL R18 9
  GETTABLEKS R17 R18 K67 ["List"]
  GETTABLEKS R16 R17 K68 ["join"]
  MOVE R17 R8
  MOVE R18 R6
  CALL R16 2 -1
  CALL R13 -1 -1
  RETURN R13 -1

PROTO_13:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"expanded"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Dictionary"]
  GETTABLEKS R3 R4 K3 ["join"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["state"]
  GETTABLEKS R4 R5 K0 ["expanded"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["Section"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["state"]
  GETTABLEKS R9 R10 K0 ["expanded"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["Section"]
  GETTABLE R8 R9 R10
  NOT R7 R8
  SETTABLE R7 R5 R6
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["expanded"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  GETTABLEKS R5 R1 K4 ["Instance"]
  JUMPIF R5 [+2]
  LOADNIL R5
  RETURN R5 1
  NEWTABLE R5 0 0
  GETIMPORT R6 K6 [pairs]
  GETUPVAL R7 0
  GETTABLEKS R8 R1 K4 ["Instance"]
  CALL R7 1 -1
  CALL R6 -1 3
  FORGPREP_NEXT R6
  GETUPVAL R11 1
  CALL R11 0 1
  JUMPIFNOT R11 [+7]
  MOVE R13 R9
  MOVE R14 R10
  NAMECALL R11 R0 K7 ["buildSection"]
  CALL R11 3 1
  SETTABLE R11 R5 R9
  JUMP [+332]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 0
  DUPTABLE R13 K12 [{"StatusLevel", "StatusMessage", "StatusContext", "GlobalStatus"}]
  LOADNIL R14
  SETTABLEKS R14 R13 K8 ["StatusLevel"]
  LOADNIL R14
  SETTABLEKS R14 R13 K9 ["StatusMessage"]
  LOADNIL R14
  SETTABLEKS R14 R13 K10 ["StatusContext"]
  LOADB R14 0
  SETTABLEKS R14 R13 K11 ["GlobalStatus"]
  GETTABLEKS R15 R2 K13 ["absoluteHorizontalSize"]
  GETTABLEKS R17 R4 K14 ["Sizes"]
  GETTABLEKS R16 R17 K15 ["StatusMessagePadding"]
  SUB R14 R15 R16
  GETUPVAL R15 2
  GETTABLEKS R16 R1 K4 ["Instance"]
  NAMECALL R16 R16 K16 ["GetStatuses_DEPRECATED"]
  CALL R16 1 1
  GETTABLEKS R17 R10 K17 ["Section"]
  CALL R15 2 1
  GETIMPORT R16 K6 [pairs]
  MOVE R17 R15
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETIMPORT R21 K6 [pairs]
  MOVE R22 R20
  CALL R21 1 3
  FORGPREP_NEXT R21
  GETTABLEKS R26 R13 K8 ["StatusLevel"]
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K18 ["Error"]
  JUMPIFEQ R26 R27 [+16]
  DUPTABLE R26 K12 [{"StatusLevel", "StatusMessage", "StatusContext", "GlobalStatus"}]
  GETUPVAL R28 4
  GETTABLE R27 R28 R19
  SETTABLEKS R27 R26 K8 ["StatusLevel"]
  GETTABLEKS R27 R25 K19 ["StatusType"]
  SETTABLEKS R27 R26 K9 ["StatusMessage"]
  SETTABLEKS R25 R26 K10 ["StatusContext"]
  LOADB R27 1
  SETTABLEKS R27 R26 K11 ["GlobalStatus"]
  MOVE R13 R26
  GETUPVAL R28 4
  GETTABLE R27 R28 R19
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K18 ["Error"]
  JUMPIFNOTEQ R27 R28 [+4]
  GETTABLEKS R26 R4 K20 ["ErrorStatus"]
  JUMP [+2]
  GETTABLEKS R26 R4 K21 ["WarningStatus"]
  GETUPVAL R27 5
  MOVE R28 R3
  GETTABLEKS R29 R25 K19 ["StatusType"]
  MOVE R30 R19
  MOVE R31 R25
  CALL R27 4 1
  MOVE R29 R12
  GETUPVAL R31 6
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 7
  DUPTABLE R32 K30 [{"AutomaticSize", "LayoutOrder", "Size", "Style", "Text", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R33 K33 [Enum.AutomaticSize.XY]
  SETTABLEKS R33 R32 K23 ["AutomaticSize"]
  LENGTH R33 R12
  SETTABLEKS R33 R32 K24 ["LayoutOrder"]
  GETIMPORT R33 K36 [UDim2.fromOffset]
  MOVE R34 R14
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K25 ["Size"]
  SETTABLEKS R26 R32 K26 ["Style"]
  SETTABLEKS R27 R32 K27 ["Text"]
  LOADB R33 1
  SETTABLEKS R33 R32 K28 ["TextWrapped"]
  GETIMPORT R33 K38 [Enum.TextXAlignment.Left]
  SETTABLEKS R33 R32 K29 ["TextXAlignment"]
  CALL R30 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R28 K41 [table.insert]
  CALL R28 -1 0
  FORGLOOP R21 2 [-78]
  FORGLOOP R16 2 [-85]
  GETIMPORT R16 K6 [pairs]
  GETTABLEKS R17 R10 K42 ["Properties"]
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETTABLEKS R21 R20 K43 ["ShouldHide"]
  JUMPIFNOT R21 [+8]
  GETTABLEKS R21 R20 K43 ["ShouldHide"]
  GETTABLEKS R22 R1 K4 ["Instance"]
  GETTABLEKS R23 R1 K44 ["AssetImportSession"]
  CALL R21 2 1
  JUMPIF R21 [+61]
  GETUPVAL R21 8
  GETTABLEKS R22 R1 K4 ["Instance"]
  GETTABLEKS R23 R20 K45 ["Name"]
  CALL R21 2 3
  JUMPIFNOT R21 [+21]
  GETTABLEKS R24 R13 K11 ["GlobalStatus"]
  JUMPIF R24 [+18]
  GETTABLEKS R24 R13 K8 ["StatusLevel"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["Error"]
  JUMPIFEQ R24 R25 [+12]
  DUPTABLE R24 K12 [{"StatusLevel", "StatusMessage", "StatusContext", "GlobalStatus"}]
  SETTABLEKS R21 R24 K8 ["StatusLevel"]
  SETTABLEKS R22 R24 K9 ["StatusMessage"]
  SETTABLEKS R23 R24 K10 ["StatusContext"]
  LOADB R25 0
  SETTABLEKS R25 R24 K11 ["GlobalStatus"]
  MOVE R13 R24
  MOVE R25 R11
  GETUPVAL R27 6
  GETTABLEKS R26 R27 K22 ["createElement"]
  GETUPVAL R27 9
  DUPTABLE R28 K48 [{"Instance", "LayoutOrder", "Localization", "StatusLevel", "StatusMessage", "StatusContext", "PropertyMetadata", "OnInteract"}]
  GETTABLEKS R29 R1 K4 ["Instance"]
  SETTABLEKS R29 R28 K4 ["Instance"]
  LENGTH R30 R12
  ADD R29 R19 R30
  SETTABLEKS R29 R28 K24 ["LayoutOrder"]
  SETTABLEKS R3 R28 K2 ["Localization"]
  SETTABLEKS R21 R28 K8 ["StatusLevel"]
  SETTABLEKS R22 R28 K9 ["StatusMessage"]
  SETTABLEKS R23 R28 K10 ["StatusContext"]
  SETTABLEKS R20 R28 K46 ["PropertyMetadata"]
  GETTABLEKS R29 R0 K49 ["refreshForStatusCompatibility"]
  SETTABLEKS R29 R28 K47 ["OnInteract"]
  CALL R26 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R24 K41 [table.insert]
  CALL R24 -1 0
  FORGLOOP R16 2 [-73]
  LENGTH R16 R11
  LOADN R17 0
  JUMPIFLT R17 R16 [+5]
  LENGTH R16 R12
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+121]
  GETTABLEKS R18 R0 K1 ["state"]
  GETTABLEKS R17 R18 K50 ["expanded"]
  GETTABLEKS R18 R10 K17 ["Section"]
  GETTABLE R16 R17 R18
  LOADNIL R17
  LOADNIL R18
  GETTABLEKS R19 R13 K8 ["StatusLevel"]
  JUMPIFEQKNIL R19 [+29]
  JUMPIFNOT R16 [+3]
  GETTABLEKS R19 R13 K11 ["GlobalStatus"]
  JUMPIFNOT R19 [+24]
  GETUPVAL R17 10
  DUPTABLE R19 K52 [{"StatusLevel", "StatusMessage", "StatusContext", "Position"}]
  GETTABLEKS R20 R13 K8 ["StatusLevel"]
  SETTABLEKS R20 R19 K8 ["StatusLevel"]
  GETTABLEKS R20 R13 K9 ["StatusMessage"]
  SETTABLEKS R20 R19 K9 ["StatusMessage"]
  GETTABLEKS R20 R13 K10 ["StatusContext"]
  SETTABLEKS R20 R19 K10 ["StatusContext"]
  GETIMPORT R20 K54 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K51 ["Position"]
  MOVE R18 R19
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K22 ["createElement"]
  GETUPVAL R20 11
  DUPTABLE R21 K61 [{"Expanded", "OnExpandedChanged", "Layout", "LayoutOrder", "Style", "Text", "HeaderComponent", "HeaderComponentProps", "HeaderOverride"}]
  SETTABLEKS R16 R21 K55 ["Expanded"]
  NEWCLOSURE R22 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U12
  CAPTURE VAL R10
  SETTABLEKS R22 R21 K56 ["OnExpandedChanged"]
  GETIMPORT R22 K64 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K57 ["Layout"]
  SETTABLEKS R9 R21 K24 ["LayoutOrder"]
  LOADK R22 K65 ["ImportTree"]
  SETTABLEKS R22 R21 K26 ["Style"]
  LOADK R24 K66 ["Sections"]
  GETTABLEKS R25 R10 K17 ["Section"]
  NAMECALL R22 R3 K67 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K27 ["Text"]
  GETUPVAL R23 13
  CALL R23 0 1
  JUMPIFNOT R23 [+3]
  GETUPVAL R23 14
  CALL R23 0 1
  JUMPIF R23 [+2]
  MOVE R22 R17
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K58 ["HeaderComponent"]
  GETUPVAL R23 13
  CALL R23 0 1
  JUMPIFNOT R23 [+3]
  GETUPVAL R23 14
  CALL R23 0 1
  JUMPIF R23 [+2]
  MOVE R22 R18
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K59 ["HeaderComponentProps"]
  GETUPVAL R23 13
  CALL R23 0 1
  JUMPIFNOT R23 [+11]
  GETUPVAL R23 14
  CALL R23 0 1
  JUMPIFNOT R23 [+8]
  MOVE R24 R10
  MOVE R25 R16
  MOVE R26 R17
  MOVE R27 R18
  NAMECALL R22 R0 K68 ["createHeader"]
  CALL R22 5 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K60 ["HeaderOverride"]
  GETUPVAL R24 12
  GETTABLEKS R23 R24 K69 ["List"]
  GETTABLEKS R22 R23 K70 ["join"]
  MOVE R23 R11
  MOVE R24 R12
  CALL R22 2 -1
  CALL R19 -1 1
  SETTABLE R19 R5 R9
  FORGLOOP R6 2 [-343]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K22 ["createElement"]
  GETUPVAL R7 15
  DUPTABLE R8 K75 [{"AutomaticCanvasSize", "CanvasSize", "Layout", "OnCanvasResize", "Position", "ScrollingDirection", "Size"}]
  GETIMPORT R9 K77 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K71 ["AutomaticCanvasSize"]
  GETIMPORT R9 K79 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K72 ["CanvasSize"]
  GETIMPORT R9 K64 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K57 ["Layout"]
  GETTABLEKS R9 R0 K80 ["onContentResize"]
  SETTABLEKS R9 R8 K73 ["OnCanvasResize"]
  GETIMPORT R9 K79 [UDim2.fromScale]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K51 ["Position"]
  GETIMPORT R9 K81 [Enum.ScrollingDirection.Y]
  SETTABLEKS R9 R8 K74 ["ScrollingDirection"]
  GETIMPORT R9 K79 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K25 ["Size"]
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1

PROTO_15:
  DUPTABLE R1 K2 [{"SettingsChanged", "AssetImportSession"}]
  GETTABLEKS R2 R0 K3 ["settingsChanged"]
  SETTABLEKS R2 R1 K0 ["SettingsChanged"]
  GETTABLEKS R2 R0 K4 ["assetImportSession"]
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["TextService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K11 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Cryo"]
  CALL R6 1 1
  GETTABLEKS R7 R5 K16 ["ContextServices"]
  GETTABLEKS R8 R7 K17 ["withContext"]
  GETTABLEKS R9 R7 K18 ["Localization"]
  GETTABLEKS R10 R7 K19 ["Stylizer"]
  GETTABLEKS R12 R5 K20 ["Util"]
  GETTABLEKS R11 R12 K21 ["StyleModifier"]
  GETTABLEKS R12 R5 K22 ["UI"]
  GETTABLEKS R13 R12 K23 ["ExpandablePane"]
  GETTABLEKS R14 R12 K24 ["Pane"]
  GETTABLEKS R15 R12 K25 ["ScrollingFrame"]
  GETTABLEKS R16 R12 K26 ["TextLabel"]
  GETTABLEKS R17 R12 K27 ["Image"]
  GETIMPORT R18 K8 [require]
  GETIMPORT R21 K1 [script]
  GETTABLEKS R20 R21 K2 ["Parent"]
  GETTABLEKS R19 R20 K28 ["PropertyView"]
  CALL R18 1 1
  GETIMPORT R19 K8 [require]
  GETTABLEKS R23 R0 K9 ["Src"]
  GETTABLEKS R22 R23 K29 ["Components"]
  GETTABLEKS R21 R22 K30 ["Properties"]
  GETTABLEKS R20 R21 K31 ["PropertyStatus"]
  CALL R19 1 1
  GETTABLEKS R20 R3 K32 ["PureComponent"]
  LOADK R22 K33 ["PropertyListView"]
  NAMECALL R20 R20 K34 ["extend"]
  CALL R20 2 1
  GETIMPORT R21 K8 [require]
  GETTABLEKS R24 R0 K9 ["Src"]
  GETTABLEKS R23 R24 K35 ["Utility"]
  GETTABLEKS R22 R23 K36 ["createCalloutComponents"]
  CALL R21 1 1
  GETIMPORT R22 K8 [require]
  GETTABLEKS R26 R0 K9 ["Src"]
  GETTABLEKS R25 R26 K35 ["Utility"]
  GETTABLEKS R24 R25 K37 ["Status"]
  GETTABLEKS R23 R24 K38 ["filterStatusesForProp"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETTABLEKS R27 R0 K9 ["Src"]
  GETTABLEKS R26 R27 K35 ["Utility"]
  GETTABLEKS R25 R26 K37 ["Status"]
  GETTABLEKS R24 R25 K39 ["getHighestSeverityStatus"]
  CALL R23 1 1
  GETIMPORT R24 K8 [require]
  GETTABLEKS R28 R0 K9 ["Src"]
  GETTABLEKS R27 R28 K35 ["Utility"]
  GETTABLEKS R26 R27 K37 ["Status"]
  GETTABLEKS R25 R26 K40 ["GetLocalizedStatusMessage"]
  CALL R24 1 1
  GETIMPORT R25 K8 [require]
  GETTABLEKS R28 R0 K9 ["Src"]
  GETTABLEKS R27 R28 K35 ["Utility"]
  GETTABLEKS R26 R27 K41 ["getPropertiesForInstance"]
  CALL R25 1 1
  GETIMPORT R26 K8 [require]
  GETTABLEKS R30 R0 K9 ["Src"]
  GETTABLEKS R29 R30 K35 ["Utility"]
  GETTABLEKS R28 R29 K37 ["Status"]
  GETTABLEKS R27 R28 K42 ["GetRelevantStatuses"]
  CALL R26 1 1
  GETIMPORT R27 K8 [require]
  GETTABLEKS R31 R0 K9 ["Src"]
  GETTABLEKS R30 R31 K35 ["Utility"]
  GETTABLEKS R29 R30 K37 ["Status"]
  GETTABLEKS R28 R29 K43 ["GetHighestSeverityStatus_DEPRECATED"]
  CALL R27 1 1
  GETIMPORT R28 K8 [require]
  GETTABLEKS R31 R0 K9 ["Src"]
  GETTABLEKS R30 R31 K44 ["Resources"]
  GETTABLEKS R29 R30 K45 ["StatusLevel"]
  CALL R28 1 1
  GETTABLEKS R29 R5 K46 ["Dash"]
  GETTABLEKS R30 R29 K47 ["omit"]
  GETTABLEKS R31 R29 K48 ["join"]
  GETIMPORT R32 K8 [require]
  GETTABLEKS R35 R0 K9 ["Src"]
  GETTABLEKS R34 R35 K49 ["Flags"]
  GETTABLEKS R33 R34 K50 ["getFFlagAinStatusesV2Release"]
  CALL R32 1 1
  GETIMPORT R33 K8 [require]
  GETTABLEKS R36 R0 K9 ["Src"]
  GETTABLEKS R35 R36 K49 ["Flags"]
  GETTABLEKS R34 R35 K51 ["getFFlagAinRefreshPropertyListView"]
  CALL R33 1 1
  GETIMPORT R34 K8 [require]
  GETTABLEKS R37 R0 K9 ["Src"]
  GETTABLEKS R36 R37 K49 ["Flags"]
  GETTABLEKS R35 R36 K52 ["getFFlagImporterOpensAvatarPreviewer2"]
  CALL R34 1 1
  GETIMPORT R35 K8 [require]
  GETTABLEKS R38 R0 K9 ["Src"]
  GETTABLEKS R37 R38 K49 ["Flags"]
  GETTABLEKS R36 R37 K53 ["getFFlagImporterOpensAvatarPreviewerBetaCheck"]
  CALL R35 1 1
  NEWTABLE R36 2 0
  GETTABLEKS R37 R28 K54 ["Error"]
  SETTABLEKS R37 R36 K55 ["Errors"]
  GETTABLEKS R37 R28 K56 ["Warning"]
  SETTABLEKS R37 R36 K57 ["Warnings"]
  NEWTABLE R37 2 0
  LOADK R38 K54 ["Error"]
  SETTABLEKS R38 R37 K55 ["Errors"]
  LOADK R38 K56 ["Warning"]
  SETTABLEKS R38 R37 K57 ["Warnings"]
  DUPCLOSURE R38 K58 [PROTO_2]
  CAPTURE VAL R32
  SETTABLEKS R38 R20 K59 ["init"]
  MOVE R38 R32
  CALL R38 0 1
  JUMPIFNOT R38 [+3]
  DUPCLOSURE R38 K60 [PROTO_3]
  SETTABLEKS R38 R20 K61 ["willUpdate"]
  DUPCLOSURE R38 K62 [PROTO_4]
  CAPTURE VAL R26
  CAPTURE VAL R37
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R16
  DUPCLOSURE R39 K63 [PROTO_5]
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R16
  DUPCLOSURE R40 K64 [PROTO_6]
  CAPTURE VAL R27
  DUPCLOSURE R41 K65 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R18
  DUPCLOSURE R42 K66 [PROTO_8]
  CAPTURE VAL R1
  DUPCLOSURE R43 K67 [PROTO_10]
  CAPTURE VAL R30
  CAPTURE VAL R1
  CAPTURE VAL R31
  CAPTURE VAL R3
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R21
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R16
  SETTABLEKS R43 R20 K68 ["createHeader"]
  DUPCLOSURE R43 K69 [PROTO_12]
  CAPTURE VAL R39
  CAPTURE VAL R22
  CAPTURE VAL R38
  CAPTURE VAL R23
  CAPTURE VAL R27
  CAPTURE VAL R41
  CAPTURE VAL R19
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R34
  CAPTURE VAL R35
  SETTABLEKS R43 R20 K70 ["buildSection"]
  DUPCLOSURE R43 K71 [PROTO_14]
  CAPTURE VAL R25
  CAPTURE VAL R32
  CAPTURE VAL R26
  CAPTURE VAL R28
  CAPTURE VAL R36
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R27
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R15
  SETTABLEKS R43 R20 K72 ["render"]
  MOVE R43 R8
  DUPTABLE R44 K73 [{"Localization", "Stylizer"}]
  SETTABLEKS R9 R44 K18 ["Localization"]
  SETTABLEKS R10 R44 K19 ["Stylizer"]
  CALL R43 1 1
  MOVE R44 R20
  CALL R43 1 1
  MOVE R20 R43
  MOVE R43 R33
  CALL R43 0 1
  JUMPIFNOT R43 [+8]
  DUPCLOSURE R43 K74 [PROTO_15]
  GETTABLEKS R44 R4 K75 ["connect"]
  MOVE R45 R43
  CALL R44 1 1
  MOVE R45 R20
  CALL R44 1 -1
  RETURN R44 -1
  RETURN R20 1
