PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["KeyCode"]
  NAMECALL R1 R1 K1 ["isShift"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["_shiftDown"]
  JUMP [+11]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["KeyCode"]
  NAMECALL R1 R1 K3 ["isControl"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["_ctrlDown"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["_shiftDown"]
  JUMPIFNOT R1 [+15]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["_ctrlDown"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["KeyCode"]
  NAMECALL R1 R1 K5 ["isLetterA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["selectAll"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["KeyCode"]
  NAMECALL R1 R1 K1 ["isShift"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 1
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["_shiftDown"]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["KeyCode"]
  NAMECALL R1 R1 K3 ["isControl"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["_ctrlDown"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["SetCharacterSelection"]
  NEWTABLE R2 0 1
  GETTABLEKS R3 R0 K2 ["key"]
  SETLIST R2 R3 1 [1]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["selection"]
  CALL R1 1 1
  GETTABLEKS R4 R0 K2 ["key"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K6 ["SetCharacterSelection"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Items"]
  NEWTABLE R2 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["state"]
  GETTABLEKS R3 R4 K3 ["expanded"]
  NEWTABLE R4 0 0
  MOVE R5 R1
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R11 R9 K4 ["key"]
  GETTABLE R10 R3 R11
  JUMPIFNOT R10 [+23]
  GETTABLEKS R10 R9 K5 ["children"]
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLEKS R16 R14 K4 ["key"]
  GETTABLE R15 R4 R16
  JUMPIF R15 [+12]
  GETTABLEKS R15 R14 K4 ["key"]
  LOADB R16 1
  SETTABLE R16 R4 R15
  GETTABLEKS R17 R14 K4 ["key"]
  FASTCALL2 TABLE_INSERT R2 R17 [+4]
  MOVE R16 R2
  GETIMPORT R15 K8 [table.insert]
  CALL R15 2 0
  FORGLOOP R10 2 [-17]
  FORGLOOP R5 2 [-28]
  GETTABLEKS R5 R0 K9 ["SetCharacterSelection"]
  MOVE R6 R2
  CALL R5 1 0
  RETURN R0 0

PROTO_5:
  NEWTABLE R6 0 0
  MOVE R7 R1
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  LOADB R12 1
  SETTABLE R12 R6 R11
  FORGLOOP R7 2 [-3]
  GETTABLE R7 R0 R2
  GETTABLE R8 R0 R4
  JUMPIFNOTEQ R2 R4 [+23]
  MOVE R11 R3
  MOVE R9 R5
  LOADN R10 1
  FORNPREP R9
  GETTABLEKS R14 R7 K0 ["children"]
  GETTABLE R13 R14 R11
  GETTABLEKS R12 R13 K1 ["key"]
  GETTABLE R13 R6 R12
  JUMPIF R13 [+9]
  FASTCALL2 TABLE_INSERT R1 R12 [+5]
  MOVE R14 R1
  MOVE R15 R12
  GETIMPORT R13 K4 [table.insert]
  CALL R13 2 0
  LOADB R13 1
  SETTABLE R13 R6 R12
  FORNLOOP R9
  RETURN R0 0
  MOVE R11 R3
  GETTABLEKS R12 R7 K0 ["children"]
  LENGTH R9 R12
  LOADN R10 1
  FORNPREP R9
  GETTABLEKS R14 R7 K0 ["children"]
  GETTABLE R13 R14 R11
  GETTABLEKS R12 R13 K1 ["key"]
  GETTABLE R13 R6 R12
  JUMPIF R13 [+13]
  GETTABLEKS R17 R7 K0 ["children"]
  GETTABLE R16 R17 R11
  GETTABLEKS R15 R16 K1 ["key"]
  FASTCALL2 TABLE_INSERT R1 R15 [+4]
  MOVE R14 R1
  GETIMPORT R13 K4 [table.insert]
  CALL R13 2 0
  LOADB R13 1
  SETTABLE R13 R6 R12
  FORNLOOP R9
  LOADN R11 1
  MOVE R9 R5
  LOADN R10 1
  FORNPREP R9
  GETTABLEKS R14 R8 K0 ["children"]
  GETTABLE R13 R14 R11
  GETTABLEKS R12 R13 K1 ["key"]
  GETTABLE R13 R6 R12
  JUMPIF R13 [+13]
  GETTABLEKS R17 R8 K0 ["children"]
  GETTABLE R16 R17 R11
  GETTABLEKS R15 R16 K1 ["key"]
  FASTCALL2 TABLE_INSERT R1 R15 [+4]
  MOVE R14 R1
  GETIMPORT R13 K4 [table.insert]
  CALL R13 2 0
  LOADB R13 1
  SETTABLE R13 R6 R12
  FORNLOOP R9
  RETURN R0 0

PROTO_6:
  LENGTH R4 R1
  GETTABLE R3 R1 R4
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  MOVE R8 R0
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R12 K0 ["children"]
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  GETTABLEKS R18 R17 K1 ["key"]
  JUMPIFNOTEQ R3 R18 [+3]
  MOVE R4 R11
  MOVE R5 R16
  GETTABLEKS R18 R2 K1 ["key"]
  GETTABLEKS R19 R17 K1 ["key"]
  JUMPIFNOTEQ R18 R19 [+3]
  MOVE R6 R11
  MOVE R7 R16
  FORGLOOP R13 2 [-15]
  FORGLOOP R8 2 [-22]
  RETURN R4 4

PROTO_7:
  GETTABLEKS R1 R0 K0 ["children"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R2 R1 K2 ["Items"]
  GETUPVAL R3 1
  GETTABLEKS R4 R1 K3 ["selection"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["getSelectionRangeData"]
  MOVE R5 R2
  MOVE R6 R3
  MOVE R7 R0
  CALL R4 3 4
  JUMPIFEQKNIL R4 [+3]
  JUMPIFNOTEQKNIL R5 [+7]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["plainSelect"]
  MOVE R9 R0
  CALL R8 1 0
  RETURN R0 0
  JUMPIFNOTLT R4 R6 [+12]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["selectInRange"]
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  MOVE R12 R5
  MOVE R13 R6
  MOVE R14 R7
  CALL R8 6 0
  JUMP [+35]
  JUMPIFNOTLT R6 R4 [+12]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["selectInRange"]
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R6
  MOVE R12 R7
  MOVE R13 R4
  MOVE R14 R5
  CALL R8 6 0
  JUMP [+22]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["selectInRange"]
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R6
  FASTCALL2 MATH_MIN R7 R5 [+5]
  MOVE R13 R7
  MOVE R14 R5
  GETIMPORT R12 K9 [math.min]
  CALL R12 2 1
  MOVE R13 R6
  FASTCALL2 MATH_MAX R7 R5 [+5]
  MOVE R15 R7
  MOVE R16 R5
  GETIMPORT R14 K11 [math.max]
  CALL R14 2 1
  CALL R8 6 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["props"]
  GETTABLEKS R8 R9 K12 ["SetCharacterSelection"]
  MOVE R9 R3
  CALL R8 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["selection"]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R0 K2 ["key"]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADB R8 1
  RETURN R8 1
  FORGLOOP R3 2 [-7]
  LOADB R3 0
  RETURN R3 1

PROTO_9:
  DUPTABLE R1 K1 [{"expanded"}]
  NEWTABLE R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["InProgress"]
  LOADB R4 1
  SETTABLE R4 R2 R3
  SETTABLEKS R2 R1 K0 ["expanded"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onKeyPressed"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onKeyReleased"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["plainSelect"]
  NEWCLOSURE R1 P3
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["controlSelect"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["selectAll"]
  DUPCLOSURE R1 K9 [PROTO_5]
  SETTABLEKS R1 R0 K10 ["selectInRange"]
  DUPCLOSURE R1 K11 [PROTO_6]
  SETTABLEKS R1 R0 K12 ["getSelectionRangeData"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K13 ["shiftSelect"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["isItemSelected"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["convertedCharacters"]
  GETTABLEKS R4 R1 K2 ["characterInfo"]
  JUMPIF R4 [+2]
  LOADNIL R4
  RETURN R4 1
  GETTABLEKS R5 R1 K2 ["characterInfo"]
  GETTABLEKS R4 R5 K3 ["model"]
  JUMPIF R4 [+2]
  LOADNIL R5
  RETURN R5 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["GetNpcHasWarnings"]
  MOVE R6 R4
  CALL R5 1 1
  JUMPIFNOT R5 [+2]
  LOADK R6 K5 ["Warning"]
  RETURN R6 1
  GETTABLEKS R8 R1 K2 ["characterInfo"]
  GETTABLEKS R7 R8 K6 ["key"]
  GETTABLE R6 R3 R7
  JUMPIFNOT R6 [+2]
  LOADK R6 K7 ["Success"]
  RETURN R6 1
  LOADNIL R6
  RETURN R6 1

PROTO_11:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["key"]
  GETTABLE R1 R2 R3
  GETTABLEKS R0 R1 K1 ["previewModel"]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["key"]
  GETTABLE R2 R3 R4
  GETTABLEKS R1 R2 K2 ["convertedModel"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K4 [{"previewModel", "convertedModel"}]
  SETTABLEKS R0 R4 K1 ["previewModel"]
  SETTABLEKS R1 R4 K2 ["convertedModel"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CreateWorldModels"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["key"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["characterInfo"]
  GETTABLEKS R2 R3 K3 ["model"]
  CALL R0 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["state"]
  GETTABLEKS R2 R3 K6 ["expanded"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["key"]
  GETTABLE R1 R2 R3
  ORK R0 R1 K4 [False]
  GETUPVAL R1 2
  DUPTABLE R3 K7 [{"expanded"}]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["Dictionary"]
  GETTABLEKS R4 R5 K9 ["join"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["state"]
  GETTABLEKS R5 R6 K6 ["expanded"]
  NEWTABLE R6 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["key"]
  NOT R8 R0
  SETTABLE R8 R6 R7
  CALL R4 2 1
  SETTABLEKS R4 R3 K6 ["expanded"]
  NAMECALL R1 R1 K10 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K11 ["_shiftDown"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K12 ["shiftSelect"]
  GETUPVAL R2 1
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K13 ["_ctrlDown"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K14 ["controlSelect"]
  GETUPVAL R2 1
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K15 ["plainSelect"]
  GETUPVAL R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R0 K2 [coroutine.wrap]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 1
  CALL R0 0 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_shiftDown"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["shiftSelect"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["_ctrlDown"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["controlSelect"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["plainSelect"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R5 R4 K1 ["Stylizer"]
  GETTABLEKS R6 R4 K2 ["worldModels"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K14 [{"AutomaticSize", "Selected", "Size", "LayoutOrder", "Text", "Expanded", "StatusKey", "RenderContent", "OnExpandedChanged", "OnClick"}]
  GETIMPORT R10 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K4 ["AutomaticSize"]
  GETTABLEKS R10 R0 K18 ["isItemSelected"]
  MOVE R11 R1
  CALL R10 1 1
  SETTABLEKS R10 R9 K5 ["Selected"]
  GETIMPORT R10 K21 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  GETTABLEKS R14 R5 K22 ["RowHeight"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K6 ["Size"]
  SETTABLEKS R3 R9 K7 ["LayoutOrder"]
  GETTABLEKS R10 R1 K23 ["text"]
  SETTABLEKS R10 R9 K8 ["Text"]
  GETTABLEKS R13 R0 K24 ["state"]
  GETTABLEKS R12 R13 K25 ["expanded"]
  GETTABLEKS R13 R1 K26 ["key"]
  GETTABLE R11 R12 R13
  JUMPIFNOT R11 [+6]
  GETTABLEKS R12 R1 K26 ["key"]
  GETTABLE R11 R6 R12
  JUMPIFNOT R11 [+2]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  SETTABLEKS R10 R9 K9 ["Expanded"]
  MOVE R12 R1
  NAMECALL R10 R0 K27 ["getCharacterStatusKey"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K10 ["StatusKey"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R10 R9 K11 ["RenderContent"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R10 R9 K12 ["OnExpandedChanged"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K13 ["OnClick"]
  CALL R7 2 1
  GETTABLEKS R8 R1 K26 ["key"]
  SETTABLE R7 R2 R8
  RETURN R0 0

PROTO_16:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R2 R3 K2 ["expanded"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["key"]
  GETTABLE R1 R2 R3
  ORK R0 R1 K0 [False]
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"expanded"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["Dictionary"]
  GETTABLEKS R4 R5 K6 ["join"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["state"]
  GETTABLEKS R5 R6 K2 ["expanded"]
  NEWTABLE R6 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["key"]
  NOT R8 R0
  SETTABLE R8 R6 R7
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["expanded"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R5 R4 K1 ["Stylizer"]
  DUPTABLE R6 K3 [{"Layout"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["createElement"]
  LOADK R8 K5 ["UIListLayout"]
  DUPTABLE R9 K8 [{"SortOrder", "Padding"}]
  GETIMPORT R10 K11 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K6 ["SortOrder"]
  GETIMPORT R10 K14 [UDim.new]
  LOADN R11 0
  GETTABLEKS R12 R5 K15 ["Spacing"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K7 ["Padding"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K2 ["Layout"]
  LOADN R7 0
  GETTABLEKS R8 R1 K16 ["children"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R12 K16 ["children"]
  JUMPIFNOT R13 [+7]
  MOVE R15 R12
  MOVE R16 R6
  MOVE R17 R7
  NAMECALL R13 R0 K17 ["renderNestedItem"]
  CALL R13 4 0
  JUMP [+6]
  MOVE R15 R12
  MOVE R16 R6
  MOVE R17 R7
  NAMECALL R13 R0 K18 ["renderItem"]
  CALL R13 4 0
  ADDK R7 R7 K19 [1]
  FORGLOOP R8 2 [-18]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K28 [{"AutomaticSize", "Style", "ContentPadding", "ContentSpacing", "Size", "LayoutOrder", "Text", "Expanded", "OnExpandedChanged"}]
  GETIMPORT R11 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K20 ["AutomaticSize"]
  LOADK R11 K31 ["Section"]
  SETTABLEKS R11 R10 K21 ["Style"]
  LOADN R11 0
  SETTABLEKS R11 R10 K22 ["ContentPadding"]
  LOADN R11 0
  SETTABLEKS R11 R10 K23 ["ContentSpacing"]
  GETIMPORT R11 K33 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETTABLEKS R15 R5 K34 ["RowHeight"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K24 ["Size"]
  SETTABLEKS R3 R10 K10 ["LayoutOrder"]
  GETTABLEKS R11 R1 K35 ["text"]
  SETTABLEKS R11 R10 K25 ["Text"]
  GETTABLEKS R14 R0 K37 ["state"]
  GETTABLEKS R13 R14 K38 ["expanded"]
  GETTABLEKS R14 R1 K39 ["key"]
  GETTABLE R12 R13 R14
  ORK R11 R12 K36 [False]
  SETTABLEKS R11 R10 K26 ["Expanded"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  SETTABLEKS R11 R10 K27 ["OnExpandedChanged"]
  MOVE R11 R6
  CALL R8 3 1
  GETTABLEKS R9 R1 K39 ["key"]
  SETTABLE R8 R2 R9
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Size"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["Items"]
  NEWTABLE R5 0 0
  LOADN R6 0
  MOVE R7 R4
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R11 K4 ["children"]
  JUMPIFNOT R12 [+7]
  MOVE R14 R11
  MOVE R15 R5
  MOVE R16 R6
  NAMECALL R12 R0 K5 ["renderNestedItem"]
  CALL R12 4 0
  JUMP [+6]
  MOVE R14 R11
  MOVE R15 R5
  MOVE R16 R6
  NAMECALL R12 R0 K6 ["renderItem"]
  CALL R12 4 0
  ADDK R6 R6 K7 [1]
  FORGLOOP R7 2 [-18]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["createFragment"]
  DUPTABLE R8 K11 [{"ScrollingFrame", "KeyboardListener"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K15 [{"Layout", "AutomaticCanvasSize", "LayoutOrder", "Size"}]
  GETIMPORT R12 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K13 ["Layout"]
  GETIMPORT R12 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K14 ["AutomaticCanvasSize"]
  SETTABLEKS R3 R11 K2 ["LayoutOrder"]
  SETTABLEKS R2 R11 K1 ["Size"]
  MOVE R12 R5
  CALL R9 3 1
  SETTABLEKS R9 R8 K9 ["ScrollingFrame"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K25 [{"OnKeyPressed", "OnKeyReleased"}]
  GETTABLEKS R12 R0 K26 ["onKeyPressed"]
  SETTABLEKS R12 R11 K23 ["OnKeyPressed"]
  GETTABLEKS R12 R0 K27 ["onKeyReleased"]
  SETTABLEKS R12 R11 K24 ["OnKeyReleased"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K10 ["KeyboardListener"]
  CALL R7 1 -1
  RETURN R7 -1

PROTO_19:
  DUPTABLE R2 K3 [{"selection", "convertedCharacters", "worldModels"}]
  GETTABLEKS R4 R0 K4 ["CharacterConversion"]
  GETTABLEKS R3 R4 K0 ["selection"]
  SETTABLEKS R3 R2 K0 ["selection"]
  GETTABLEKS R4 R0 K4 ["CharacterConversion"]
  GETTABLEKS R3 R4 K1 ["convertedCharacters"]
  SETTABLEKS R3 R2 K1 ["convertedCharacters"]
  GETTABLEKS R4 R0 K4 ["CharacterConversion"]
  GETTABLEKS R3 R4 K2 ["worldModels"]
  SETTABLEKS R3 R2 K2 ["worldModels"]
  RETURN R2 1

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_22:
  DUPTABLE R1 K2 [{"SetCharacterSelection", "CreateWorldModels"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetCharacterSelection"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["CreateWorldModels"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["ItemState"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K13 ["Input"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K14 ["Modules"]
  GETTABLEKS R8 R9 K15 ["NpcManager"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K16 ["Actions"]
  GETTABLEKS R9 R10 K17 ["SetCharacterSelection"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K18 ["Components"]
  GETTABLEKS R11 R12 K19 ["CharacterConversion"]
  GETTABLEKS R10 R11 K20 ["SplitView"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K19 ["CharacterConversion"]
  GETTABLEKS R11 R12 K21 ["ExpandableCharacterListItem"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K22 ["Thunks"]
  GETTABLEKS R12 R13 K23 ["CreateWorldModels"]
  CALL R11 1 1
  GETTABLEKS R12 R2 K24 ["ContextServices"]
  GETTABLEKS R13 R2 K25 ["UI"]
  GETTABLEKS R14 R13 K26 ["ExpandablePane"]
  GETTABLEKS R15 R13 K27 ["ScrollingFrame"]
  GETTABLEKS R16 R13 K28 ["KeyboardListener"]
  GETTABLEKS R17 R2 K11 ["Util"]
  GETTABLEKS R18 R17 K29 ["deepCopy"]
  GETTABLEKS R19 R3 K30 ["PureComponent"]
  LOADK R21 K31 ["CharacterConversionList"]
  NAMECALL R19 R19 K32 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K33 [PROTO_9]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R18
  SETTABLEKS R20 R19 K34 ["init"]
  DUPCLOSURE R20 K35 [PROTO_10]
  CAPTURE VAL R7
  SETTABLEKS R20 R19 K36 ["getCharacterStatusKey"]
  DUPCLOSURE R20 K37 [PROTO_15]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K38 ["renderItem"]
  DUPCLOSURE R20 K39 [PROTO_17]
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K40 ["renderNestedItem"]
  DUPCLOSURE R20 K41 [PROTO_18]
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R20 R19 K42 ["render"]
  GETTABLEKS R20 R12 K43 ["withContext"]
  DUPTABLE R21 K45 [{"Stylizer"}]
  GETTABLEKS R22 R12 K44 ["Stylizer"]
  SETTABLEKS R22 R21 K44 ["Stylizer"]
  CALL R20 1 1
  MOVE R21 R19
  CALL R20 1 1
  MOVE R19 R20
  DUPCLOSURE R20 K46 [PROTO_19]
  DUPCLOSURE R21 K47 [PROTO_22]
  CAPTURE VAL R8
  CAPTURE VAL R11
  GETTABLEKS R22 R4 K48 ["connect"]
  MOVE R23 R20
  MOVE R24 R21
  CALL R22 2 1
  MOVE R23 R19
  CALL R22 1 -1
  RETURN R22 -1
