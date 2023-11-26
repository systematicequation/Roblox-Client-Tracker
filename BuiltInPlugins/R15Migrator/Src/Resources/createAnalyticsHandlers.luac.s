PROTO_0:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  DUPTABLE R3 K5 [{"studioSid", "clientId", "placeId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K6 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K7 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["clientId"]
  GETIMPORT R5 K9 [game]
  GETTABLEKS R4 R5 K10 ["PlaceId"]
  SETTABLEKS R4 R3 K4 ["placeId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+18]
  GETIMPORT R3 K13 [print]
  LOADK R4 K14 ["%s SendEvent eventName=%s args=%s"]
  LOADK R6 K15 ["R15Migrator"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K17 [tostring]
  CALL R7 1 1
  GETUPVAL R8 3
  MOVE R10 R2
  NAMECALL R8 R8 K18 ["JSONEncode"]
  CALL R8 2 -1
  NAMECALL R4 R4 K19 ["format"]
  CALL R4 -1 -1
  CALL R3 -1 0
  GETUPVAL R3 1
  LOADK R5 K20 ["studio"]
  LOADK R6 K15 ["R15Migrator"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K21 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  ORK R1 R1 K0 [1]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["LogAnalytics"]
  CALL R2 0 1
  JUMPIFNOT R2 [+18]
  GETIMPORT R2 K3 [print]
  LOADK R3 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R5 K5 ["R15Migrator"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K7 [tostring]
  CALL R6 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K7 [tostring]
  CALL R7 1 1
  NAMECALL R3 R3 K8 ["format"]
  CALL R3 4 -1
  CALL R2 -1 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K9 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  MOVE R3 R1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  MOVE R1 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+23]
  GETIMPORT R3 K2 [print]
  LOADK R4 K3 ["%s SendEvent eventName=%s args=%s throttlingPercent=%s"]
  LOADK R6 K4 ["R15Migrator"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K6 [tostring]
  CALL R7 1 1
  GETUPVAL R8 1
  MOVE R10 R1
  NAMECALL R8 R8 K7 ["JSONEncode"]
  CALL R8 2 1
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R10 R2
  GETIMPORT R9 K6 [tostring]
  CALL R9 1 1
  NAMECALL R4 R4 K8 ["format"]
  CALL R4 5 -1
  CALL R3 -1 0
  GETUPVAL R3 2
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K9 ["ReportInfluxSeries"]
  CALL R3 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  LOADK R2 K0 ["CharactersLoaded"]
  DUPTABLE R3 K3 [{"numCharacters", "numWarnings"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["Dictionary"]
  GETTABLEKS R5 R6 K5 ["keys"]
  MOVE R6 R0
  CALL R5 1 1
  LENGTH R4 R5
  SETTABLEKS R4 R3 K1 ["numCharacters"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["GetNumCharactersHaveWarnings"]
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["numWarnings"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Dictionary"]
  GETTABLEKS R3 R4 K1 ["keys"]
  MOVE R4 R0
  CALL R3 1 1
  LENGTH R2 R3
  LOADN R3 0
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLE R9 R0 R8
  JUMPIFNOT R9 [+1]
  ADDK R3 R3 K2 [1]
  FORGLOOP R4 2 [-4]
  GETUPVAL R4 1
  LOADK R5 K3 ["CharactersConverted"]
  DUPTABLE R6 K7 [{"numConverted", "percentConverted", "numWarnings"}]
  SETTABLEKS R3 R6 K4 ["numConverted"]
  JUMPIFNOTEQKN R2 K8 [0] [+3]
  LOADN R7 0
  JUMP [+8]
  DIV R9 R3 R2
  MULK R8 R9 K9 [100]
  LOADN R9 0
  LOADN R10 100
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K12 [math.clamp]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["percentConverted"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["GetNumCharactersHaveWarnings"]
  MOVE R8 R0
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["numWarnings"]
  CALL R4 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Dictionary"]
  GETTABLEKS R3 R4 K1 ["keys"]
  MOVE R4 R0
  CALL R3 1 1
  LENGTH R2 R3
  LOADN R3 0
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLE R9 R0 R8
  JUMPIFNOT R9 [+1]
  ADDK R3 R3 K2 [1]
  FORGLOOP R4 2 [-4]
  GETUPVAL R4 1
  LOADK R5 K3 ["CharactersReverted"]
  DUPTABLE R6 K7 [{"numReverted", "percentReverted", "numWarnings"}]
  SETTABLEKS R3 R6 K4 ["numReverted"]
  JUMPIFNOTEQKN R2 K8 [0] [+3]
  LOADN R7 0
  JUMP [+8]
  DIV R9 R3 R2
  MULK R8 R9 K9 [100]
  LOADN R9 0
  LOADN R10 100
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R7 K12 [math.clamp]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["percentReverted"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["GetNumCharactersHaveWarnings"]
  MOVE R8 R0
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["numWarnings"]
  CALL R4 2 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K2 [{"numScripts", "averageLines"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["numScripts"]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["averageLines"]
  LOADN R2 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R1 K0 ["numScripts"]
  ADDK R8 R8 K3 [1]
  SETTABLEKS R8 R1 K0 ["numScripts"]
  NAMECALL R8 R7 K4 ["GetSize"]
  CALL R8 1 1
  ADD R2 R2 R8
  FORGLOOP R3 2 [-10]
  GETTABLEKS R4 R1 K0 ["numScripts"]
  JUMPIFNOTEQKN R4 K5 [0] [+3]
  LOADN R3 0
  JUMP [+3]
  GETTABLEKS R4 R1 K0 ["numScripts"]
  DIV R3 R2 R4
  SETTABLEKS R3 R1 K1 ["averageLines"]
  GETUPVAL R3 0
  LOADK R4 K6 ["InitialScriptAnalysisScan"]
  MOVE R5 R1
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R1 K0 ["ScriptSuggestionApplied"]
  NEWTABLE R2 0 0
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["GetStatusCounts"]
  CALL R1 2 1
  GETUPVAL R2 1
  LOADK R3 K1 ["ScriptSelectionReverted"]
  DUPTABLE R4 K3 [{"numScripts"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["ScriptStatus"]
  GETTABLEKS R6 R7 K5 ["Reverted"]
  GETTABLE R5 R1 R6
  SETTABLEKS R5 R4 K2 ["numScripts"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["GetStatusCounts"]
  CALL R1 2 1
  GETUPVAL R2 1
  LOADK R3 K1 ["ScriptSelectionUndoRevert"]
  DUPTABLE R4 K3 [{"numScripts"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["ScriptStatus"]
  GETTABLEKS R6 R7 K5 ["Reverted"]
  GETTABLE R5 R1 R6
  SETTABLEKS R5 R4 K2 ["numScripts"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["GetStatusCounts"]
  CALL R2 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["ScriptStatus"]
  GETTABLEKS R5 R6 K2 ["AutoConverted"]
  GETTABLE R4 R2 R5
  JUMPIFNOT R4 [+7]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["ScriptStatus"]
  GETTABLEKS R4 R5 K2 ["AutoConverted"]
  GETTABLE R3 R2 R4
  JUMP [+1]
  LOADN R3 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["ScriptStatus"]
  GETTABLEKS R6 R7 K3 ["Complete"]
  GETTABLE R5 R2 R6
  JUMPIFNOT R5 [+7]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["ScriptStatus"]
  GETTABLEKS R5 R6 K3 ["Complete"]
  GETTABLE R4 R2 R5
  JUMP [+1]
  LOADN R4 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["ScriptStatus"]
  GETTABLEKS R7 R8 K4 ["Error"]
  GETTABLE R6 R2 R7
  JUMPIFNOT R6 [+7]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["ScriptStatus"]
  GETTABLEKS R6 R7 K4 ["Error"]
  GETTABLE R5 R2 R6
  JUMP [+1]
  LOADN R5 0
  DUPTABLE R6 K9 [{"autoConvertCount", "replacedCount", "failedCount", "numRules"}]
  SETTABLEKS R3 R6 K5 ["autoConvertCount"]
  LOADN R8 0
  SUB R9 R4 R3
  FASTCALL2 MATH_MIN R8 R9 [+3]
  GETIMPORT R7 K12 [math.min]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["replacedCount"]
  SETTABLEKS R5 R6 K7 ["failedCount"]
  LOADN R7 0
  SETTABLEKS R7 R6 K8 ["numRules"]
  MOVE R7 R1
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R11 K13 ["Enabled"]
  JUMPIFNOT R12 [+9]
  GETTABLEKS R12 R11 K14 ["ToText"]
  JUMPIFEQKS R12 K15 [""] [+6]
  GETTABLEKS R12 R6 K8 ["numRules"]
  ADDK R12 R12 K16 [1]
  SETTABLEKS R12 R6 K8 ["numRules"]
  FORGLOOP R7 2 [-13]
  GETUPVAL R7 2
  LOADK R8 K17 ["ScriptSelectionConvert"]
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADK R1 K0 ["PluginClosed"]
  DUPTABLE R2 K2 [{"timeSpent"}]
  GETIMPORT R4 K5 [os.time]
  CALL R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["StartTime"]
  SUB R3 R4 R5
  SETTABLEKS R3 R2 K1 ["timeSpent"]
  CALL R0 2 0
  RETURN R0 0

PROTO_12:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  DUPTABLE R4 K9 [{"onCharactersLoaded", "onCharactersConverted", "onCharactersReverted", "onInitialScriptAnalysisScan", "onScriptSuggestionApplied", "onScriptSelectionReverted", "onScriptSelectionRevertUndo", "onScriptConvertSelection", "onPluginClosed"}]
  NEWCLOSURE R5 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  SETTABLEKS R5 R4 K0 ["onCharactersLoaded"]
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R5 R4 K1 ["onCharactersConverted"]
  NEWCLOSURE R5 P5
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R5 R4 K2 ["onCharactersReverted"]
  NEWCLOSURE R5 P6
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K3 ["onInitialScriptAnalysisScan"]
  NEWCLOSURE R5 P7
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K4 ["onScriptSuggestionApplied"]
  NEWCLOSURE R5 P8
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  SETTABLEKS R5 R4 K5 ["onScriptSelectionReverted"]
  NEWCLOSURE R5 P9
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  SETTABLEKS R5 R4 K6 ["onScriptSelectionRevertUndo"]
  NEWCLOSURE R5 P10
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K7 ["onScriptConvertSelection"]
  NEWCLOSURE R5 P11
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  SETTABLEKS R5 R4 K8 ["onPluginClosed"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["AnalyticsGlobals"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K10 ["DebugFlags"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K11 ["ScriptStatusUtil"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K8 ["Util"]
  GETTABLEKS R7 R8 K12 ["ScriptAnalysis"]
  GETTABLEKS R6 R7 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K14 ["Modules"]
  GETTABLEKS R7 R8 K15 ["NpcManager"]
  CALL R6 1 1
  GETIMPORT R7 K17 [game]
  LOADK R9 K18 ["HttpService"]
  NAMECALL R7 R7 K19 ["GetService"]
  CALL R7 2 1
  DUPCLOSURE R8 K20 [PROTO_12]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R8 1
