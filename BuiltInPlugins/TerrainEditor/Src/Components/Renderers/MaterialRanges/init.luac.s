PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Value"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Get"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 4
  CALL R0 4 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Set"]
  MOVE R3 R0
  GETUPVAL R4 1
  GETUPVAL R5 2
  MOVE R6 R1
  JUMPIF R6 [+1]
  GETUPVAL R6 3
  CALL R2 4 1
  GETUPVAL R3 4
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K1 ["OnChanged"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Value"]
  CALL R1 1 2
  GETUPVAL R3 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K0 ["Value"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 0
  GETTABLEKS R3 R0 K1 ["Schema"]
  GETTABLEKS R4 R3 K2 ["Height"]
  GETUPVAL R5 2
  NAMECALL R5 R5 K3 ["use"]
  CALL R5 1 1
  NAMECALL R6 R5 K4 ["getRoot"]
  CALL R6 1 1
  GETUPVAL R7 0
  LOADB R8 0
  CALL R7 1 2
  GETUPVAL R9 3
  NAMECALL R9 R9 K3 ["use"]
  CALL R9 1 1
  GETUPVAL R10 4
  LOADK R12 K5 ["MaterialRangesRenderer"]
  NAMECALL R10 R10 K3 ["use"]
  CALL R10 2 1
  GETUPVAL R11 0
  LOADN R12 1
  CALL R11 1 2
  GETUPVAL R13 5
  NEWCLOSURE R14 P1
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R12
  NEWTABLE R15 0 2
  MOVE R16 R1
  MOVE R17 R11
  SETLIST R15 R16 2 [1]
  CALL R13 2 1
  GETUPVAL R14 0
  NEWTABLE R15 0 0
  CALL R14 1 2
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R17 8
  DUPTABLE R18 K10 [{"OnClick", "Size", "Text"}]
  NEWCLOSURE R19 P2
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K7 ["OnClick"]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 32
  CALL R19 4 1
  SETTABLEKS R19 R18 K8 ["Size"]
  GETUPVAL R22 9
  GETTABLEKS R21 R22 K14 ["MaterialPresetSettings"]
  LOADK R22 K15 ["Edit"]
  NAMECALL R19 R9 K16 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K9 ["Text"]
  DUPTABLE R19 K18 [{"Portal"}]
  JUMPIFNOT R7 [+165]
  JUMPIFNOT R6 [+164]
  GETUPVAL R21 10
  GETTABLEKS R20 R21 K19 ["createPortal"]
  DUPTABLE R21 K22 [{"Dismiss", "Image", "Edit"}]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K6 ["createElement"]
  LOADK R23 K23 ["TextButton"]
  NEWTABLE R24 8 0
  LOADB R25 0
  SETTABLEKS R25 R24 K24 ["AutoButtonColor"]
  GETTABLEKS R25 R10 K25 ["BackgroundColor"]
  SETTABLEKS R25 R24 K25 ["BackgroundColor"]
  LOADK R25 K26 [0.2]
  SETTABLEKS R25 R24 K27 ["BackgroundTransparency"]
  GETUPVAL R27 7
  GETTABLEKS R26 R27 K28 ["Event"]
  GETTABLEKS R25 R26 K29 ["Activated"]
  NEWCLOSURE R26 P3
  CAPTURE VAL R8
  SETTABLE R26 R24 R25
  GETIMPORT R25 K31 [UDim2.fromOffset]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K32 ["Position"]
  GETIMPORT R25 K34 [UDim2.fromScale]
  LOADN R26 1
  LOADN R27 1
  CALL R25 2 1
  SETTABLEKS R25 R24 K8 ["Size"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K20 ["Dismiss"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K6 ["createElement"]
  LOADK R23 K35 ["ImageLabel"]
  GETTABLEKS R24 R10 K36 ["CloseButton"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K21 ["Image"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K6 ["createElement"]
  LOADK R23 K23 ["TextButton"]
  DUPTABLE R24 K38 [{"AutoButtonColor", "AnchorPoint", "Position", "Size"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K24 ["AutoButtonColor"]
  GETTABLEKS R26 R10 K39 ["Dialog"]
  GETTABLEKS R25 R26 K37 ["AnchorPoint"]
  SETTABLEKS R25 R24 K37 ["AnchorPoint"]
  GETTABLEKS R26 R10 K39 ["Dialog"]
  GETTABLEKS R25 R26 K32 ["Position"]
  SETTABLEKS R25 R24 K32 ["Position"]
  GETTABLEKS R26 R10 K39 ["Dialog"]
  GETTABLEKS R25 R26 K8 ["Size"]
  SETTABLEKS R25 R24 K8 ["Size"]
  DUPTABLE R25 K41 [{"Contents"}]
  GETUPVAL R27 7
  GETTABLEKS R26 R27 K6 ["createElement"]
  GETUPVAL R27 11
  DUPTABLE R28 K42 [{"BackgroundColor", "Size"}]
  GETTABLEKS R30 R10 K39 ["Dialog"]
  GETTABLEKS R29 R30 K25 ["BackgroundColor"]
  SETTABLEKS R29 R28 K25 ["BackgroundColor"]
  GETIMPORT R29 K34 [UDim2.fromScale]
  LOADN R30 1
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K8 ["Size"]
  DUPTABLE R29 K44 [{"Form"}]
  GETUPVAL R31 7
  GETTABLEKS R30 R31 K6 ["createElement"]
  GETUPVAL R31 12
  DUPTABLE R32 K53 [{"Expansion", "ExpandByDefault", "Items", "LabelHeight", "LabelWidth", "OnChange", "OnExpansionChange", "Renderers", "Size"}]
  SETTABLEKS R14 R32 K45 ["Expansion"]
  LOADB R33 1
  SETTABLEKS R33 R32 K46 ["ExpandByDefault"]
  SETTABLEKS R13 R32 K47 ["Items"]
  LOADN R33 20
  SETTABLEKS R33 R32 K48 ["LabelHeight"]
  GETIMPORT R33 K55 [UDim.new]
  LOADN R34 0
  LOADN R35 100
  CALL R33 2 1
  SETTABLEKS R33 R32 K49 ["LabelWidth"]
  NEWCLOSURE R33 P4
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R33 R32 K50 ["OnChange"]
  SETTABLEKS R15 R32 K51 ["OnExpansionChange"]
  DUPTABLE R33 K59 [{"Elevation", "Material", "Slope"}]
  GETUPVAL R34 13
  SETTABLEKS R34 R33 K56 ["Elevation"]
  GETUPVAL R34 14
  SETTABLEKS R34 R33 K57 ["Material"]
  GETUPVAL R34 15
  SETTABLEKS R34 R33 K58 ["Slope"]
  SETTABLEKS R33 R32 K52 ["Renderers"]
  GETIMPORT R33 K34 [UDim2.fromScale]
  LOADN R34 1
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K8 ["Size"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K43 ["Form"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K40 ["Contents"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K15 ["Edit"]
  MOVE R22 R6
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K17 ["Portal"]
  CALL R16 3 -1
  RETURN R16 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactRoblox"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K10 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETTABLEKS R6 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R6 K12 ["Stylizer"]
  GETTABLEKS R7 R1 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["deepCopy"]
  GETTABLEKS R7 R2 K15 ["useEffect"]
  GETTABLEKS R8 R2 K16 ["useMemo"]
  GETTABLEKS R9 R2 K17 ["useState"]
  GETTABLEKS R11 R1 K18 ["UI"]
  GETTABLEKS R10 R11 K19 ["Button"]
  GETTABLEKS R12 R1 K18 ["UI"]
  GETTABLEKS R11 R12 K20 ["Form"]
  GETTABLEKS R13 R1 K18 ["UI"]
  GETTABLEKS R12 R13 K21 ["Pane"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K22 ["Src"]
  GETTABLEKS R16 R17 K23 ["Components"]
  GETTABLEKS R15 R16 K24 ["Renderers"]
  GETTABLEKS R14 R15 K25 ["Material"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K26 ["Elevation"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K27 ["Slope"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K22 ["Src"]
  GETTABLEKS R18 R19 K28 ["Controllers"]
  GETTABLEKS R17 R18 K29 ["PluginController"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K22 ["Src"]
  GETTABLEKS R19 R20 K13 ["Util"]
  GETTABLEKS R18 R19 K30 ["MaterialPresetSettingsHelper"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R20 R0 K22 ["Src"]
  GETTABLEKS R19 R20 K31 ["Types"]
  CALL R18 1 1
  GETTABLEKS R19 R18 K32 ["Category"]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K22 ["Src"]
  GETTABLEKS R22 R23 K33 ["Resources"]
  GETTABLEKS R21 R22 K34 ["Theme"]
  CALL R20 1 1
  DUPCLOSURE R21 K35 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R19
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R15
  RETURN R21 1
