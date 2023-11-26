PROTO_0:
  LOADB R2 1
  JUMPIFEQKS R0 K0 ["Last Imported"] [+10]
  LOADK R5 K1 ["Templates"]
  LOADK R6 K2 ["LastImported"]
  NAMECALL R3 R1 K3 ["getText"]
  CALL R3 3 1
  JUMPIFEQ R0 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  LOADB R2 1
  JUMPIFEQKS R0 K0 ["Default"] [+10]
  LOADK R5 K1 ["Templates"]
  LOADK R6 K0 ["Default"]
  NAMECALL R3 R1 K2 ["getText"]
  CALL R3 3 1
  JUMPIFEQ R0 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  NAMECALL R1 R0 K0 ["CreatePresetFromData"]
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADNIL R7
  SETTABLEKS R7 R6 K1 ["ImportName"]
  FORGLOOP R2 2 [-4]
  GETUPVAL R2 0
  LOADK R4 K2 ["Last Imported"]
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["SavePreset"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  NAMECALL R2 R0 K0 ["CreatePresetFromData"]
  CALL R2 1 1
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADNIL R8
  SETTABLEKS R8 R7 K1 ["ImportName"]
  FORGLOOP R3 2 [-4]
  MOVE R5 R2
  NAMECALL R3 R1 K2 ["ApplyPreset"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R3 0 0
  GETUPVAL R4 0
  NAMECALL R4 R4 K0 ["GetAllPresets"]
  CALL R4 1 3
  FORGPREP R4
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["isLastImport"]
  MOVE R11 R0
  MOVE R12 R2
  CALL R10 2 1
  JUMPIFNOT R10 [+6]
  LOADK R11 K2 ["Templates"]
  LOADK R12 K3 ["LastImported"]
  NAMECALL R9 R2 K4 ["getText"]
  CALL R9 3 1
  JUMP [+1]
  MOVE R9 R7
  JUMPIFNOTEQ R9 R0 [+12]
  JUMPIFNOT R1 [+10]
  MOVE R13 R9
  LOADK R14 K5 ["*"]
  CONCAT R12 R13 R14
  FASTCALL2 TABLE_INSERT R3 R12 [+4]
  MOVE R11 R3
  GETIMPORT R10 K8 [table.insert]
  CALL R10 2 0
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R3 R9 [+5]
  MOVE R11 R3
  MOVE R12 R9
  GETIMPORT R10 K8 [table.insert]
  CALL R10 2 0
  FORGLOOP R4 2 [-35]
  LOADK R6 K2 ["Templates"]
  LOADK R7 K9 ["Default"]
  NAMECALL R4 R2 K4 ["getText"]
  CALL R4 3 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["isDefault"]
  MOVE R7 R0
  MOVE R8 R2
  CALL R6 2 1
  JUMPIFNOT R6 [+5]
  JUMPIFNOT R1 [+4]
  MOVE R6 R4
  LOADK R7 K5 ["*"]
  CONCAT R5 R6 R7
  JUMP [+1]
  MOVE R5 R4
  FASTCALL2 TABLE_INSERT R3 R5 [+5]
  MOVE R7 R3
  MOVE R8 R5
  GETIMPORT R6 K8 [table.insert]
  CALL R6 2 0
  RETURN R3 1

PROTO_5:
  NAMECALL R4 R0 K0 ["Reset"]
  CALL R4 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["isLastImport"]
  MOVE R5 R1
  MOVE R6 R3
  CALL R4 2 1
  JUMPIFNOT R4 [+10]
  GETUPVAL R4 1
  LOADK R6 K2 ["Last Imported"]
  NAMECALL R4 R4 K3 ["GetPreset"]
  CALL R4 2 1
  MOVE R7 R4
  NAMECALL R5 R0 K4 ["ApplyPreset"]
  CALL R5 2 0
  JUMP [+16]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["isDefault"]
  MOVE R5 R1
  MOVE R6 R3
  CALL R4 2 1
  JUMPIFNOT R4 [+9]
  GETUPVAL R4 1
  MOVE R6 R1
  NAMECALL R4 R4 K3 ["GetPreset"]
  CALL R4 2 1
  MOVE R7 R4
  NAMECALL R5 R0 K4 ["ApplyPreset"]
  CALL R5 2 0
  NEWTABLE R4 0 0
  MOVE R5 R2
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R8 K6 ["ShouldImport"]
  SETTABLE R10 R4 R8
  FORGLOOP R5 2 [-4]
  RETURN R4 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getNameList"]
  LOADK R2 K1 [""]
  LOADB R3 0
  MOVE R4 R0
  CALL R1 3 3
  FORGPREP R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["isDefault"]
  MOVE R7 R5
  MOVE R8 R0
  CALL R6 2 1
  JUMPIFNOT R6 [+1]
  RETURN R4 2
  FORGLOOP R1 2 [-9]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AssetImportService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  NEWTABLE R2 8 0
  DUPCLOSURE R3 K7 [PROTO_0]
  SETTABLEKS R3 R2 K8 ["isLastImport"]
  DUPCLOSURE R3 K9 [PROTO_1]
  SETTABLEKS R3 R2 K10 ["isDefault"]
  DUPCLOSURE R3 K11 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K12 ["createTemplateFromLastImport"]
  DUPCLOSURE R3 K13 [PROTO_3]
  SETTABLEKS R3 R2 K14 ["applyImportDataToSession"]
  DUPCLOSURE R3 K15 [PROTO_4]
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K16 ["getNameList"]
  DUPCLOSURE R3 K17 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K18 ["resolveTemplate"]
  DUPCLOSURE R3 K19 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K20 ["initializeTemplates"]
  RETURN R2 1
