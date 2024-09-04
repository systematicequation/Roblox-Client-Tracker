PROTO_0:
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R6 0
  JUMPIFNOT R6 [+5]
  GETUPVAL R6 1
  MOVE R7 R5
  CALL R6 1 1
  JUMPIF R6 [+1]
  JUMP [+127]
  GETUPVAL R6 2
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 3
  MOVE R7 R5
  CALL R6 1 1
  JUMPIF R6 [+121]
  GETTABLEKS R6 R5 K0 ["Action"]
  JUMPIFNOT R6 [+29]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K1 ["isValid"]
  GETTABLEKS R7 R5 K0 ["Action"]
  CALL R6 1 1
  JUMPIFNOT R6 [+8]
  GETUPVAL R7 5
  GETTABLEKS R8 R5 K0 ["Action"]
  FASTCALL2 TABLE_INSERT R7 R8 [+2]
  GETUPVAL R6 6
  CALL R6 2 0
  JUMP [+14]
  GETIMPORT R6 K3 [warn]
  LOADK R8 K4 ["Uri %* is not valid!"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K5 ["toString"]
  GETTABLEKS R11 R5 K0 ["Action"]
  CALL R10 1 1
  NAMECALL R8 R8 K6 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  CALL R6 1 0
  GETTABLEKS R6 R5 K7 ["ActionGroup"]
  JUMPIFNOT R6 [+33]
  GETTABLEKS R6 R5 K7 ["ActionGroup"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K1 ["isValid"]
  MOVE R12 R10
  CALL R11 1 1
  JUMPIFNOT R11 [+7]
  GETUPVAL R12 5
  FASTCALL2 TABLE_INSERT R12 R10 [+3]
  MOVE R13 R10
  GETUPVAL R11 6
  CALL R11 2 0
  JUMP [+13]
  GETIMPORT R11 K3 [warn]
  LOADK R13 K4 ["Uri %* is not valid!"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K5 ["toString"]
  MOVE R16 R10
  CALL R15 1 1
  NAMECALL R13 R13 K6 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  CALL R11 1 0
  FORGLOOP R6 2 [-27]
  GETTABLEKS R6 R5 K8 ["Setting"]
  JUMPIFNOT R6 [+43]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K1 ["isValid"]
  GETTABLEKS R7 R5 K8 ["Setting"]
  CALL R6 1 1
  JUMPIFNOT R6 [+8]
  GETUPVAL R7 7
  GETTABLEKS R8 R5 K8 ["Setting"]
  FASTCALL2 TABLE_INSERT R7 R8 [+2]
  GETUPVAL R6 6
  CALL R6 2 0
  JUMP [+14]
  GETIMPORT R6 K3 [warn]
  LOADK R8 K4 ["Uri %* is not valid!"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K5 ["toString"]
  GETTABLEKS R11 R5 K8 ["Setting"]
  CALL R10 1 1
  NAMECALL R8 R8 K6 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  CALL R6 1 0
  GETUPVAL R7 8
  GETTABLEKS R6 R7 K9 ["GetModel"]
  GETTABLEKS R7 R5 K8 ["Setting"]
  CALL R6 1 1
  JUMPIFNOT R6 [+7]
  GETTABLEKS R7 R6 K10 ["Values"]
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 9
  GETTABLEKS R8 R6 K10 ["Values"]
  CALL R7 1 0
  GETTABLEKS R6 R5 K11 ["Children"]
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 9
  GETTABLEKS R7 R5 K11 ["Children"]
  CALL R6 1 0
  FORGLOOP R1 2 [-135]
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K3 [{"Controls", "Actions", "Settings"}]
  GETTABLEKS R2 R0 K0 ["Controls"]
  SETTABLEKS R2 R1 K0 ["Controls"]
  GETTABLEKS R2 R0 K1 ["Actions"]
  SETTABLEKS R2 R1 K1 ["Actions"]
  GETTABLEKS R2 R0 K2 ["Settings"]
  SETTABLEKS R2 R1 K2 ["Settings"]
  GETTABLEKS R2 R1 K2 ["Settings"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["toString"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Uri"]
  CALL R3 1 1
  GETUPVAL R4 1
  SETTABLE R4 R2 R3
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["MultiBindAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 2
  JUMPIFNOT R0 [+15]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 2
  GETUPVAL R11 3
  NAMECALL R9 R6 K2 ["Connect"]
  CALL R9 2 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R7 4
  CALL R7 -1 0
  FORGLOOP R2 2 [-9]
  RETURN R0 0
  GETIMPORT R2 K4 [warn]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["BindAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_6:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 2
  JUMPIFNOT R0 [+53]
  GETUPVAL R2 2
  JUMPIFNOT R2 [+33]
  GETUPVAL R2 3
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K2 ["SettingsBindings"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K3 ["toString"]
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLE R2 R3 R4
  JUMPIF R2 [+10]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["SettingsBindings"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K3 ["toString"]
  GETUPVAL R4 1
  CALL R3 1 1
  SETTABLE R1 R2 R3
  JUMP [+19]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["SettingsBindings"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K3 ["toString"]
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLE R1 R2 R3
  JUMP [+9]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["SettingsBindings"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K3 ["toString"]
  GETUPVAL R4 1
  CALL R3 1 1
  SETTABLE R1 R2 R3
  GETUPVAL R3 6
  GETUPVAL R6 7
  NAMECALL R4 R1 K4 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R2 8
  CALL R2 -1 0
  RETURN R0 0
  GETIMPORT R2 K6 [warn]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K3 [{"Controls", "Actions", "Settings"}]
  GETTABLEKS R2 R0 K0 ["Controls"]
  SETTABLEKS R2 R1 K0 ["Controls"]
  GETTABLEKS R2 R0 K1 ["Actions"]
  SETTABLEKS R2 R1 K1 ["Actions"]
  GETTABLEKS R2 R0 K2 ["Settings"]
  SETTABLEKS R2 R1 K2 ["Settings"]
  GETTABLEKS R2 R1 K1 ["Actions"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["toString"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Uri"]
  CALL R3 1 1
  GETUPVAL R4 1
  SETTABLE R4 R2 R3
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["GetModel"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R1 K1 ["NoBinding"]
  JUMPIFNOT R2 [+2]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["MultiBindToChangedAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_11:
  GETUPVAL R0 0
  GETUPVAL R1 1
  DUPCLOSURE R2 K0 [PROTO_9]
  CAPTURE UPVAL U2
  CALL R0 2 1
  GETIMPORT R1 K2 [pcall]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIFNOT R1 [+15]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R9 4
  GETUPVAL R12 5
  NAMECALL R10 R7 K3 ["Connect"]
  CALL R10 2 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R8 6
  CALL R8 -1 0
  FORGLOOP R3 2 [-9]
  RETURN R0 0
  GETIMPORT R3 K5 [warn]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["BindToChangedAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_13:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 2
  JUMPIFNOT R0 [+60]
  GETUPVAL R2 2
  JUMPIFNOT R2 [+33]
  GETUPVAL R2 3
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K2 ["ActionBindings"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K3 ["toString"]
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLE R2 R3 R4
  JUMPIF R2 [+10]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["ActionBindings"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K3 ["toString"]
  GETUPVAL R4 1
  CALL R3 1 1
  SETTABLE R1 R2 R3
  JUMP [+19]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["ActionBindings"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K3 ["toString"]
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLE R1 R2 R3
  JUMP [+9]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["ActionBindings"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K3 ["toString"]
  GETUPVAL R4 1
  CALL R3 1 1
  SETTABLE R1 R2 R3
  GETUPVAL R3 6
  DUPTABLE R4 K6 [{"Uri", "binding"}]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K4 ["Uri"]
  GETUPVAL R7 7
  NAMECALL R5 R1 K7 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["binding"]
  FASTCALL2 TABLE_INSERT R3 R4 [+2]
  GETUPVAL R2 8
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K9 [warn]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K3 [{"Controls", "Actions", "Settings"}]
  GETTABLEKS R2 R0 K0 ["Controls"]
  SETTABLEKS R2 R1 K0 ["Controls"]
  GETTABLEKS R2 R0 K1 ["Actions"]
  SETTABLEKS R2 R1 K1 ["Actions"]
  GETTABLEKS R2 R0 K2 ["Settings"]
  SETTABLEKS R2 R1 K2 ["Settings"]
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R1 K1 ["Actions"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["toString"]
  GETTABLEKS R9 R6 K5 ["Uri"]
  CALL R8 1 1
  SETTABLE R6 R7 R8
  FORGLOOP R2 2 [-10]
  GETUPVAL R2 2
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R1 K2 ["Settings"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["toString"]
  GETTABLEKS R9 R6 K5 ["Uri"]
  CALL R8 1 1
  SETTABLE R6 R7 R8
  FORGLOOP R2 2 [-10]
  RETURN R1 1

PROTO_15:
  LOADB R0 1
  JUMPIFNOT R0 [+18]
  GETIMPORT R1 K1 [wait]
  CALL R1 0 0
  LOADB R0 0
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETIMPORT R6 K4 [coroutine.status]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFEQKS R6 K5 ["dead"] [+2]
  LOADB R0 1
  FORGLOOP R1 2 [-8]
  JUMPBACK [-19]
  GETUPVAL R1 1
  GETUPVAL R3 2
  NAMECALL R1 R1 K6 ["GetAsync"]
  CALL R1 2 1
  GETUPVAL R2 3
  GETUPVAL R4 4
  NAMECALL R2 R2 K6 ["GetAsync"]
  CALL R2 2 1
  GETUPVAL R3 5
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  CALL R3 1 0
  RETURN R0 0

PROTO_16:
  LOADB R0 1
  SETUPVAL R0 0
  GETUPVAL R0 1
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  NAMECALL R5 R4 K0 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [-4]
  GETUPVAL R0 2
  JUMPIFNOT R0 [+10]
  GETUPVAL R0 3
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  NAMECALL R5 R4 K0 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [-4]
  RETURN R0 0
  GETUPVAL R0 4
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETTABLEKS R5 R4 K1 ["binding"]
  NAMECALL R5 R5 K0 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [-6]
  RETURN R0 0

PROTO_17:
  NEWTABLE R0 0 0
  NEWTABLE R1 0 0
  LOADB R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  MOVE R4 R3
  GETUPVAL R5 7
  CALL R4 1 0
  GETUPVAL R4 8
  MOVE R6 R0
  NAMECALL R4 R4 K0 ["GetAsync"]
  CALL R4 2 1
  NEWTABLE R5 0 0
  MOVE R6 R4
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K1 ["toString"]
  GETTABLEKS R12 R10 K2 ["Uri"]
  CALL R11 1 1
  SETTABLE R10 R5 R11
  FORGLOOP R6 2 [-8]
  GETUPVAL R6 9
  MOVE R8 R1
  NAMECALL R6 R6 K0 ["GetAsync"]
  CALL R6 2 1
  NEWTABLE R7 0 0
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K1 ["toString"]
  GETTABLEKS R14 R12 K2 ["Uri"]
  CALL R13 1 1
  SETTABLE R12 R7 R13
  FORGLOOP R8 2 [-8]
  GETUPVAL R8 10
  DUPTABLE R9 K6 [{"Controls", "Actions", "Settings"}]
  GETUPVAL R10 7
  SETTABLEKS R10 R9 K3 ["Controls"]
  SETTABLEKS R5 R9 K4 ["Actions"]
  SETTABLEKS R7 R9 K5 ["Settings"]
  CALL R8 1 0
  NEWTABLE R8 0 0
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U4
  NEWTABLE R10 0 0
  GETUPVAL R11 11
  JUMPIFNOT R11 [+17]
  NEWCLOSURE R11 P2
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE UPVAL U5
  GETIMPORT R12 K9 [task.defer]
  MOVE R13 R11
  CALL R12 1 1
  FASTCALL2 TABLE_INSERT R8 R12 [+4]
  MOVE R14 R8
  MOVE R15 R12
  GETUPVAL R13 5
  CALL R13 2 0
  JUMP [+50]
  MOVE R11 R1
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  GETUPVAL R18 12
  GETTABLEKS R17 R18 K10 ["SettingsBindings"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K1 ["toString"]
  MOVE R19 R15
  CALL R18 1 1
  GETTABLE R16 R17 R18
  JUMPIFNOT R16 [+9]
  MOVE R18 R10
  MOVE R21 R9
  NAMECALL R19 R16 K11 ["Connect"]
  CALL R19 2 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R17 5
  CALL R17 -1 0
  JUMP [+25]
  NEWCLOSURE R17 P3
  CAPTURE UPVAL U9
  CAPTURE VAL R15
  CAPTURE UPVAL U13
  CAPTURE REF R2
  CAPTURE UPVAL U12
  CAPTURE UPVAL U4
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE UPVAL U5
  GETUPVAL R18 13
  JUMPIFNOT R18 [+11]
  GETIMPORT R18 K9 [task.defer]
  MOVE R19 R17
  CALL R18 1 1
  FASTCALL2 TABLE_INSERT R8 R18 [+4]
  MOVE R20 R8
  MOVE R21 R18
  GETUPVAL R19 5
  CALL R19 2 0
  JUMP [+2]
  MOVE R18 R17
  CALL R18 0 0
  FORGLOOP R11 2 [-45]
  NEWCLOSURE R11 P4
  CAPTURE UPVAL U10
  CAPTURE UPVAL U4
  NEWTABLE R12 0 0
  NEWTABLE R13 0 0
  GETUPVAL R14 11
  JUMPIFNOT R14 [+19]
  NEWCLOSURE R14 P5
  CAPTURE UPVAL U14
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U8
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE UPVAL U5
  GETIMPORT R15 K9 [task.defer]
  MOVE R16 R14
  CALL R15 1 1
  FASTCALL2 TABLE_INSERT R8 R15 [+4]
  MOVE R17 R8
  MOVE R18 R15
  GETUPVAL R16 5
  CALL R16 2 0
  JUMP [+65]
  MOVE R14 R0
  LOADNIL R15
  LOADNIL R16
  FORGPREP R14
  GETUPVAL R21 12
  GETTABLEKS R20 R21 K12 ["ActionBindings"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K1 ["toString"]
  MOVE R22 R18
  CALL R21 1 1
  GETTABLE R19 R20 R21
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K13 ["GetModel"]
  MOVE R21 R18
  CALL R20 1 1
  JUMPIFNOT R19 [+15]
  DUPTABLE R23 K15 [{"Uri", "binding"}]
  SETTABLEKS R18 R23 K2 ["Uri"]
  MOVE R26 R11
  NAMECALL R24 R19 K11 ["Connect"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K14 ["binding"]
  FASTCALL2 TABLE_INSERT R12 R23 [+3]
  MOVE R22 R12
  GETUPVAL R21 5
  CALL R21 2 0
  JUMP [+29]
  JUMPIFNOT R20 [+3]
  GETTABLEKS R21 R20 K16 ["NoBinding"]
  JUMPIF R21 [+25]
  NEWCLOSURE R21 P6
  CAPTURE UPVAL U8
  CAPTURE VAL R18
  CAPTURE UPVAL U13
  CAPTURE REF R2
  CAPTURE UPVAL U12
  CAPTURE UPVAL U4
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE UPVAL U5
  GETUPVAL R22 13
  JUMPIFNOT R22 [+11]
  GETIMPORT R22 K9 [task.defer]
  MOVE R23 R21
  CALL R22 1 1
  FASTCALL2 TABLE_INSERT R8 R22 [+4]
  MOVE R24 R8
  MOVE R25 R22
  GETUPVAL R23 5
  CALL R23 2 0
  JUMP [+2]
  MOVE R22 R21
  CALL R22 0 0
  FORGLOOP R14 2 [-60]
  NEWCLOSURE R14 P7
  CAPTURE VAL R8
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U4
  GETUPVAL R15 13
  JUMPIF R15 [+2]
  GETUPVAL R15 11
  JUMPIFNOT R15 [+8]
  LENGTH R15 R8
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+5]
  GETIMPORT R15 K9 [task.defer]
  MOVE R16 R14
  CALL R15 1 0
  NEWCLOSURE R15 P8
  CAPTURE REF R2
  CAPTURE VAL R10
  CAPTURE UPVAL U11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CLOSEUPVALS R2
  RETURN R15 1

PROTO_18:
  LOADK R4 K0 ["Actions"]
  NAMECALL R2 R0 K1 ["GetPluginComponent"]
  CALL R2 2 1
  LOADK R5 K2 ["Settings"]
  NAMECALL R3 R0 K1 ["GetPluginComponent"]
  CALL R3 2 1
  GETUPVAL R4 0
  DUPTABLE R5 K4 [{"Controls", "Actions", "Settings"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K3 ["Controls"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K0 ["Actions"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K2 ["Settings"]
  CALL R4 1 2
  GETUPVAL R6 1
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  NEWTABLE R8 0 2
  MOVE R9 R1
  MOVE R10 R5
  SETLIST R8 R9 2 [1]
  CALL R6 2 0
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useEffect"]
  GETTABLEKS R3 R1 K9 ["useState"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["StudioUri"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Resources"]
  GETTABLEKS R7 R8 K15 ["ControlsModel"]
  CALL R6 1 1
  GETIMPORT R7 K18 [table.insert]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Packages"]
  GETTABLEKS R9 R10 K19 ["Dash"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K20 ["filter"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K11 ["Util"]
  GETTABLEKS R11 R12 K21 ["areFlagsDisabled"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K11 ["Util"]
  GETTABLEKS R12 R13 K22 ["isControlEnabledFromFlags"]
  CALL R11 1 1
  DUPTABLE R12 K25 [{"SettingsBindings", "ActionBindings"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K23 ["SettingsBindings"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K24 ["ActionBindings"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K26 ["SharedFlags"]
  GETTABLEKS R14 R15 K27 ["getFFlagStudioCommandBridgesMultiBind"]
  CALL R13 1 1
  MOVE R14 R13
  CALL R14 0 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K26 ["SharedFlags"]
  GETTABLEKS R16 R17 K28 ["getFFlagRespectFlagsWhenBinding"]
  CALL R15 1 1
  CALL R15 0 1
  GETIMPORT R16 K30 [game]
  LOADK R18 K31 ["LuaRibbonPerformanceImprovement"]
  LOADB R19 0
  NAMECALL R16 R16 K32 ["DefineFastFlag"]
  CALL R16 3 1
  GETIMPORT R17 K30 [game]
  LOADK R19 K33 ["UpdateUITabLuaRibbon"]
  NAMECALL R17 R17 K34 ["GetFastFlag"]
  CALL R17 2 1
  DUPCLOSURE R18 K35 [PROTO_18]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R9
  RETURN R18 1
