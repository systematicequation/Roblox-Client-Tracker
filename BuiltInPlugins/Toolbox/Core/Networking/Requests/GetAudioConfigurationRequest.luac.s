PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETIMPORT R4 K3 [Enum.AssetType.Audio]
  GETTABLEKS R5 R0 K4 ["responseBody"]
  CALL R3 2 -1
  NAMECALL R1 R1 K5 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Could not get home configuration for audio"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["getAudioConfiguration"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K1 ["andThen"]
  CALL R1 2 1
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  NAMECALL R1 R1 K2 ["catch"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["getAudioConfigurationRequest has been marked for removal by FFlagRemoveUseNewSwimlanes"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagRemoveUseNewSwimlanes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Core"]
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETTABLEKS R4 R5 K12 ["NetworkError"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Core"]
  GETTABLEKS R6 R7 K11 ["Actions"]
  GETTABLEKS R5 R6 K13 ["SetHomeConfiguration"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R5 1
