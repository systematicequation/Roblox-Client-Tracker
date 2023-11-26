PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["IsEdit"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["new"]
  DUPTABLE R1 K5 [{"isInternal"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["isInternal"]
  CALL R0 1 1
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K3 ["new"]
  MOVE R2 R0
  CALL R1 1 1
  SETUPVAL R1 2
  GETUPVAL R1 2
  NAMECALL R1 R1 K6 ["start"]
  CALL R1 1 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K7 ["createElement"]
  GETUPVAL R2 5
  DUPTABLE R3 K10 [{"Plugin", "SoundAssetChecker"}]
  GETIMPORT R4 K1 [plugin]
  SETTABLEKS R4 R3 K8 ["Plugin"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K9 ["SoundAssetChecker"]
  CALL R1 2 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K11 ["mount"]
  MOVE R3 R1
  CALL R2 1 1
  SETUPVAL R2 6
  GETUPVAL R2 7
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 7
  LOADK R4 K12 ["Roact tree"]
  GETUPVAL R5 6
  NAMECALL R2 R2 K13 ["addRoactTree"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R1 2
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 2
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [require]
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K7 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R0 K9 [game]
  LOADK R2 K10 ["AudioDiscoveryLoader"]
  NAMECALL R0 R0 K11 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETIMPORT R1 K9 [game]
  LOADK R3 K12 ["RetireAudioDiscoveryPlugin"]
  NAMECALL R1 R1 K11 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K3 [require]
  GETTABLEKS R4 R1 K13 ["Packages"]
  GETTABLEKS R3 R4 K14 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K16 [pcall]
  DUPCLOSURE R4 K17 [PROTO_0]
  CALL R3 1 2
  GETIMPORT R5 K3 [require]
  GETTABLEKS R8 R1 K18 ["Src"]
  GETTABLEKS R7 R8 K19 ["Util"]
  GETTABLEKS R6 R7 K20 ["DebugFlags"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K21 ["RunningUnderCLI"]
  CALL R6 0 1
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  GETIMPORT R6 K9 [game]
  LOADK R8 K12 ["RetireAudioDiscoveryPlugin"]
  NAMECALL R6 R6 K11 ["GetFastFlag"]
  CALL R6 2 1
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  GETIMPORT R6 K16 [pcall]
  DUPCLOSURE R7 K22 [PROTO_1]
  CALL R6 1 2
  JUMPIFNOT R6 [+1]
  JUMPIF R7 [+16]
  GETIMPORT R8 K1 [plugin]
  LOADK R10 K23 ["Audio Discovery"]
  NAMECALL R8 R8 K24 ["CreateToolbar"]
  CALL R8 2 1
  LOADK R11 K25 ["ViewSounds"]
  LOADK R12 K26 ["View Sounds"]
  LOADK R13 K27 ["rbxlocaltheme://ViewSounds"]
  NAMECALL R9 R8 K28 ["CreateButton"]
  CALL R9 4 1
  LOADB R10 0
  SETTABLEKS R10 R9 K29 ["Enabled"]
  RETURN R0 0
  GETIMPORT R8 K3 [require]
  GETIMPORT R11 K5 [script]
  GETTABLEKS R10 R11 K6 ["Parent"]
  GETTABLEKS R9 R10 K30 ["commonInit"]
  CALL R8 1 1
  MOVE R9 R8
  CALL R9 0 0
  GETIMPORT R9 K3 [require]
  GETTABLEKS R11 R1 K13 ["Packages"]
  GETTABLEKS R10 R11 K31 ["Roact"]
  CALL R9 1 1
  GETTABLEKS R11 R2 K32 ["Http"]
  GETTABLEKS R10 R11 K33 ["Networking"]
  GETIMPORT R11 K3 [require]
  GETTABLEKS R13 R1 K18 ["Src"]
  GETTABLEKS R12 R13 K34 ["MainPlugin"]
  CALL R11 1 1
  GETIMPORT R12 K3 [require]
  GETTABLEKS R15 R1 K18 ["Src"]
  GETTABLEKS R14 R15 K19 ["Util"]
  GETTABLEKS R13 R14 K35 ["SoundAssetChecker"]
  CALL R12 1 1
  LOADNIL R13
  LOADNIL R14
  LOADNIL R15
  JUMPIFNOT R4 [+10]
  GETTABLEKS R17 R2 K36 ["DeveloperTools"]
  GETTABLEKS R16 R17 K37 ["forPlugin"]
  GETTABLEKS R17 R1 K38 ["Name"]
  GETIMPORT R18 K1 [plugin]
  CALL R16 2 1
  MOVE R15 R16
  NEWCLOSURE R16 P2
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE REF R14
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE REF R13
  CAPTURE REF R15
  GETIMPORT R18 K1 [plugin]
  GETTABLEKS R17 R18 K39 ["Unloading"]
  NEWCLOSURE R19 P3
  CAPTURE REF R14
  CAPTURE REF R15
  CAPTURE REF R13
  CAPTURE VAL R9
  NAMECALL R17 R17 K40 ["Connect"]
  CALL R17 2 0
  MOVE R17 R16
  CALL R17 0 0
  CLOSEUPVALS R13
  RETURN R0 0
