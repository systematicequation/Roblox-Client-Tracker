PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["AttributeChunkCountName"]
  NAMECALL R2 R1 K1 ["GetAttribute"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  NEWTABLE R3 0 0
  LOADN R6 1
  MOVE R4 R2
  LOADN R5 1
  FORNPREP R4
  GETUPVAL R10 0
  GETTABLEKS R8 R10 K2 ["AttributeChunkNameBase"]
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R10 R6
  GETIMPORT R9 K4 [tostring]
  CALL R9 1 1
  CONCAT R7 R8 R9
  MOVE R10 R7
  NAMECALL R8 R1 K1 ["GetAttribute"]
  CALL R8 2 1
  GETUPVAL R9 1
  MOVE R11 R8
  NAMECALL R9 R9 K5 ["JSONDecode"]
  CALL R9 2 1
  GETTABLEKS R12 R9 K6 ["source"]
  FASTCALL2 TABLE_INSERT R3 R12 [+4]
  MOVE R11 R3
  GETIMPORT R10 K9 [table.insert]
  CALL R10 2 0
  FORNLOOP R4
  RETURN R3 1

PROTO_1:
  JUMPIF R2 [+5]
  MOVE R5 R1
  NAMECALL R3 R0 K0 ["GetScriptBackupChunks"]
  CALL R3 2 1
  MOVE R2 R3
  JUMPIF R2 [+2]
  LOADB R3 0
  RETURN R3 1
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["GetEditorSource"]
  CALL R3 2 1
  LOADK R4 K2 [""]
  MOVE R5 R2
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  MOVE R10 R4
  MOVE R11 R9
  CONCAT R4 R10 R11
  FORGLOOP R5 2 [-4]
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R3
  LOADK R7 K6 ["
"]
  LOADK R8 K7 ["
"]
  CALL R5 3 1
  MOVE R3 R5
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K6 ["
"]
  LOADK R8 K7 ["
"]
  CALL R5 3 1
  MOVE R4 R5
  JUMPIFNOTEQ R3 R4 [+3]
  LOADB R5 0
  RETURN R5 1
  LOADB R5 1
  RETURN R5 1

PROTO_2:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["FindScriptDocument"]
  CALL R1 2 1
  JUMPIF R1 [+11]
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["OpenScriptDocumentAsync"]
  CALL R2 2 0
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["FindScriptDocument"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_3:
  GETUPVAL R4 0
  MOVE R6 R1
  NAMECALL R4 R4 K0 ["FindScriptDocument"]
  CALL R4 2 1
  JUMPIF R4 [+11]
  GETUPVAL R5 0
  MOVE R7 R1
  NAMECALL R5 R5 K1 ["OpenScriptDocumentAsync"]
  CALL R5 2 0
  GETUPVAL R5 0
  MOVE R7 R1
  NAMECALL R5 R5 K0 ["FindScriptDocument"]
  CALL R5 2 1
  MOVE R4 R5
  MOVE R3 R4
  JUMPIFNOT R3 [+19]
  NAMECALL R4 R3 K2 ["GetLineCount"]
  CALL R4 1 1
  MOVE R8 R4
  NAMECALL R6 R3 K3 ["GetLine"]
  CALL R6 2 1
  FASTCALL1 STRING_LEN R6 [+2]
  GETIMPORT R5 K6 [string.len]
  CALL R5 1 1
  MOVE R8 R2
  MOVE R9 R4
  ADDK R10 R5 K7 [1]
  MOVE R11 R4
  ADDK R12 R5 K7 [1]
  NAMECALL R6 R3 K8 ["EditTextAsync"]
  CALL R6 6 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  MOVE R6 R1
  NAMECALL R4 R4 K0 ["FindScriptDocument"]
  CALL R4 2 1
  JUMPIF R4 [+11]
  GETUPVAL R5 0
  MOVE R7 R1
  NAMECALL R5 R5 K1 ["OpenScriptDocumentAsync"]
  CALL R5 2 0
  GETUPVAL R5 0
  MOVE R7 R1
  NAMECALL R5 R5 K0 ["FindScriptDocument"]
  CALL R5 2 1
  MOVE R4 R5
  MOVE R3 R4
  JUMPIFNOT R3 [+19]
  NAMECALL R4 R3 K2 ["GetLineCount"]
  CALL R4 1 1
  MOVE R8 R4
  NAMECALL R6 R3 K3 ["GetLine"]
  CALL R6 2 1
  FASTCALL1 STRING_LEN R6 [+2]
  GETIMPORT R5 K6 [string.len]
  CALL R5 1 1
  MOVE R8 R2
  LOADN R9 1
  LOADN R10 1
  MOVE R11 R4
  MOVE R12 R5
  NAMECALL R6 R3 K7 ["EditTextAsync"]
  CALL R6 6 0
  RETURN R0 0

PROTO_5:
  NEWTABLE R2 0 0
  MOVE R3 R1
  FASTCALL1 STRING_LEN R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K2 [string.len]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["CharacterLimit"]
  JUMPIFNOTLT R5 R4 [+39]
  LENGTH R6 R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["CharacterLimit"]
  MUL R5 R6 R7
  ADDK R4 R5 K4 [1]
  LENGTH R7 R2
  ADDK R6 R7 K4 [1]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["CharacterLimit"]
  MUL R5 R6 R7
  MOVE R9 R3
  MOVE R10 R4
  MOVE R11 R5
  FASTCALL STRING_SUB [+2]
  GETIMPORT R8 K6 [string.sub]
  CALL R8 3 1
  FASTCALL2 TABLE_INSERT R2 R8 [+4]
  MOVE R7 R2
  GETIMPORT R6 K9 [table.insert]
  CALL R6 2 0
  MOVE R7 R3
  ADDK R8 R5 K4 [1]
  FASTCALL1 STRING_LEN R3 [+3]
  MOVE R10 R3
  GETIMPORT R9 K2 [string.len]
  CALL R9 1 1
  FASTCALL STRING_SUB [+2]
  GETIMPORT R6 K6 [string.sub]
  CALL R6 3 1
  MOVE R3 R6
  JUMPBACK [-48]
  FASTCALL2 TABLE_INSERT R2 R3 [+5]
  MOVE R5 R2
  MOVE R6 R3
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ScriptEditorService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R6 K6 [script]
  GETTABLEKS R5 R6 K7 ["Parent"]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R7 R2 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["ScriptAnalysis"]
  GETTABLEKS R4 R5 K13 ["Constants"]
  CALL R3 1 1
  NEWTABLE R4 8 0
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K15 ["GetScriptBackupChunks"]
  DUPCLOSURE R5 K16 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K17 ["DidSourceChange"]
  DUPCLOSURE R5 K18 [PROTO_2]
  CAPTURE VAL R1
  DUPCLOSURE R6 K19 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R6 R4 K20 ["AppendChunk"]
  DUPCLOSURE R6 K21 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R6 R4 K22 ["ReplaceWithChunk"]
  DUPCLOSURE R6 K23 [PROTO_5]
  CAPTURE VAL R3
  SETTABLEKS R6 R4 K24 ["SplitIntoChunks"]
  RETURN R4 1
