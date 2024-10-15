PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R0 R3 K0 ["EDITING_TOOLS_GUI_NAMES"]
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETUPVAL R5 1
  MOVE R7 R4
  NAMECALL R5 R5 K1 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFEQKNIL R5 [+4]
  NAMECALL R6 R5 K2 ["Destroy"]
  CALL R6 1 0
  FORGLOOP R0 2 [-11]
  GETUPVAL R0 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["CLONED_DUMMY_NAME"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFEQKNIL R0 [+4]
  NAMECALL R1 R0 K2 ["Destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 2
  CALL R0 0 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K3 ["createElement"]
  GETUPVAL R1 4
  DUPTABLE R2 K5 [{"Plugin"}]
  GETIMPORT R3 K1 [plugin]
  SETTABLEKS R3 R2 K4 ["Plugin"]
  CALL R0 2 1
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K6 ["createRoot"]
  GETIMPORT R2 K9 [Instance.new]
  LOADK R3 K10 ["Frame"]
  CALL R2 1 -1
  CALL R1 -1 1
  SETUPVAL R1 5
  GETUPVAL R1 5
  MOVE R3 R0
  NAMECALL R1 R1 K11 ["render"]
  CALL R1 2 0
  GETUPVAL R1 7
  NAMECALL R1 R1 K12 ["IsRunning"]
  CALL R1 1 1
  JUMPIF R1 [+4]
  GETUPVAL R2 8
  GETTABLEKS R1 R2 K13 ["reset"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 0
  LOADNIL R2
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 2 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 2
  CALL R0 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RunService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["TestService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["Workspace"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [plugin]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETIMPORT R6 K10 [script]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETIMPORT R5 K13 [pcall]
  DUPCLOSURE R6 K14 [PROTO_0]
  CALL R5 1 2
  JUMPIFNOT R5 [+119]
  GETIMPORT R7 K1 [game]
  LOADK R9 K15 ["DebugAvatarPreviewerRunTests"]
  LOADB R10 0
  NAMECALL R7 R7 K16 ["DefineFastFlag"]
  CALL R7 3 1
  JUMPIF R7 [+9]
  GETIMPORT R7 K18 [print]
  LOADK R8 K19 ["Avatar Previewer tests are currently disabled. If you are running locally, override DebugAvatarPreviewerRunTests=True"]
  CALL R7 1 0
  LOADN R9 0
  NAMECALL R7 R6 K20 ["ExitAsync"]
  CALL R7 2 0
  RETURN R0 0
  GETIMPORT R8 K22 [require]
  GETTABLEKS R11 R4 K23 ["Packages"]
  GETTABLEKS R10 R11 K24 ["Dev"]
  GETTABLEKS R9 R10 K25 ["Jest"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K26 ["runCLI"]
  GETIMPORT R8 K28 [_G]
  LOADB R9 1
  SETTABLEKS R9 R8 K29 ["__ROACT_17_MOCK_SCHEDULER__"]
  GETIMPORT R8 K28 [_G]
  LOADB R9 1
  SETTABLEKS R9 R8 K30 ["__ROACT_17_INLINE_ACT__"]
  GETIMPORT R8 K1 [game]
  LOADK R10 K31 ["DebugAvatarPreviewerUpdateSnapshots"]
  LOADB R11 0
  NAMECALL R8 R8 K16 ["DefineFastFlag"]
  CALL R8 3 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K32 ["DebugAvatarPreviewerTestPathPattern"]
  LOADK R12 K33 [""]
  NAMECALL R9 R9 K34 ["DefineFastString"]
  CALL R9 3 1
  MOVE R10 R7
  GETTABLEKS R11 R4 K35 ["Src"]
  DUPTABLE R12 K40 [{"verbose", "ci", "updateSnapshot", "testPathPattern"}]
  LOADB R13 1
  SETTABLEKS R13 R12 K36 ["verbose"]
  LOADB R13 1
  SETTABLEKS R13 R12 K37 ["ci"]
  SETTABLEKS R8 R12 K38 ["updateSnapshot"]
  JUMPIFNOTEQKS R9 K33 [""] [+3]
  LOADNIL R13
  JUMP [+1]
  MOVE R13 R9
  SETTABLEKS R13 R12 K39 ["testPathPattern"]
  NEWTABLE R13 0 2
  GETTABLEKS R14 R4 K35 ["Src"]
  GETTABLEKS R15 R4 K41 ["RhodiumTests"]
  SETLIST R13 R14 2 [1]
  CALL R10 3 1
  NAMECALL R10 R10 K42 ["awaitStatus"]
  CALL R10 1 2
  JUMPIFNOTEQKS R10 K43 ["Resolved"] [+15]
  GETTABLEKS R13 R11 K44 ["results"]
  GETTABLEKS R12 R13 K45 ["numFailedTestSuites"]
  LOADN R13 0
  JUMPIFLT R13 R12 [+8]
  GETTABLEKS R13 R11 K44 ["results"]
  GETTABLEKS R12 R13 K46 ["numFailedTests"]
  LOADN R13 0
  JUMPIFNOTLT R13 R12 [+16]
  JUMPIFNOTEQKS R10 K47 ["Rejected"] [+5]
  GETIMPORT R12 K18 [print]
  MOVE R13 R11
  CALL R12 1 0
  LOADK R14 K48 ["Jest 3 test run failed"]
  NAMECALL R12 R2 K49 ["Error"]
  CALL R12 2 0
  LOADN R14 1
  NAMECALL R12 R6 K20 ["ExitAsync"]
  CALL R12 2 0
  RETURN R0 0
  LOADN R14 0
  NAMECALL R12 R6 K20 ["ExitAsync"]
  CALL R12 2 0
  RETURN R0 0
  GETIMPORT R7 K22 [require]
  GETTABLEKS R9 R4 K23 ["Packages"]
  GETTABLEKS R8 R9 K50 ["React"]
  CALL R7 1 1
  GETIMPORT R8 K22 [require]
  GETTABLEKS R10 R4 K23 ["Packages"]
  GETTABLEKS R9 R10 K51 ["ReactRoblox"]
  CALL R8 1 1
  GETIMPORT R9 K22 [require]
  GETTABLEKS R12 R4 K35 ["Src"]
  GETTABLEKS R11 R12 K52 ["Util"]
  GETTABLEKS R10 R11 K53 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K22 [require]
  GETTABLEKS R12 R4 K35 ["Src"]
  GETTABLEKS R11 R12 K54 ["MainPlugin"]
  CALL R10 1 1
  GETIMPORT R11 K22 [require]
  GETTABLEKS R14 R4 K35 ["Src"]
  GETTABLEKS R13 R14 K52 ["Util"]
  GETTABLEKS R12 R13 K55 ["TestInExperienceUtil"]
  CALL R11 1 1
  GETIMPORT R12 K22 [require]
  GETTABLEKS R15 R4 K35 ["Src"]
  GETTABLEKS R14 R15 K56 ["Flags"]
  GETTABLEKS R13 R14 K57 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R12 1 1
  DUPCLOSURE R13 K58 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R3
  LOADNIL R14
  NEWCLOSURE R15 P2
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE REF R14
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R11
  GETIMPORT R17 K8 [plugin]
  GETTABLEKS R16 R17 K59 ["Unloading"]
  NEWCLOSURE R18 P3
  CAPTURE REF R14
  CAPTURE VAL R12
  CAPTURE VAL R13
  NAMECALL R16 R16 K60 ["Connect"]
  CALL R16 2 0
  MOVE R16 R15
  CALL R16 0 0
  CLOSEUPVALS R14
  RETURN R0 0
