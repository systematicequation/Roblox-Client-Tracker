PROTO_0:
  GETUPVAL R2 0
  MOVE R4 R0
  LOADN R5 1
  NAMECALL R2 R2 K0 ["GetRightSide"]
  CALL R2 3 2
  JUMPIFNOT R2 [+10]
  JUMPIFNOT R3 [+9]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["CharAt"]
  MOVE R5 R0
  MOVE R6 R2
  CALL R4 2 1
  JUMPIFNOTEQKS R4 K2 ["{"] [+2]
  RETURN R0 0
  GETIMPORT R4 K5 [string.find]
  MOVE R5 R0
  LOADK R6 K6 ["="]
  LOADNIL R7
  LOADB R8 1
  CALL R4 4 1
  JUMPIFNOT R4 [+2]
  SUBK R4 R4 K7 [1]
  JUMP [+6]
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K9 [string.len]
  CALL R5 1 1
  MOVE R4 R5
  MOVE R6 R0
  LOADN R7 1
  MOVE R8 R4
  FASTCALL STRING_SUB [+2]
  GETIMPORT R5 K11 [string.sub]
  CALL R5 3 1
  MOVE R0 R5
  NAMECALL R5 R0 K12 ["split"]
  CALL R5 1 1
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETIMPORT R11 K5 [string.find]
  MOVE R12 R0
  MOVE R13 R10
  LOADNIL R14
  LOADB R15 1
  CALL R11 4 1
  GETUPVAL R12 2
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K13 ["RemoveWhitespace"]
  MOVE R15 R10
  CALL R14 1 1
  LOADK R15 K14 [""]
  MOVE R16 R1
  MOVE R17 R11
  NAMECALL R12 R12 K15 ["AddVariable"]
  CALL R12 5 0
  FORGLOOP R6 2 [-20]
  RETURN R0 0

PROTO_1:
  GETIMPORT R3 K2 [string.find]
  MOVE R4 R1
  MOVE R5 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["StartIndex"]
  LOADB R7 1
  CALL R3 4 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["Lines"]
  DUPTABLE R7 K8 [{"LineNo", "Text", "Offset"}]
  SETTABLEKS R2 R7 K5 ["LineNo"]
  MOVE R9 R1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["StartIndex"]
  SUBK R11 R3 K9 [1]
  FASTCALL STRING_SUB [+2]
  GETIMPORT R8 K11 [string.sub]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["Text"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["StartIndex"]
  SUBK R8 R9 K9 [1]
  SETTABLEKS R8 R7 K7 ["Offset"]
  FASTCALL2 TABLE_INSERT R6 R7 [+3]
  GETIMPORT R5 K14 [table.insert]
  CALL R5 2 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["new"]
  ADDK R6 R4 K9 [1]
  ADDK R7 R4 K9 [1]
  CALL R5 2 1
  GETUPVAL R6 0
  MOVE R8 R5
  NAMECALL R6 R6 K16 ["AddChild"]
  CALL R6 2 0
  SETUPVAL R5 0
  LOADB R6 1
  RETURN R6 1

PROTO_2:
  GETIMPORT R3 K2 [string.find]
  MOVE R4 R0
  LOADK R5 K3 ["function"]
  CALL R3 2 2
  JUMPIFNOT R3 [+19]
  JUMPIFNOT R4 [+18]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["MatchBeforeAndAfter"]
  MOVE R6 R0
  MOVE R7 R3
  MOVE R8 R4
  LOADK R9 K5 ["[%s=,]"]
  LOADK R10 K6 ["[%s
(]"]
  LOADB R11 1
  LOADB R12 1
  CALL R5 7 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  RETURN R5 1
  LOADB R5 0
  RETURN R5 1

PROTO_3:
  JUMPIFEQKS R0 K0 ["repeat"] [+5]
  JUMPIFEQKS R0 K1 ["do"] [+3]
  JUMPIFNOTEQKS R0 K2 ["then"] [+7]
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  RETURN R3 1
  LOADB R3 0
  RETURN R3 1

PROTO_4:
  GETIMPORT R3 K2 [string.find]
  MOVE R4 R1
  MOVE R5 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["StartIndex"]
  LOADB R7 1
  CALL R3 4 2
  GETUPVAL R5 0
  SUBK R6 R3 K4 [1]
  SETTABLEKS R6 R5 K5 ["EndIndex"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Lines"]
  DUPTABLE R7 K10 [{"LineNo", "Text", "Offset"}]
  SETTABLEKS R2 R7 K7 ["LineNo"]
  MOVE R9 R1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["StartIndex"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["EndIndex"]
  FASTCALL STRING_SUB [+2]
  GETIMPORT R8 K12 [string.sub]
  CALL R8 3 1
  SETTABLEKS R8 R7 K8 ["Text"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["StartIndex"]
  SUBK R8 R9 K4 [1]
  SETTABLEKS R8 R7 K9 ["Offset"]
  FASTCALL2 TABLE_INSERT R6 R7 [+3]
  GETIMPORT R5 K15 [table.insert]
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K16 ["Parent"]
  JUMPIFNOT R5 [+10]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K16 ["Parent"]
  SETUPVAL R5 0
  GETUPVAL R5 0
  SETTABLEKS R4 R5 K3 ["StartIndex"]
  GETUPVAL R5 0
  SETTABLEKS R4 R5 K5 ["EndIndex"]
  LOADB R5 1
  RETURN R5 1

PROTO_5:
  GETIMPORT R3 K2 [string.find]
  MOVE R4 R0
  LOADK R5 K3 ["end"]
  CALL R3 2 2
  JUMPIFNOT R3 [+19]
  JUMPIFNOT R4 [+18]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["MatchBeforeAndAfter"]
  MOVE R6 R0
  MOVE R7 R3
  MOVE R8 R4
  LOADK R9 K5 ["[%s]"]
  LOADK R10 K6 ["[)%s]"]
  LOADB R11 1
  LOADB R12 1
  CALL R5 7 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  RETURN R5 1
  LOADB R5 0
  RETURN R5 1

PROTO_6:
  GETIMPORT R3 K2 [string.find]
  MOVE R4 R0
  LOADK R5 K3 ["else"]
  CALL R3 2 2
  JUMPIFNOT R3 [+112]
  JUMPIFNOT R4 [+111]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["MatchBeforeAndAfter"]
  MOVE R6 R0
  MOVE R7 R3
  MOVE R8 R4
  LOADK R9 K5 ["[%s]"]
  LOADK R10 K6 ["[)%s]"]
  LOADB R11 1
  LOADB R12 1
  CALL R5 7 1
  JUMPIFNOT R5 [+99]
  GETIMPORT R5 K2 [string.find]
  MOVE R6 R1
  MOVE R7 R0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["StartIndex"]
  LOADB R9 1
  CALL R5 4 2
  GETUPVAL R7 1
  SUBK R8 R5 K8 [1]
  SETTABLEKS R8 R7 K9 ["EndIndex"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["Lines"]
  DUPTABLE R9 K14 [{"LineNo", "Text", "Offset"}]
  SETTABLEKS R2 R9 K11 ["LineNo"]
  MOVE R11 R1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["StartIndex"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["EndIndex"]
  FASTCALL STRING_SUB [+2]
  GETIMPORT R10 K16 [string.sub]
  CALL R10 3 1
  SETTABLEKS R10 R9 K12 ["Text"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["StartIndex"]
  SUBK R10 R11 K8 [1]
  SETTABLEKS R10 R9 K13 ["Offset"]
  FASTCALL2 TABLE_INSERT R8 R9 [+3]
  GETIMPORT R7 K19 [table.insert]
  CALL R7 2 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K20 ["Parent"]
  JUMPIFNOT R7 [+10]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K20 ["Parent"]
  SETUPVAL R7 1
  GETUPVAL R7 1
  SETTABLEKS R5 R7 K7 ["StartIndex"]
  GETUPVAL R7 1
  SETTABLEKS R6 R7 K9 ["EndIndex"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["Lines"]
  DUPTABLE R9 K14 [{"LineNo", "Text", "Offset"}]
  SETTABLEKS R2 R9 K11 ["LineNo"]
  MOVE R11 R1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["StartIndex"]
  SUBK R13 R5 K8 [1]
  FASTCALL STRING_SUB [+2]
  GETIMPORT R10 K16 [string.sub]
  CALL R10 3 1
  SETTABLEKS R10 R9 K12 ["Text"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["StartIndex"]
  SUBK R10 R11 K8 [1]
  SETTABLEKS R10 R9 K13 ["Offset"]
  FASTCALL2 TABLE_INSERT R8 R9 [+3]
  GETIMPORT R7 K19 [table.insert]
  CALL R7 2 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K21 ["new"]
  ADDK R8 R6 K8 [1]
  ADDK R9 R6 K8 [1]
  CALL R7 2 1
  GETUPVAL R8 1
  MOVE R10 R7
  NAMECALL R8 R8 K22 ["AddChild"]
  CALL R8 2 0
  SETUPVAL R7 1
  LOADB R8 1
  RETURN R8 1
  LOADB R5 0
  RETURN R5 1

PROTO_7:
  GETIMPORT R3 K2 [string.find]
  MOVE R4 R0
  LOADK R5 K3 ["elseif"]
  CALL R3 2 2
  JUMPIFNOT R3 [+19]
  JUMPIFNOT R4 [+18]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["MatchBeforeAndAfter"]
  MOVE R6 R0
  MOVE R7 R3
  MOVE R8 R4
  LOADK R9 K5 ["[%s]"]
  LOADK R10 K6 ["[)%s]"]
  LOADB R11 1
  LOADB R12 1
  CALL R5 7 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  RETURN R5 1
  LOADB R5 0
  RETURN R5 1

PROTO_8:
  GETIMPORT R3 K2 [string.find]
  MOVE R4 R0
  LOADK R5 K3 ["until"]
  CALL R3 2 2
  JUMPIFNOT R3 [+19]
  JUMPIFNOT R4 [+18]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["MatchBeforeAndAfter"]
  MOVE R6 R0
  MOVE R7 R3
  MOVE R8 R4
  LOADK R9 K5 [""]
  LOADK R10 K6 ["[(]"]
  LOADB R11 1
  LOADB R12 0
  CALL R5 7 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  RETURN R5 1
  LOADB R5 0
  RETURN R5 1

PROTO_9:
  JUMPIFEQKS R0 K0 ["local"] [+3]
  LOADB R3 0
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["FindFirstWholeWord"]
  MOVE R4 R1
  MOVE R5 R0
  GETUPVAL R6 1
  CALL R3 3 2
  JUMPIFNOT R3 [+39]
  JUMPIFNOT R4 [+38]
  MOVE R6 R1
  ADDK R7 R4 K2 [1]
  ADDK R8 R4 K3 [10]
  FASTCALL STRING_SUB [+2]
  GETIMPORT R5 K6 [string.sub]
  CALL R5 3 1
  JUMPIFNOTEQKS R5 K7 [" function "] [+5]
  ADDK R6 R4 K2 [1]
  SETUPVAL R6 1
  LOADB R6 0
  RETURN R6 1
  MOVE R7 R1
  ADDK R8 R4 K2 [1]
  FASTCALL1 STRING_LEN R1 [+3]
  MOVE R10 R1
  GETIMPORT R9 K9 [string.len]
  CALL R9 1 1
  FASTCALL STRING_SUB [+2]
  GETIMPORT R6 K6 [string.sub]
  CALL R6 3 1
  FASTCALL1 STRING_LEN R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K9 [string.len]
  CALL R7 1 1
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+5]
  GETUPVAL R7 2
  MOVE R8 R6
  MOVE R9 R2
  CALL R7 2 0
  ADDK R7 R4 K2 [1]
  SETUPVAL R7 1
  LOADB R5 1
  RETURN R5 1

PROTO_10:
  LOADN R2 1
  SETUPVAL R2 0
  GETUPVAL R2 1
  LOADN R3 1
  SETTABLEKS R3 R2 K0 ["StartIndex"]
  GETUPVAL R2 1
  LOADN R3 1
  SETTABLEKS R3 R2 K1 ["EndIndex"]
  LOADK R4 K2 ["%S+"]
  NAMECALL R2 R0 K3 ["gmatch"]
  CALL R2 2 3
  FORGPREP R2
  GETIMPORT R8 K6 [string.find]
  MOVE R9 R5
  LOADK R10 K7 ["function"]
  CALL R8 2 2
  JUMPIFNOT R8 [+20]
  JUMPIFNOT R9 [+19]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["MatchBeforeAndAfter"]
  MOVE R11 R5
  MOVE R12 R8
  MOVE R13 R9
  LOADK R14 K9 ["[%s=,]"]
  LOADK R15 K10 ["[%s
(]"]
  LOADB R16 1
  LOADB R17 1
  CALL R10 7 1
  JUMPIFNOT R10 [+7]
  GETUPVAL R10 3
  MOVE R11 R5
  MOVE R12 R0
  MOVE R13 R1
  CALL R10 3 1
  MOVE R7 R10
  JUMP [+1]
  LOADB R7 0
  JUMPIFNOT R7 [+1]
  JUMP [+115]
  JUMPIFEQKS R5 K11 ["repeat"] [+5]
  JUMPIFEQKS R5 K12 ["do"] [+3]
  JUMPIFNOTEQKS R5 K13 ["then"] [+7]
  GETUPVAL R7 3
  MOVE R8 R5
  MOVE R9 R0
  MOVE R10 R1
  CALL R7 3 1
  JUMP [+1]
  LOADB R7 0
  JUMPIFNOT R7 [+1]
  JUMP [+100]
  GETIMPORT R8 K6 [string.find]
  MOVE R9 R5
  LOADK R10 K14 ["end"]
  CALL R8 2 2
  JUMPIFNOT R8 [+20]
  JUMPIFNOT R9 [+19]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["MatchBeforeAndAfter"]
  MOVE R11 R5
  MOVE R12 R8
  MOVE R13 R9
  LOADK R14 K15 ["[%s]"]
  LOADK R15 K16 ["[)%s]"]
  LOADB R16 1
  LOADB R17 1
  CALL R10 7 1
  JUMPIFNOT R10 [+7]
  GETUPVAL R10 4
  MOVE R11 R5
  MOVE R12 R0
  MOVE R13 R1
  CALL R10 3 1
  MOVE R7 R10
  JUMP [+1]
  LOADB R7 0
  JUMPIFNOT R7 [+1]
  JUMP [+71]
  GETIMPORT R8 K6 [string.find]
  MOVE R9 R5
  LOADK R10 K17 ["until"]
  CALL R8 2 2
  JUMPIFNOT R8 [+20]
  JUMPIFNOT R9 [+19]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["MatchBeforeAndAfter"]
  MOVE R11 R5
  MOVE R12 R8
  MOVE R13 R9
  LOADK R14 K18 [""]
  LOADK R15 K19 ["[(]"]
  LOADB R16 1
  LOADB R17 0
  CALL R10 7 1
  JUMPIFNOT R10 [+7]
  GETUPVAL R10 4
  MOVE R11 R5
  MOVE R12 R0
  MOVE R13 R1
  CALL R10 3 1
  MOVE R7 R10
  JUMP [+1]
  LOADB R7 0
  JUMPIFNOT R7 [+1]
  JUMP [+42]
  GETUPVAL R7 5
  MOVE R8 R5
  MOVE R9 R0
  MOVE R10 R1
  CALL R7 3 1
  JUMPIFNOT R7 [+1]
  JUMP [+35]
  GETIMPORT R8 K6 [string.find]
  MOVE R9 R5
  LOADK R10 K20 ["elseif"]
  CALL R8 2 2
  JUMPIFNOT R8 [+20]
  JUMPIFNOT R9 [+19]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["MatchBeforeAndAfter"]
  MOVE R11 R5
  MOVE R12 R8
  MOVE R13 R9
  LOADK R14 K15 ["[%s]"]
  LOADK R15 K16 ["[)%s]"]
  LOADB R16 1
  LOADB R17 1
  CALL R10 7 1
  JUMPIFNOT R10 [+7]
  GETUPVAL R10 4
  MOVE R11 R5
  MOVE R12 R0
  MOVE R13 R1
  CALL R10 3 1
  MOVE R7 R10
  JUMP [+1]
  LOADB R7 0
  JUMPIFNOT R7 [+1]
  JUMP [+6]
  GETUPVAL R7 6
  MOVE R8 R5
  MOVE R9 R0
  MOVE R10 R1
  CALL R7 3 1
  JUMPIF R7 [0]
  FORGLOOP R2 1 [-145]
  MOVE R3 R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["EndIndex"]
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K22 [string.len]
  CALL R5 1 1
  FASTCALL STRING_SUB [+2]
  GETIMPORT R2 K24 [string.sub]
  CALL R2 3 1
  GETUPVAL R3 6
  LOADK R4 K25 ["local"]
  MOVE R5 R2
  MOVE R6 R1
  CALL R3 3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K26 ["Lines"]
  DUPTABLE R5 K30 [{"LineNo", "Text", "Offset"}]
  SETTABLEKS R1 R5 K27 ["LineNo"]
  SETTABLEKS R2 R5 K28 ["Text"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["EndIndex"]
  SUBK R6 R7 K31 [1]
  SETTABLEKS R6 R5 K29 ["Offset"]
  FASTCALL2 TABLE_INSERT R4 R5 [+3]
  GETIMPORT R3 K34 [table.insert]
  CALL R3 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  NAMECALL R2 R1 K1 ["GetRoot"]
  CALL R2 1 1
  LOADNIL R3
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE REF R2
  NEWCLOSURE R5 P1
  CAPTURE REF R2
  CAPTURE UPVAL U3
  NEWCLOSURE R6 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  NEWCLOSURE R7 P3
  CAPTURE VAL R5
  NEWCLOSURE R8 P4
  CAPTURE REF R2
  NEWCLOSURE R9 P5
  CAPTURE UPVAL U2
  CAPTURE VAL R8
  NEWCLOSURE R10 P6
  CAPTURE UPVAL U2
  CAPTURE REF R2
  CAPTURE UPVAL U3
  NEWCLOSURE R11 P7
  CAPTURE UPVAL U2
  CAPTURE VAL R8
  NEWCLOSURE R12 P8
  CAPTURE UPVAL U2
  CAPTURE VAL R8
  NEWCLOSURE R13 P9
  CAPTURE UPVAL U2
  CAPTURE REF R3
  CAPTURE VAL R4
  NEWCLOSURE R14 P10
  CAPTURE REF R3
  CAPTURE REF R2
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R13
  GETUPVAL R15 4
  MOVE R17 R0
  NAMECALL R15 R15 K2 ["GetEditorSource"]
  CALL R15 2 1
  GETUPVAL R16 4
  MOVE R18 R15
  NAMECALL R16 R16 K3 ["StripComments"]
  CALL R16 2 1
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K4 ["ForEachLine"]
  MOVE R18 R16
  NEWCLOSURE R19 P11
  CAPTURE VAL R14
  CALL R17 2 0
  CLOSEUPVALS R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ScriptEditorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["R15Migrator"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R4 R1 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Util"]
  GETTABLEKS R2 R3 K10 ["ScriptAnalysis"]
  GETIMPORT R3 K12 [require]
  GETTABLEKS R4 R2 K13 ["StringUtil"]
  CALL R3 1 1
  GETIMPORT R4 K12 [require]
  GETTABLEKS R5 R2 K14 ["StatementParser"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R6 R2 K15 ["CodeBlock"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R7 R2 K16 ["BlockTree"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_12]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R0
  RETURN R7 1
