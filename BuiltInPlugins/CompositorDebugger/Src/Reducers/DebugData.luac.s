PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"DebugData", "LayerMap"}]
  GETTABLEKS R5 R1 K3 ["debugData"]
  SETTABLEKS R5 R4 K0 ["DebugData"]
  GETTABLEKS R5 R1 K4 ["layerMap"]
  SETTABLEKS R5 R4 K1 ["LayerMap"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Overrides"}]
  GETTABLEKS R5 R1 K2 ["overrides"]
  SETTABLEKS R5 R4 K0 ["Overrides"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"History", "WriteIndex"}]
  GETTABLEKS R5 R1 K3 ["history"]
  SETTABLEKS R5 R4 K0 ["History"]
  GETTABLEKS R5 R1 K4 ["writeIndex"]
  SETTABLEKS R5 R4 K1 ["WriteIndex"]
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
  GETTABLEKS R9 R7 K15 ["SetDebugData"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K16 ["SetOverrides"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K17 ["SetHistory"]
  CALL R10 1 1
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K18 ["Util"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R11 K19 ["debugFlags"]
  CALL R12 1 1
  DUPTABLE R13 K23 [{"id", "name", "children"}]
  LOADK R14 K24 ["{F9335871-7386-4AFA-B6B3-CF1A4FDB2BFE}"]
  SETTABLEKS R14 R13 K20 ["id"]
  LOADK R14 K25 ["Mock Compositor 1"]
  SETTABLEKS R14 R13 K21 ["name"]
  NEWTABLE R14 0 1
  DUPTABLE R15 K28 [{"children", "className", "id", "props"}]
  NEWTABLE R16 0 2
  DUPTABLE R17 K30 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R18 0 3
  DUPTABLE R19 K30 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R20 0 0
  SETTABLEKS R20 R19 K22 ["children"]
  LOADK R20 K31 ["RestPose"]
  SETTABLEKS R20 R19 K26 ["className"]
  LOADK R20 K32 ["Debug B"]
  SETTABLEKS R20 R19 K21 ["name"]
  LOADK R20 K33 ["{20BFB42C-2D06-4E75-868D-0DA9AF1CBEB4}"]
  SETTABLEKS R20 R19 K20 ["id"]
  NEWTABLE R20 0 0
  SETTABLEKS R20 R19 K27 ["props"]
  LOADK R20 K34 [0.5]
  SETTABLEKS R20 R19 K29 ["weight"]
  DUPTABLE R20 K36 [{"children", "className", "name", "id", "props", "state", "weight"}]
  NEWTABLE R21 0 0
  SETTABLEKS R21 R20 K22 ["children"]
  LOADK R21 K37 ["ClipLayer"]
  SETTABLEKS R21 R20 K26 ["className"]
  LOADK R21 K38 ["Debug C"]
  SETTABLEKS R21 R20 K21 ["name"]
  LOADK R21 K39 ["{E577542C-2F20-4F2E-836B-0E5BC148CBE6}"]
  SETTABLEKS R21 R20 K20 ["id"]
  DUPTABLE R21 K43 [{"animationId", "isLooping", "speed"}]
  LOADK R22 K44 ["rbxassetid://10921541949"]
  SETTABLEKS R22 R21 K40 ["animationId"]
  LOADB R22 1
  SETTABLEKS R22 R21 K41 ["isLooping"]
  LOADN R22 1
  SETTABLEKS R22 R21 K42 ["speed"]
  SETTABLEKS R21 R20 K27 ["props"]
  DUPTABLE R21 K47 [{"timePosition", "length"}]
  LOADN R22 0
  SETTABLEKS R22 R21 K45 ["timePosition"]
  LOADN R22 5
  SETTABLEKS R22 R21 K46 ["length"]
  SETTABLEKS R21 R20 K35 ["state"]
  LOADK R21 K48 [0.3]
  SETTABLEKS R21 R20 K29 ["weight"]
  DUPTABLE R21 K49 [{"children", "className", "name", "id", "props", "state"}]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K22 ["children"]
  LOADK R22 K37 ["ClipLayer"]
  SETTABLEKS R22 R21 K26 ["className"]
  LOADK R22 K50 ["Debug D"]
  SETTABLEKS R22 R21 K21 ["name"]
  LOADK R22 K51 ["{2321A81C-9EB4-4017-A496-87F0570B99F9}"]
  SETTABLEKS R22 R21 K20 ["id"]
  DUPTABLE R22 K43 [{"animationId", "isLooping", "speed"}]
  LOADK R23 K52 ["rbxassetid://10899968825"]
  SETTABLEKS R23 R22 K40 ["animationId"]
  LOADB R23 1
  SETTABLEKS R23 R22 K41 ["isLooping"]
  LOADN R23 1
  SETTABLEKS R23 R22 K42 ["speed"]
  SETTABLEKS R22 R21 K27 ["props"]
  DUPTABLE R22 K47 [{"timePosition", "length"}]
  LOADN R23 2
  SETTABLEKS R23 R22 K45 ["timePosition"]
  LOADN R23 4
  SETTABLEKS R23 R22 K46 ["length"]
  SETTABLEKS R22 R21 K35 ["state"]
  SETLIST R18 R19 3 [1]
  SETTABLEKS R18 R17 K22 ["children"]
  LOADK R18 K53 ["Blend1D"]
  SETTABLEKS R18 R17 K26 ["className"]
  LOADK R18 K54 ["Debug A"]
  SETTABLEKS R18 R17 K21 ["name"]
  LOADK R18 K55 ["{275F34E0-57F4-4354-BC5A-38518EF2EB37}"]
  SETTABLEKS R18 R17 K20 ["id"]
  DUPTABLE R18 K57 [{"currentPos", "speed"}]
  LOADN R19 0
  SETTABLEKS R19 R18 K56 ["currentPos"]
  LOADN R19 1
  SETTABLEKS R19 R18 K42 ["speed"]
  SETTABLEKS R18 R17 K27 ["props"]
  LOADN R18 1
  SETTABLEKS R18 R17 K29 ["weight"]
  DUPTABLE R18 K30 [{"children", "className", "name", "id", "props", "weight"}]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K22 ["children"]
  LOADK R19 K37 ["ClipLayer"]
  SETTABLEKS R19 R18 K26 ["className"]
  LOADK R19 K58 ["Debug E"]
  SETTABLEKS R19 R18 K21 ["name"]
  LOADK R19 K59 ["{B1A616DC-DBA5-4E75-ACFC-D073FBBF921F}"]
  SETTABLEKS R19 R18 K20 ["id"]
  DUPTABLE R19 K43 [{"animationId", "isLooping", "speed"}]
  LOADK R20 K60 ["rbxassetid://10921258489"]
  SETTABLEKS R20 R19 K40 ["animationId"]
  LOADB R20 1
  SETTABLEKS R20 R19 K41 ["isLooping"]
  LOADN R20 1
  SETTABLEKS R20 R19 K42 ["speed"]
  SETTABLEKS R19 R18 K27 ["props"]
  LOADN R19 0
  SETTABLEKS R19 R18 K29 ["weight"]
  SETLIST R16 R17 2 [1]
  SETTABLEKS R16 R15 K22 ["children"]
  LOADK R16 K61 ["SelectLayer"]
  SETTABLEKS R16 R15 K26 ["className"]
  LOADK R16 K62 ["{6F4A739B-8775-4B8E-9A89-1DBD43E9A4EF}"]
  SETTABLEKS R16 R15 K20 ["id"]
  DUPTABLE R16 K66 [{"fadeInTimeSeconds", "fadeOutTimeSeconds", "selection"}]
  LOADK R17 K67 [0.2]
  SETTABLEKS R17 R16 K63 ["fadeInTimeSeconds"]
  LOADK R17 K67 [0.2]
  SETTABLEKS R17 R16 K64 ["fadeOutTimeSeconds"]
  LOADK R17 K68 ["Idle"]
  SETTABLEKS R17 R16 K65 ["selection"]
  SETTABLEKS R16 R15 K27 ["props"]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K22 ["children"]
  DUPTABLE R14 K23 [{"id", "name", "children"}]
  LOADK R15 K69 ["{CF1A4FDB-7386-4AFA-B6B3-2BFEF9335871}"]
  SETTABLEKS R15 R14 K20 ["id"]
  LOADK R15 K70 ["Mock Compositor 2"]
  SETTABLEKS R15 R14 K21 ["name"]
  NEWTABLE R15 0 1
  DUPTABLE R16 K71 [{"children", "className", "name", "id", "props"}]
  NEWTABLE R17 0 1
  DUPTABLE R18 K73 [{"children", "className", "id", "name", "props", "state", "data"}]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K22 ["children"]
  LOADK R19 K37 ["ClipLayer"]
  SETTABLEKS R19 R18 K26 ["className"]
  LOADK R19 K74 ["{4017A81C-9EB4-4017-A496-87F0570B99F9}"]
  SETTABLEKS R19 R18 K20 ["id"]
  LOADK R19 K75 ["My Layer"]
  SETTABLEKS R19 R18 K21 ["name"]
  DUPTABLE R19 K43 [{"animationId", "isLooping", "speed"}]
  LOADK R20 K52 ["rbxassetid://10899968825"]
  SETTABLEKS R20 R19 K40 ["animationId"]
  LOADB R20 1
  SETTABLEKS R20 R19 K41 ["isLooping"]
  LOADN R20 1
  SETTABLEKS R20 R19 K42 ["speed"]
  SETTABLEKS R19 R18 K27 ["props"]
  DUPTABLE R19 K76 [{"length", "timePosition"}]
  LOADN R20 4
  SETTABLEKS R20 R19 K46 ["length"]
  LOADN R20 2
  SETTABLEKS R20 R19 K45 ["timePosition"]
  SETTABLEKS R19 R18 K35 ["state"]
  NEWTABLE R19 2 0
  DUPCLOSURE R20 K77 [PROTO_0]
  SETTABLEKS R20 R19 K78 ["function"]
  NEWTABLE R20 0 0
  SETTABLEKS R20 R19 K79 ["table"]
  SETTABLEKS R19 R18 K72 ["data"]
  SETLIST R17 R18 1 [1]
  SETTABLEKS R17 R16 K22 ["children"]
  LOADK R17 K37 ["ClipLayer"]
  SETTABLEKS R17 R16 K26 ["className"]
  LOADK R17 K80 ["Debug F"]
  SETTABLEKS R17 R16 K21 ["name"]
  LOADK R17 K81 ["{43E9A4EF-8775-4B8E-9A89-1DBD6F4A739B}"]
  SETTABLEKS R17 R16 K20 ["id"]
  DUPTABLE R17 K43 [{"animationId", "isLooping", "speed"}]
  LOADK R18 K60 ["rbxassetid://10921258489"]
  SETTABLEKS R18 R17 K40 ["animationId"]
  LOADB R18 1
  SETTABLEKS R18 R17 K41 ["isLooping"]
  LOADN R18 1
  SETTABLEKS R18 R17 K42 ["speed"]
  SETTABLEKS R17 R16 K27 ["props"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K22 ["children"]
  NEWTABLE R15 16 0
  SETTABLEKS R13 R15 K24 ["{F9335871-7386-4AFA-B6B3-CF1A4FDB2BFE}"]
  GETTABLEKS R17 R13 K22 ["children"]
  GETTABLEN R16 R17 1
  SETTABLEKS R16 R15 K62 ["{6F4A739B-8775-4B8E-9A89-1DBD43E9A4EF}"]
  GETTABLEKS R19 R13 K22 ["children"]
  GETTABLEN R18 R19 1
  GETTABLEKS R17 R18 K22 ["children"]
  GETTABLEN R16 R17 1
  SETTABLEKS R16 R15 K55 ["{275F34E0-57F4-4354-BC5A-38518EF2EB37}"]
  GETTABLEKS R21 R13 K22 ["children"]
  GETTABLEN R20 R21 1
  GETTABLEKS R19 R20 K22 ["children"]
  GETTABLEN R18 R19 1
  GETTABLEKS R17 R18 K22 ["children"]
  GETTABLEN R16 R17 1
  SETTABLEKS R16 R15 K33 ["{20BFB42C-2D06-4E75-868D-0DA9AF1CBEB4}"]
  GETTABLEKS R21 R13 K22 ["children"]
  GETTABLEN R20 R21 1
  GETTABLEKS R19 R20 K22 ["children"]
  GETTABLEN R18 R19 1
  GETTABLEKS R17 R18 K22 ["children"]
  GETTABLEN R16 R17 2
  SETTABLEKS R16 R15 K39 ["{E577542C-2F20-4F2E-836B-0E5BC148CBE6}"]
  GETTABLEKS R21 R13 K22 ["children"]
  GETTABLEN R20 R21 1
  GETTABLEKS R19 R20 K22 ["children"]
  GETTABLEN R18 R19 1
  GETTABLEKS R17 R18 K22 ["children"]
  GETTABLEN R16 R17 3
  SETTABLEKS R16 R15 K51 ["{2321A81C-9EB4-4017-A496-87F0570B99F9}"]
  GETTABLEKS R19 R13 K22 ["children"]
  GETTABLEN R18 R19 1
  GETTABLEKS R17 R18 K22 ["children"]
  GETTABLEN R16 R17 2
  SETTABLEKS R16 R15 K59 ["{B1A616DC-DBA5-4E75-ACFC-D073FBBF921F}"]
  SETTABLEKS R14 R15 K69 ["{CF1A4FDB-7386-4AFA-B6B3-2BFEF9335871}"]
  GETTABLEKS R17 R14 K22 ["children"]
  GETTABLEN R16 R17 1
  SETTABLEKS R16 R15 K81 ["{43E9A4EF-8775-4B8E-9A89-1DBD6F4A739B}"]
  GETTABLEKS R19 R14 K22 ["children"]
  GETTABLEN R18 R19 1
  GETTABLEKS R17 R18 K22 ["children"]
  GETTABLEN R16 R17 1
  SETTABLEKS R16 R15 K74 ["{4017A81C-9EB4-4017-A496-87F0570B99F9}"]
  GETTABLEKS R16 R1 K82 ["createReducer"]
  DUPTABLE R17 K89 [{"History", "WriteIndex", "ReadOffset", "DebugData", "LayerMap", "Overrides"}]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K83 ["History"]
  LOADN R18 1
  SETTABLEKS R18 R17 K84 ["WriteIndex"]
  LOADNIL R18
  SETTABLEKS R18 R17 K85 ["ReadOffset"]
  GETTABLEKS R19 R12 K90 ["UseMockData"]
  JUMPIFNOT R19 [+2]
  MOVE R18 R13
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K86 ["DebugData"]
  GETTABLEKS R19 R12 K90 ["UseMockData"]
  JUMPIFNOT R19 [+2]
  MOVE R18 R15
  JUMP [+2]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K87 ["LayerMap"]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K88 ["Overrides"]
  NEWTABLE R18 4 0
  GETTABLEKS R19 R8 K21 ["name"]
  DUPCLOSURE R20 K91 [PROTO_1]
  CAPTURE VAL R4
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K21 ["name"]
  DUPCLOSURE R20 K92 [PROTO_2]
  CAPTURE VAL R4
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R10 K21 ["name"]
  DUPCLOSURE R20 K93 [PROTO_3]
  CAPTURE VAL R4
  SETTABLE R20 R18 R19
  CALL R16 2 1
  RETURN R16 1
