PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"stateTokenToCallstackVars"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["stateTokenToCallstackVars"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["debuggerStateToken"]
  DUPTABLE R9 K7 [{"threadList", "threadIdToFrameList"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["List"]
  GETTABLEKS R10 R11 K1 ["join"]
  GETTABLEKS R13 R0 K2 ["stateTokenToCallstackVars"]
  GETTABLEKS R14 R1 K4 ["debuggerStateToken"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K5 ["threadList"]
  NEWTABLE R12 0 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["fromData"]
  MOVE R14 R1
  CALL R13 1 -1
  SETLIST R12 R13 4294967295 [1]
  CALL R10 2 1
  SETTABLEKS R10 R9 K5 ["threadList"]
  GETTABLEKS R12 R0 K2 ["stateTokenToCallstackVars"]
  GETTABLEKS R13 R1 K4 ["debuggerStateToken"]
  GETTABLE R11 R12 R13
  GETTABLEKS R10 R11 K6 ["threadIdToFrameList"]
  SETTABLEKS R10 R9 K6 ["threadIdToFrameList"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["stateTokenToCallstackVars"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["stateTokenToCallstackVars"]
  GETTABLEKS R4 R1 K1 ["debuggerStateToken"]
  GETTABLE R2 R3 R4
  JUMPIFNOTEQKNIL R2 [+7]
  LOADB R3 0
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K3 [assert]
  CALL R2 1 0
  RETURN R0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["Dictionary"]
  GETTABLEKS R2 R3 K5 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K6 [{"stateTokenToCallstackVars"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["Dictionary"]
  GETTABLEKS R5 R6 K5 ["join"]
  GETTABLEKS R6 R0 K0 ["stateTokenToCallstackVars"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K1 ["debuggerStateToken"]
  DUPTABLE R9 K9 [{"threadIdToFrameList", "threadList"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["Dictionary"]
  GETTABLEKS R10 R11 K5 ["join"]
  GETTABLEKS R13 R0 K0 ["stateTokenToCallstackVars"]
  GETTABLEKS R14 R1 K1 ["debuggerStateToken"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K7 ["threadIdToFrameList"]
  NEWTABLE R12 1 0
  GETTABLEKS R13 R1 K10 ["threadId"]
  GETTABLEKS R14 R1 K11 ["frameList"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K7 ["threadIdToFrameList"]
  GETTABLEKS R12 R0 K0 ["stateTokenToCallstackVars"]
  GETTABLEKS R13 R1 K1 ["debuggerStateToken"]
  GETTABLE R11 R12 R13
  GETTABLEKS R10 R11 K8 ["threadList"]
  SETTABLEKS R10 R9 K8 ["threadList"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["stateTokenToCallstackVars"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  LOADB R3 1
  GETTABLEKS R5 R0 K0 ["stateTokenToCallstackVars"]
  GETTABLEKS R6 R1 K1 ["debuggerStateToken"]
  GETTABLE R4 R5 R6
  JUMPIFEQKNIL R4 [+15]
  GETTABLEKS R7 R0 K0 ["stateTokenToCallstackVars"]
  GETTABLEKS R8 R1 K1 ["debuggerStateToken"]
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K2 ["threadIdToFrameList"]
  GETTABLEKS R6 R1 K3 ["threadId"]
  GETTABLE R4 R5 R6
  JUMPIFEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K5 [assert]
  CALL R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Dictionary"]
  GETTABLEKS R2 R3 K7 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K8 [{"stateTokenToCallstackVars"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Dictionary"]
  GETTABLEKS R5 R6 K7 ["join"]
  GETTABLEKS R6 R0 K0 ["stateTokenToCallstackVars"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K1 ["debuggerStateToken"]
  DUPTABLE R9 K10 [{"threadList", "threadIdToFrameList"}]
  GETTABLEKS R12 R0 K0 ["stateTokenToCallstackVars"]
  GETTABLEKS R13 R1 K1 ["debuggerStateToken"]
  GETTABLE R11 R12 R13
  JUMPIFNOT R11 [+8]
  GETTABLEKS R12 R0 K0 ["stateTokenToCallstackVars"]
  GETTABLEKS R13 R1 K1 ["debuggerStateToken"]
  GETTABLE R11 R12 R13
  GETTABLEKS R10 R11 K9 ["threadList"]
  JUMPIF R10 [+2]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K9 ["threadList"]
  GETTABLEKS R12 R0 K0 ["stateTokenToCallstackVars"]
  GETTABLEKS R13 R1 K1 ["debuggerStateToken"]
  GETTABLE R11 R12 R13
  JUMPIFNOT R11 [+8]
  GETTABLEKS R12 R0 K0 ["stateTokenToCallstackVars"]
  GETTABLEKS R13 R1 K1 ["debuggerStateToken"]
  GETTABLE R11 R12 R13
  GETTABLEKS R10 R11 K2 ["threadIdToFrameList"]
  JUMPIF R10 [+2]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K2 ["threadIdToFrameList"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["stateTokenToCallstackVars"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  GETTABLEKS R7 R0 K2 ["stateTokenToCallstackVars"]
  GETTABLEKS R8 R1 K3 ["debuggerStateToken"]
  GETTABLE R6 R7 R8
  GETTABLEKS R4 R6 K4 ["threadList"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R8 R7 K5 ["threadId"]
  GETTABLEKS R9 R1 K5 ["threadId"]
  JUMPIFEQ R8 R9 [+8]
  FASTCALL2 TABLE_INSERT R2 R7 [+5]
  MOVE R9 R2
  MOVE R10 R7
  GETIMPORT R8 K8 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-14]
  GETTABLEKS R6 R0 K2 ["stateTokenToCallstackVars"]
  GETTABLEKS R7 R1 K3 ["debuggerStateToken"]
  GETTABLE R5 R6 R7
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K10 [assert]
  CALL R3 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["Dictionary"]
  GETTABLEKS R3 R4 K12 ["join"]
  GETTABLEKS R6 R0 K2 ["stateTokenToCallstackVars"]
  GETTABLEKS R7 R1 K3 ["debuggerStateToken"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K13 ["threadIdToFrameList"]
  NEWTABLE R5 0 0
  CALL R3 2 1
  GETTABLEKS R4 R1 K5 ["threadId"]
  LOADNIL R5
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["Dictionary"]
  GETTABLEKS R4 R5 K12 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K14 [{"stateTokenToCallstackVars"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["Dictionary"]
  GETTABLEKS R7 R8 K12 ["join"]
  GETTABLEKS R8 R0 K2 ["stateTokenToCallstackVars"]
  NEWTABLE R9 1 0
  GETTABLEKS R10 R1 K3 ["debuggerStateToken"]
  DUPTABLE R11 K15 [{"threadIdToFrameList", "threadList"}]
  SETTABLEKS R3 R11 K13 ["threadIdToFrameList"]
  SETTABLEKS R2 R11 K4 ["threadList"]
  SETTABLE R11 R9 R10
  CALL R7 2 1
  SETTABLEKS R7 R6 K2 ["stateTokenToCallstackVars"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"stateTokenToCallstackVars"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["stateTokenToCallstackVars"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["debuggerStateToken"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["None"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["stateTokenToCallstackVars"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"listOfEnabledColumns"}]
  GETTABLEKS R5 R1 K2 ["listOfEnabledColumns"]
  SETTABLEKS R5 R4 K2 ["listOfEnabledColumns"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K10 ["Models"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R3 K11 ["Callstack"]
  GETTABLEKS R6 R7 K12 ["AddCallstack"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R3 K11 ["Callstack"]
  GETTABLEKS R7 R8 K13 ["AddThreadId"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R3 K14 ["Common"]
  GETTABLEKS R8 R9 K15 ["Resumed"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R3 K14 ["Common"]
  GETTABLEKS R9 R10 K16 ["ClearConnectionData"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R3 K14 ["Common"]
  GETTABLEKS R10 R11 K17 ["SimPaused"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R3 K11 ["Callstack"]
  GETTABLEKS R11 R12 K18 ["ColumnFilterChange"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R4 K19 ["ThreadInfo"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R4 K20 ["DebuggerStateToken"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R4 K11 ["Callstack"]
  GETTABLEKS R14 R15 K21 ["CallstackRow"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R16 R4 K11 ["Callstack"]
  GETTABLEKS R15 R16 K22 ["ColumnEnum"]
  CALL R14 1 1
  DUPTABLE R15 K25 [{"stateTokenToCallstackVars", "listOfEnabledColumns"}]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K23 ["stateTokenToCallstackVars"]
  NEWTABLE R16 0 4
  GETTABLEKS R17 R14 K26 ["Frame"]
  GETTABLEKS R18 R14 K27 ["Source"]
  GETTABLEKS R19 R14 K28 ["Function"]
  GETTABLEKS R20 R14 K29 ["Line"]
  SETLIST R16 R17 4 [1]
  SETTABLEKS R16 R15 K24 ["listOfEnabledColumns"]
  GETTABLEKS R16 R1 K30 ["createReducer"]
  MOVE R17 R15
  NEWTABLE R18 8 0
  GETTABLEKS R19 R6 K31 ["name"]
  DUPCLOSURE R20 K32 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R11
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R5 K31 ["name"]
  DUPCLOSURE R20 K33 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K31 ["name"]
  DUPCLOSURE R20 K34 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R7 K31 ["name"]
  DUPCLOSURE R20 K35 [PROTO_3]
  CAPTURE VAL R2
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K31 ["name"]
  DUPCLOSURE R20 K36 [PROTO_4]
  CAPTURE VAL R2
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R10 K31 ["name"]
  DUPCLOSURE R20 K37 [PROTO_5]
  CAPTURE VAL R2
  SETTABLE R20 R18 R19
  CALL R16 2 -1
  RETURN R16 -1
