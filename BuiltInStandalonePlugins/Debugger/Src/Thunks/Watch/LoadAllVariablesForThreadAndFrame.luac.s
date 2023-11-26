PROTO_0:
  JUMPIFEQKNIL R0 [+19]
  GETUPVAL R2 0
  FASTCALL2 TABLE_INSERT R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K2 [table.insert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["fromInstance"]
  MOVE R4 R0
  GETUPVAL R5 3
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K2 [table.insert]
  CALL R1 -1 0
  GETUPVAL R2 4
  SUBK R1 R2 K4 [1]
  SETUPVAL R1 4
  GETUPVAL R1 4
  JUMPIFNOTEQKN R1 K5 [0] [+20]
  GETUPVAL R1 5
  GETUPVAL R3 6
  GETUPVAL R4 7
  GETUPVAL R5 1
  CALL R3 2 -1
  NAMECALL R1 R1 K6 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 5
  GETUPVAL R3 8
  LOADK R4 K7 [""]
  GETUPVAL R5 0
  GETUPVAL R6 7
  LOADB R7 0
  GETUPVAL R8 9
  CALL R3 5 -1
  NAMECALL R1 R1 K6 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETUPVAL R5 2
  NAMECALL R2 R2 K0 ["UpdateSelectedFrame"]
  CALL R2 3 0
  GETUPVAL R2 3
  GETUPVAL R4 1
  NAMECALL R2 R2 K1 ["SetCurrentThreadId"]
  CALL R2 2 0
  GETUPVAL R4 4
  GETUPVAL R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K2 ["dispatch"]
  CALL R2 -1 0
  NAMECALL R3 R0 K3 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K4 ["Common"]
  GETTABLEKS R4 R2 K5 ["debuggerConnectionIdToDST"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Id"]
  GETTABLE R3 R4 R5
  GETUPVAL R4 0
  GETUPVAL R6 1
  NAMECALL R4 R4 K7 ["GetThreadById"]
  CALL R4 2 1
  NAMECALL R5 R4 K8 ["GetChildren"]
  CALL R5 1 1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K9 ["ctor"]
  MOVE R7 R3
  GETUPVAL R8 1
  GETUPVAL R10 2
  ADDK R9 R10 K10 [1]
  CALL R6 3 1
  GETUPVAL R9 6
  GETUPVAL R10 0
  GETUPVAL R13 2
  ADDK R12 R13 K10 [1]
  GETTABLE R11 R5 R12
  MOVE R12 R6
  CALL R9 3 -1
  NAMECALL R7 R0 K2 ["dispatch"]
  CALL R7 -1 0
  NAMECALL R9 R0 K3 ["getState"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K11 ["Watch"]
  GETTABLEKS R7 R8 K12 ["listOfExpressions"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 0
  LENGTH R10 R7
  GETIMPORT R11 K14 [ipairs]
  MOVE R12 R7
  CALL R11 1 3
  FORGPREP_INEXT R11
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K15 ["evaluateWatchWithCallback"]
  MOVE R17 R15
  MOVE R18 R6
  GETUPVAL R19 0
  MOVE R20 R0
  NEWCLOSURE R21 P0
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE UPVAL U8
  CAPTURE VAL R15
  CAPTURE REF R10
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE VAL R6
  CAPTURE UPVAL U10
  CAPTURE UPVAL U0
  CALL R16 5 0
  FORGLOOP R11 2 [inext] [-20]
  CLOSEUPVALS R10
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["deepCopy"]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Models"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R4 K11 ["StepStateBundle"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R4 K12 ["Watch"]
  GETTABLEKS R7 R8 K13 ["WatchRow"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K14 ["Thunks"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R7 K12 ["Watch"]
  GETTABLEKS R9 R10 K15 ["ExecuteExpressionThunk"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R7 K16 ["Callstack"]
  GETTABLEKS R10 R11 K17 ["LoadStackFrameVariables"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R7 K18 ["Common"]
  GETTABLEKS R11 R12 K19 ["AddChildRowsToVars"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K20 ["Actions"]
  GETTABLEKS R13 R14 K16 ["Callstack"]
  GETTABLEKS R12 R13 K21 ["SetCurrentThread"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K20 ["Actions"]
  GETTABLEKS R14 R15 K12 ["Watch"]
  GETTABLEKS R13 R14 K22 ["ExpressionsEvaluated"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K7 ["Util"]
  GETTABLEKS R14 R15 K23 ["WatchHelperFunctions"]
  CALL R13 1 1
  DUPCLOSURE R14 K24 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R10
  RETURN R14 1
