PROTO_0:
  LOADNIL R1
  LOADN R2 0
  GETIMPORT R3 K2 [string.split]
  MOVE R4 R0
  LOADK R5 K3 [":"]
  CALL R3 2 1
  GETIMPORT R4 K2 [string.split]
  GETTABLEN R5 R3 2
  LOADK R6 K4 [" "]
  CALL R4 2 1
  MOVE R2 R4
  GETTABLEN R5 R2 1
  FASTCALL1 TONUMBER R5 [+2]
  GETIMPORT R4 K6 [tonumber]
  CALL R4 1 1
  MOVE R2 R4
  GETIMPORT R4 K2 [string.split]
  GETTABLEN R5 R3 1
  LOADK R6 K7 ["."]
  CALL R4 2 1
  GETIMPORT R5 K9 [string.lower]
  GETTABLEN R6 R4 1
  CALL R5 1 1
  LOADK R8 K10 ["builtin"]
  NAMECALL R6 R5 K11 ["find"]
  CALL R6 2 1
  JUMPIFNOT R6 [+37]
  GETTABLEN R7 R4 1
  LOADK R8 K12 [".rbxm"]
  CONCAT R6 R7 R8
  GETIMPORT R7 K14 [game]
  LOADK R9 K15 ["PluginDebugService"]
  NAMECALL R7 R7 K16 ["GetService"]
  CALL R7 2 1
  MOVE R9 R6
  NAMECALL R7 R7 K17 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIF R7 [+11]
  GETIMPORT R7 K19 [warn]
  LOADK R8 K20 ["Traceback unavailable: %s is not in PluginDebugService"]
  MOVE R10 R6
  NAMECALL R8 R8 K21 ["format"]
  CALL R8 2 -1
  CALL R7 -1 0
  LOADNIL R7
  LOADNIL R8
  RETURN R7 2
  MOVE R8 R4
  LOADN R9 1
  LOADK R10 K15 ["PluginDebugService"]
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K24 [table.insert]
  CALL R7 3 0
  GETIMPORT R7 K9 [string.lower]
  GETTABLEN R8 R4 1
  CALL R7 1 1
  MOVE R5 R7
  LOADK R8 K25 ["plugindebugservice"]
  NAMECALL R6 R5 K11 ["find"]
  CALL R6 2 1
  JUMPIFNOT R6 [+22]
  GETTABLEN R6 R4 3
  JUMPIFNOTEQKS R6 K26 ["rbxm"] [+10]
  GETTABLEN R7 R4 2
  LOADK R8 K12 [".rbxm"]
  CONCAT R6 R7 R8
  SETTABLEN R6 R4 2
  GETIMPORT R6 K28 [table.remove]
  MOVE R7 R4
  LOADN R8 3
  CALL R6 2 0
  GETUPVAL R6 0
  JUMPIF R6 [+8]
  GETIMPORT R6 K19 [warn]
  LOADK R7 K29 ["Traceback unavailable: %s is disabled."]
  MOVE R9 R5
  NAMECALL R7 R7 K21 ["format"]
  CALL R7 2 -1
  CALL R6 -1 0
  LOADK R8 K30 ["coregui"]
  NAMECALL R6 R5 K11 ["find"]
  CALL R6 2 1
  JUMPIFNOT R6 [+10]
  GETUPVAL R6 1
  JUMPIF R6 [+8]
  GETIMPORT R6 K19 [warn]
  LOADK R7 K29 ["Traceback unavailable: %s is disabled."]
  MOVE R9 R5
  NAMECALL R7 R7 K21 ["format"]
  CALL R7 2 -1
  CALL R6 -1 0
  GETIMPORT R6 K14 [game]
  GETTABLEN R8 R4 1
  NAMECALL R6 R6 K16 ["GetService"]
  CALL R6 2 1
  MOVE R1 R6
  JUMPIF R1 [+11]
  GETIMPORT R6 K19 [warn]
  LOADK R7 K31 ["Unable to find traceback. Does the path %s exist in the explorer?"]
  MOVE R9 R0
  NAMECALL R7 R7 K21 ["format"]
  CALL R7 2 -1
  CALL R6 -1 0
  LOADNIL R6
  LOADNIL R7
  RETURN R6 2
  LOADN R8 2
  LENGTH R6 R4
  LOADN R7 1
  FORNPREP R6
  GETTABLE R11 R4 R8
  LOADB R12 1
  NAMECALL R9 R1 K17 ["FindFirstChild"]
  CALL R9 3 1
  MOVE R1 R9
  FORNLOOP R6
  RETURN R1 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["DebugFlags"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["RunningUnderCLI"]
  LOADNIL R2
  LOADNIL R3
  JUMPIFNOT R1 [+3]
  LOADB R2 1
  LOADB R3 1
  JUMP [+14]
  GETIMPORT R5 K9 [settings]
  CALL R5 0 1
  GETTABLEKS R4 R5 K10 ["Studio"]
  GETTABLEKS R2 R4 K7 ["Show Core GUI in Explorer while Playing"]
  GETIMPORT R5 K9 [settings]
  CALL R5 0 1
  GETTABLEKS R4 R5 K10 ["Studio"]
  GETTABLEKS R3 R4 K11 ["PluginDebuggingEnabled"]
  NEWCLOSURE R4 P0
  CAPTURE REF R3
  CAPTURE REF R2
  CLOSEUPVALS R2
  RETURN R4 1
