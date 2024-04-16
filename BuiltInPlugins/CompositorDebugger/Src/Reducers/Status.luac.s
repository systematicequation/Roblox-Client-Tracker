PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ActiveLayersFilter"}]
  GETTABLEKS R5 R1 K2 ["activeLayersFilter"]
  SETTABLEKS R5 R4 K0 ["ActiveLayersFilter"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"DebugDataEvent", "DebugDataConnection"}]
  GETTABLEKS R5 R1 K3 ["event"]
  SETTABLEKS R5 R4 K0 ["DebugDataEvent"]
  GETTABLEKS R5 R1 K4 ["connection"]
  SETTABLEKS R5 R4 K1 ["DebugDataConnection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SendPayloadAnalytics"}]
  GETTABLEKS R5 R1 K2 ["enable"]
  SETTABLEKS R5 R4 K0 ["SendPayloadAnalytics"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"HistoryField"}]
  DUPTABLE R5 K5 [{"id", "section", "field"}]
  GETTABLEKS R6 R1 K2 ["id"]
  SETTABLEKS R6 R5 K2 ["id"]
  GETTABLEKS R6 R1 K3 ["section"]
  SETTABLEKS R6 R5 K3 ["section"]
  GETTABLEKS R6 R1 K4 ["field"]
  SETTABLEKS R6 R5 K4 ["field"]
  SETTABLEKS R5 R4 K0 ["HistoryField"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"HistoryOffset"}]
  GETTABLEKS R5 R1 K2 ["historyOffset"]
  SETTABLEKS R5 R4 K0 ["HistoryOffset"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"LayerAdornmentEvent"}]
  GETTABLEKS R5 R1 K2 ["event"]
  SETTABLEKS R5 R4 K0 ["LayerAdornmentEvent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"PropertyOverrideEvent"}]
  GETTABLEKS R5 R1 K2 ["event"]
  SETTABLEKS R5 R4 K0 ["PropertyOverrideEvent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Actor"}]
  GETTABLEKS R5 R1 K2 ["actor"]
  JUMPIF R5 [+1]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K0 ["Actor"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"DebugPoseEvent"}]
  GETTABLEKS R5 R1 K2 ["event"]
  SETTABLEKS R5 R4 K0 ["DebugPoseEvent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SelectedLayer"}]
  GETTABLEKS R5 R1 K2 ["selectedLayer"]
  JUMPIF R5 [+1]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K0 ["SelectedLayer"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ExpandedSections"}]
  GETTABLEKS R5 R1 K2 ["expandedSections"]
  SETTABLEKS R5 R4 K0 ["ExpandedSections"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Adornments"}]
  GETTABLEKS R5 R1 K2 ["adornments"]
  SETTABLEKS R5 R4 K0 ["Adornments"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"LayerFilters"}]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["LayerFilters"]
  GETTABLEKS R7 R1 K2 ["layerFilters"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["LayerFilters"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Dash"]
  GETTABLEKS R4 R3 K10 ["join"]
  GETTABLEKS R5 R3 K11 ["None"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K14 ["Actions"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K15 ["SetActiveLayersFilter"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K16 ["SetActor"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K17 ["SetAdornments"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R7 K18 ["SetDebugDataEvent"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R7 K19 ["SetDebugPoseEvent"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R7 K20 ["SetExpandedSections"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R7 K21 ["SetHistoryField"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R7 K22 ["SetHistoryOffset"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R7 K23 ["SetLayerAdornmentEvent"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R7 K24 ["SetLayerFilter"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R7 K25 ["SetPropertyOverrideEvent"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R7 K26 ["SetSelectedLayer"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R7 K27 ["SetSendPayloadAnalytics"]
  CALL R20 1 1
  GETTABLEKS R22 R0 K12 ["Src"]
  GETTABLEKS R21 R22 K28 ["Util"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R21 K29 ["Constants"]
  CALL R22 1 1
  GETTABLEKS R23 R1 K30 ["createReducer"]
  DUPTABLE R24 K45 [{"ActiveLayersFilter", "Actor", "Adornments", "DebugDataConnection", "DebugDataEvent", "DebugPoseEvent", "ExpandedSections", "HistoryField", "HistoryOffset", "LayerAdornmentEvent", "LayerFilters", "PropertyOverrideEvent", "SelectedLayer", "SendPayloadAnalytics"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K31 ["ActiveLayersFilter"]
  LOADNIL R25
  SETTABLEKS R25 R24 K32 ["Actor"]
  NEWTABLE R25 0 0
  SETTABLEKS R25 R24 K33 ["Adornments"]
  LOADNIL R25
  SETTABLEKS R25 R24 K34 ["DebugDataConnection"]
  LOADNIL R25
  SETTABLEKS R25 R24 K35 ["DebugDataEvent"]
  LOADNIL R25
  SETTABLEKS R25 R24 K36 ["DebugPoseEvent"]
  DUPTABLE R25 K50 [{"layerDetails", "props", "state", "watches"}]
  LOADB R26 1
  SETTABLEKS R26 R25 K46 ["layerDetails"]
  LOADB R26 1
  SETTABLEKS R26 R25 K47 ["props"]
  LOADB R26 1
  SETTABLEKS R26 R25 K48 ["state"]
  LOADB R26 1
  SETTABLEKS R26 R25 K49 ["watches"]
  SETTABLEKS R25 R24 K37 ["ExpandedSections"]
  NEWTABLE R25 0 0
  SETTABLEKS R25 R24 K38 ["HistoryField"]
  LOADNIL R25
  SETTABLEKS R25 R24 K39 ["HistoryOffset"]
  LOADNIL R25
  SETTABLEKS R25 R24 K40 ["LayerAdornmentEvent"]
  DUPTABLE R25 K52 [{"CrossFade"}]
  LOADB R26 1
  SETTABLEKS R26 R25 K51 ["CrossFade"]
  SETTABLEKS R25 R24 K41 ["LayerFilters"]
  LOADNIL R25
  SETTABLEKS R25 R24 K42 ["PropertyOverrideEvent"]
  LOADNIL R25
  SETTABLEKS R25 R24 K43 ["SelectedLayer"]
  LOADB R25 0
  SETTABLEKS R25 R24 K44 ["SendPayloadAnalytics"]
  NEWTABLE R25 16 0
  GETTABLEKS R26 R8 K53 ["name"]
  DUPCLOSURE R27 K54 [PROTO_0]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R11 K53 ["name"]
  DUPCLOSURE R27 K55 [PROTO_1]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R20 K53 ["name"]
  DUPCLOSURE R27 K56 [PROTO_2]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R14 K53 ["name"]
  DUPCLOSURE R27 K57 [PROTO_3]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R15 K53 ["name"]
  DUPCLOSURE R27 K58 [PROTO_4]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R16 K53 ["name"]
  DUPCLOSURE R27 K59 [PROTO_5]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R18 K53 ["name"]
  DUPCLOSURE R27 K60 [PROTO_6]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R9 K53 ["name"]
  DUPCLOSURE R27 K61 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R12 K53 ["name"]
  DUPCLOSURE R27 K62 [PROTO_8]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R19 K53 ["name"]
  DUPCLOSURE R27 K63 [PROTO_9]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R13 K53 ["name"]
  DUPCLOSURE R27 K64 [PROTO_10]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R10 K53 ["name"]
  DUPCLOSURE R27 K65 [PROTO_11]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R17 K53 ["name"]
  DUPCLOSURE R27 K66 [PROTO_12]
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  CALL R23 2 1
  RETURN R23 1
