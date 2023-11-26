PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Terrain"]
  GETUPVAL R3 1
  GETTABLEKS R4 R1 K2 ["Transform"]
  GETTABLEKS R5 R1 K3 ["Size"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K4 ["regions"]
  LOADN R3 1
  SETTABLEKS R3 R0 K5 ["currentIndex"]
  GETUPVAL R3 2
  GETTABLEKS R4 R1 K2 ["Transform"]
  GETTABLEKS R5 R1 K3 ["Size"]
  CALL R3 2 1
  MOVE R6 R3
  NAMECALL R4 R2 K6 ["CopyRegion"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K7 ["backup"]
  SETTABLEKS R3 R0 K8 ["backupRegion"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Replace"]
  GETTABLEKS R3 R1 K2 ["Terrain"]
  GETTABLEKS R5 R0 K3 ["regions"]
  GETTABLEKS R6 R0 K4 ["currentIndex"]
  GETTABLE R4 R5 R6
  JUMPIFNOT R2 [+13]
  GETTABLEKS R7 R1 K5 ["Transform"]
  GETTABLEKS R8 R1 K6 ["Size"]
  GETTABLEKS R9 R1 K7 ["SourceMaterial"]
  GETTABLEKS R10 R1 K8 ["TargetMaterial"]
  MOVE R11 R4
  NAMECALL R5 R3 K9 ["ReplaceMaterialInTransformSubregion"]
  CALL R5 6 0
  JUMP [+10]
  GETTABLEKS R7 R1 K5 ["Transform"]
  GETTABLEKS R8 R1 K6 ["Size"]
  GETTABLEKS R9 R1 K10 ["Material"]
  MOVE R10 R4
  NAMECALL R5 R3 K11 ["SetMaterialInTransformSubregion"]
  CALL R5 5 0
  GETTABLEKS R5 R0 K4 ["currentIndex"]
  GETTABLEKS R7 R0 K3 ["regions"]
  LENGTH R6 R7
  JUMPIFNOTEQ R5 R6 [+4]
  LOADB R5 0
  LOADN R6 0
  RETURN R5 2
  GETTABLEKS R5 R0 K4 ["currentIndex"]
  ADDK R5 R5 K12 [1]
  SETTABLEKS R5 R0 K4 ["currentIndex"]
  LOADB R5 1
  GETTABLEKS R7 R0 K4 ["currentIndex"]
  GETTABLEKS R9 R0 K3 ["regions"]
  LENGTH R8 R9
  DIV R6 R7 R8
  RETURN R5 2

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Terrain"]
  GETTABLEKS R4 R0 K2 ["backup"]
  GETTABLEKS R6 R0 K3 ["backupRegion"]
  GETTABLEKS R5 R6 K4 ["Min"]
  LOADB R6 1
  NAMECALL R2 R2 K5 ["PasteRegion"]
  CALL R2 4 0
  GETTABLEKS R2 R1 K6 ["OnFinish"]
  CALL R2 0 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K1 [print]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["operation"]
  GETTABLEKS R2 R3 K3 ["_errorMessage"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R1 1
  LOADK R3 K1 ["TransformAction"]
  NAMECALL R1 R1 K2 ["SetWaypoint"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["OnFinish"]
  CALL R1 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  DUPTABLE R2 K6 [{"onStart", "onStep", "onCancel", "onError", "onFinish"}]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K1 ["onStart"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K2 ["onStep"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K3 ["onCancel"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K4 ["onError"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K5 ["onFinish"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["operation"]
  DUPTABLE R1 K11 [{"paused", "progress", "running"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K8 ["paused"]
  LOADN R2 0
  SETTABLEKS R2 R1 K9 ["progress"]
  LOADB R2 0
  SETTABLEKS R2 R1 K10 ["running"]
  SETTABLEKS R1 R0 K12 ["state"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"paused"}]
  SETTABLEKS R0 R3 K0 ["paused"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"running"}]
  SETTABLEKS R0 R3 K0 ["running"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"progress"}]
  SETTABLEKS R0 R3 K0 ["progress"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["operation"]
  GETTABLEKS R1 R2 K1 ["PausedChanged"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["pauseChangedConnection"]
  GETTABLEKS R2 R0 K0 ["operation"]
  GETTABLEKS R1 R2 K4 ["RunningChanged"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["runningChangedConnection"]
  GETTABLEKS R2 R0 K0 ["operation"]
  GETTABLEKS R1 R2 K6 ["ProgressChanged"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["progressChangedConnection"]
  GETTABLEKS R1 R0 K0 ["operation"]
  NAMECALL R1 R1 K8 ["start"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["pauseChangedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["pauseChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["runningChangedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["runningChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["progressChangedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K3 ["progressChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K4 ["operation"]
  NAMECALL R1 R1 K5 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["operation"]
  NAMECALL R0 R0 K1 ["cancel"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K7 [{"Title", "SubText", "Progress", "OnCancelButtonClicked"}]
  GETTABLEKS R7 R1 K8 ["Replace"]
  JUMPIFNOT R7 [+6]
  LOADK R8 K8 ["Replace"]
  LOADK R9 K3 ["Title"]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 3 1
  JUMP [+5]
  LOADK R8 K10 ["Fill"]
  LOADK R9 K3 ["Title"]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K3 ["Title"]
  GETTABLEKS R7 R1 K8 ["Replace"]
  JUMPIFNOT R7 [+25]
  LOADK R8 K8 ["Replace"]
  LOADK R9 K11 ["Description"]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 3 1
  LOADK R10 K12 ["Materials"]
  GETTABLEKS R12 R1 K13 ["SourceMaterial"]
  GETTABLEKS R11 R12 K14 ["Name"]
  NAMECALL R8 R2 K9 ["getText"]
  CALL R8 3 1
  LOADK R11 K12 ["Materials"]
  GETTABLEKS R13 R1 K15 ["TargetMaterial"]
  GETTABLEKS R12 R13 K14 ["Name"]
  NAMECALL R9 R2 K9 ["getText"]
  CALL R9 3 -1
  NAMECALL R6 R6 K16 ["format"]
  CALL R6 -1 1
  JUMP [+16]
  LOADK R8 K10 ["Fill"]
  LOADK R9 K11 ["Description"]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 3 1
  LOADK R10 K12 ["Materials"]
  GETTABLEKS R12 R1 K17 ["Material"]
  GETTABLEKS R11 R12 K14 ["Name"]
  NAMECALL R8 R2 K9 ["getText"]
  CALL R8 3 -1
  NAMECALL R6 R6 K16 ["format"]
  CALL R6 -1 1
  SETTABLEKS R6 R5 K4 ["SubText"]
  GETTABLEKS R7 R0 K18 ["state"]
  GETTABLEKS R6 R7 K19 ["progress"]
  SETTABLEKS R6 R5 K5 ["Progress"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K6 ["OnCancelButtonClicked"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LocalizationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["ContextServices"]
  GETTABLEKS R4 R3 K13 ["withContext"]
  GETTABLEKS R5 R3 K14 ["Localization"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K15 ["Src"]
  GETTABLEKS R8 R9 K16 ["Util"]
  GETTABLEKS R7 R8 K17 ["ConvertTransformToRegion"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K15 ["Src"]
  GETTABLEKS R9 R10 K18 ["Components"]
  GETTABLEKS R8 R9 K19 ["ProgressDialog"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R1 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Util"]
  GETTABLEKS R9 R10 K20 ["CreateMortonOrderChunks"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R1 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Util"]
  GETTABLEKS R10 R11 K21 ["LongOperation"]
  CALL R9 1 1
  GETIMPORT R10 K1 [game]
  LOADK R12 K22 ["ChangeHistoryService"]
  NAMECALL R10 R10 K3 ["GetService"]
  CALL R10 2 1
  GETTABLEKS R11 R2 K23 ["Component"]
  LOADK R13 K24 ["FillDialog"]
  NAMECALL R11 R11 K25 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K26 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K27 ["init"]
  DUPCLOSURE R12 K28 [PROTO_9]
  SETTABLEKS R12 R11 K29 ["didMount"]
  DUPCLOSURE R12 K30 [PROTO_10]
  SETTABLEKS R12 R11 K31 ["willUnmount"]
  DUPCLOSURE R12 K32 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R12 R11 K33 ["render"]
  MOVE R12 R4
  DUPTABLE R13 K34 [{"Localization"}]
  SETTABLEKS R5 R13 K14 ["Localization"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 -1
  RETURN R12 -1
