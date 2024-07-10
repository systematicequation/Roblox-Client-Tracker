PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADN R2 0
  NAMECALL R0 R0 K4 ["ExitAsync"]
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K5 ["commonInit"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K11 ["RunningUnderCLI"]
  CALL R4 0 1
  JUMPIF R4 [+4]
  GETTABLEKS R4 R2 K12 ["RunTests"]
  CALL R4 0 1
  JUMPIFNOT R4 [+82]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Dev"]
  GETTABLEKS R5 R6 K14 ["TestEZ"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K15 ["TestBootstrap"]
  GETTABLEKS R7 R4 K16 ["Reporters"]
  GETTABLEKS R6 R7 K17 ["TeamCityReporter"]
  GETTABLEKS R8 R4 K16 ["Reporters"]
  GETTABLEKS R7 R8 K18 ["TextReporter"]
  GETIMPORT R10 K21 [_G]
  GETTABLEKS R9 R10 K19 ["TEAMCITY"]
  JUMPIFNOT R9 [+2]
  MOVE R8 R6
  JUMPIF R8 [+1]
  MOVE R8 R7
  GETTABLEKS R9 R0 K6 ["Src"]
  GETIMPORT R10 K23 [print]
  LOADK R12 K24 ["----- All "]
  GETTABLEKS R13 R0 K25 ["Name"]
  LOADK R14 K26 [" Tests ------"]
  CONCAT R11 R12 R14
  CALL R10 1 0
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K27 ["defineFlags"]
  CALL R10 1 0
  NEWTABLE R12 0 1
  MOVE R13 R9
  SETLIST R12 R13 1 [1]
  MOVE R13 R8
  NAMECALL R10 R5 K28 ["run"]
  CALL R10 3 0
  GETIMPORT R10 K23 [print]
  LOADK R11 K29 ["----------------------------------"]
  CALL R10 1 0
  GETTABLEKS R10 R2 K30 ["RunDeveloperFrameworkTests"]
  CALL R10 0 1
  JUMPIFNOT R10 [+19]
  GETIMPORT R10 K23 [print]
  LOADK R11 K31 [""]
  CALL R10 1 0
  GETIMPORT R10 K23 [print]
  LOADK R11 K32 ["----- All DeveloperFramework Tests ------"]
  CALL R10 1 0
  GETTABLEKS R11 R3 K33 ["TestHelpers"]
  GETTABLEKS R10 R11 K34 ["runFrameworkTests"]
  MOVE R11 R4
  MOVE R12 R8
  CALL R10 2 0
  GETIMPORT R10 K23 [print]
  LOADK R11 K29 ["----------------------------------"]
  CALL R10 1 0
  GETTABLEKS R4 R2 K11 ["RunningUnderCLI"]
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETIMPORT R4 K36 [pcall]
  DUPCLOSURE R5 K37 [PROTO_0]
  CALL R4 1 0
  RETURN R0 0
