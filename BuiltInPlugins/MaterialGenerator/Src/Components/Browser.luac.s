PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnRemove"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Id"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnGenerateVariations"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Id"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K3 ["Localization"]
  NEWTABLE R4 0 0
  GETTABLEKS R5 R1 K4 ["OnRemove"]
  JUMPIFNOT R5 [+25]
  DUPTABLE R7 K8 [{"Text", "Enabled", "OnItemClicked"}]
  LOADK R10 K9 ["Browser"]
  LOADK R11 K10 ["Remove"]
  NAMECALL R8 R3 K11 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K5 ["Text"]
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["Enabled"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K7 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K14 [table.insert]
  CALL R5 2 0
  GETTABLEKS R5 R1 K15 ["OnRemoveAll"]
  JUMPIFNOT R5 [+28]
  DUPTABLE R7 K8 [{"Text", "Enabled", "OnItemClicked"}]
  LOADK R10 K9 ["Browser"]
  LOADK R11 K16 ["RemoveAll"]
  NAMECALL R8 R3 K11 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K5 ["Text"]
  GETTABLEKS R10 R1 K17 ["Materials"]
  LENGTH R9 R10
  LOADN R10 0
  JUMPIFLT R10 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["Enabled"]
  GETTABLEKS R8 R1 K15 ["OnRemoveAll"]
  SETTABLEKS R8 R7 K7 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K14 [table.insert]
  CALL R5 2 0
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+28]
  GETTABLEKS R5 R1 K18 ["OnGenerateVariations"]
  JUMPIFNOT R5 [+25]
  MOVE R6 R4
  LOADN R7 1
  DUPTABLE R8 K8 [{"Text", "Enabled", "OnItemClicked"}]
  LOADK R11 K9 ["Browser"]
  LOADK R12 K19 ["GenerateVariations"]
  NAMECALL R9 R3 K11 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K5 ["Text"]
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K6 ["Enabled"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K7 ["OnItemClicked"]
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K14 [table.insert]
  CALL R5 3 0
  LENGTH R5 R4
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+8]
  GETIMPORT R5 K22 [task.spawn]
  NEWCLOSURE R6 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R4
  CALL R5 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected FFlagMaterialGeneratorNewU"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K3 ["onContextMenu"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnMaterialSelected"]
  GETTABLEKS R2 R0 K1 ["Id"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  NEWTABLE R2 0 0
  LOADN R5 1
  GETTABLEKS R3 R1 K1 ["GeneratingImages"]
  LOADN R4 1
  FORNPREP R3
  DUPTABLE R8 K3 [{"Loading"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K2 ["Loading"]
  FASTCALL2 TABLE_INSERT R2 R8 [+4]
  MOVE R7 R2
  GETIMPORT R6 K6 [table.insert]
  CALL R6 2 0
  FORNLOOP R3
  GETTABLEKS R3 R1 K7 ["Materials"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K10 [{"Id", "Material"}]
  SETTABLEKS R7 R10 K8 ["Id"]
  GETTABLEKS R11 R7 K11 ["MaterialVariant"]
  SETTABLEKS R11 R10 K9 ["Material"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K6 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-14]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K12 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K15 [{"LayoutOrder", "Size"}]
  GETTABLEKS R6 R1 K13 ["LayoutOrder"]
  SETTABLEKS R6 R5 K13 ["LayoutOrder"]
  GETTABLEKS R6 R1 K14 ["Size"]
  SETTABLEKS R6 R5 K14 ["Size"]
  DUPTABLE R6 K17 [{"Grid"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K24 [{"DisableHover", "Items", "OnClick", "OnRightClick", "SelectedItemId", "ShowGridLabels"}]
  GETTABLEKS R10 R1 K18 ["DisableHover"]
  SETTABLEKS R10 R9 K18 ["DisableHover"]
  SETTABLEKS R2 R9 K19 ["Items"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K20 ["OnClick"]
  GETTABLEKS R10 R0 K25 ["onContextMenu"]
  SETTABLEKS R10 R9 K21 ["OnRightClick"]
  GETTABLEKS R10 R1 K26 ["SelectedMaterial"]
  SETTABLEKS R10 R9 K22 ["SelectedItemId"]
  LOADB R10 0
  SETTABLEKS R10 R9 K23 ["ShowGridLabels"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["Grid"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["MaterialFramework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["React"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["Localization"]
  GETTABLEKS R7 R5 K13 ["withContext"]
  GETTABLEKS R8 R2 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["Pane"]
  GETTABLEKS R10 R8 K16 ["showContextMenu"]
  GETTABLEKS R12 R3 K17 ["Components"]
  GETTABLEKS R11 R12 K18 ["MaterialGrid"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K5 ["Src"]
  GETTABLEKS R14 R15 K19 ["Flags"]
  GETTABLEKS R13 R14 K20 ["getFFlagMaterialGeneratorNewUI"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K5 ["Src"]
  GETTABLEKS R15 R16 K19 ["Flags"]
  GETTABLEKS R14 R15 K21 ["getFFlagMaterialGeneratorSupportVariations2"]
  CALL R13 1 1
  GETTABLEKS R14 R4 K22 ["PureComponent"]
  LOADK R16 K23 ["Browser"]
  NAMECALL R14 R14 K24 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K25 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R10
  SETTABLEKS R15 R14 K26 ["init"]
  DUPCLOSURE R15 K27 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R15 R14 K28 ["render"]
  MOVE R15 R7
  DUPTABLE R16 K30 [{"Localization", "Plugin"}]
  SETTABLEKS R6 R16 K12 ["Localization"]
  GETTABLEKS R17 R5 K29 ["Plugin"]
  SETTABLEKS R17 R16 K29 ["Plugin"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
