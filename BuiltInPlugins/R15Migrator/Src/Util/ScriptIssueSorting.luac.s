PROTO_0:
  GETTABLEKS R5 R1 K0 ["scriptId"]
  JUMPIFNOT R5 [+9]
  GETTABLEKS R6 R1 K0 ["scriptId"]
  GETTABLE R5 R2 R6
  JUMPIF R5 [+5]
  GETTABLEKS R5 R1 K0 ["scriptId"]
  NEWTABLE R6 0 0
  SETTABLE R6 R2 R5
  GETTABLEKS R5 R1 K1 ["range"]
  JUMPIF R5 [+14]
  GETTABLEKS R5 R1 K0 ["scriptId"]
  GETTABLEKS R9 R1 K0 ["scriptId"]
  GETTABLE R8 R3 R9
  NAMECALL R6 R0 K2 ["sortDiagListForConversion"]
  CALL R6 2 1
  SETTABLE R6 R2 R5
  GETTABLEKS R5 R1 K0 ["scriptId"]
  LOADB R6 1
  SETTABLE R6 R4 R5
  RETURN R0 0
  GETTABLEKS R6 R1 K0 ["scriptId"]
  GETTABLE R5 R4 R6
  JUMPIF R5 [+10]
  GETTABLEKS R7 R1 K0 ["scriptId"]
  GETTABLE R6 R2 R7
  GETUPVAL R7 0
  MOVE R8 R1
  CALL R7 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K5 [table.insert]
  CALL R5 -1 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  MOVE R5 R1
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  MOVE R12 R9
  MOVE R13 R3
  MOVE R14 R2
  MOVE R15 R4
  NAMECALL R10 R0 K0 ["addScriptIssue"]
  CALL R10 5 0
  FORGLOOP R5 2 [-8]
  MOVE R5 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLE R10 R4 R8
  JUMPIF R10 [+4]
  MOVE R12 R9
  NAMECALL R10 R0 K1 ["sortScriptItemsByRange"]
  CALL R10 2 0
  FORGLOOP R5 2 [-7]
  RETURN R3 1

PROTO_2:
  GETTABLEKS R4 R0 K0 ["range"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["StartKey"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K2 ["line"]
  GETTABLEKS R5 R1 K0 ["range"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["StartKey"]
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K2 ["line"]
  JUMPIFNOTEQ R2 R3 [+22]
  GETTABLEKS R5 R0 K0 ["range"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["StartKey"]
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K3 ["character"]
  GETTABLEKS R6 R1 K0 ["range"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["StartKey"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K3 ["character"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R5 R0 K0 ["range"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["StartKey"]
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K2 ["line"]
  GETTABLEKS R6 R1 K0 ["range"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["StartKey"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K2 ["line"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  GETIMPORT R2 K2 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K3 [PROTO_2]
  CAPTURE UPVAL U0
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  JUMPIF R1 [+3]
  NEWTABLE R2 0 0
  RETURN R2 1
  GETUPVAL R2 0
  NAMECALL R3 R1 K0 ["Get"]
  CALL R3 1 -1
  CALL R2 -1 1
  MOVE R5 R2
  NAMECALL R3 R0 K1 ["sortScriptItemsByRange"]
  CALL R3 2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["deepCopy"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K11 ["ScriptAnalysis"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  NEWTABLE R4 4 0
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K14 ["addScriptIssue"]
  DUPCLOSURE R5 K15 [PROTO_1]
  SETTABLEKS R5 R4 K16 ["sortSelectionForConversion"]
  DUPCLOSURE R5 K17 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K18 ["sortScriptItemsByRange"]
  DUPCLOSURE R5 K19 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K20 ["sortDiagListForConversion"]
  RETURN R4 1
