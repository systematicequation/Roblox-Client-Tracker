PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["MaterialPickerFlags"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R3 1
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  GETUPVAL R1 2
  RETURN R1 1
  GETUPVAL R3 1
  GETTABLE R2 R0 R3
  GETTABLEKS R1 R2 K2 ["Value"]
  RETURN R1 1

PROTO_1:
  ORK R2 R1 K0 [False]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["hasInternalPermission"]
  CALL R3 0 1
  GETTABLEKS R4 R2 K12 ["isCli"]
  CALL R4 0 1
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R0
  DUPTABLE R6 K20 [{"RunningUnderCLI", "RunTests", "LogTestsQuiet", "LogAnalytics", "RunDeveloperFrameworkTests", "EnableRoactConfigs"}]
  ORK R8 R4 K21 [False]
  LOADK R9 K14 ["RunningUnderCLI"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R7 R6 K14 ["RunningUnderCLI"]
  LOADK R8 K15 ["RunTests"]
  LOADB R9 0
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R7 R6 K15 ["RunTests"]
  LOADK R8 K16 ["LogTestsQuiet"]
  LOADB R9 0
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R7 R6 K16 ["LogTestsQuiet"]
  LOADK R8 K17 ["LogAnalytics"]
  LOADB R9 0
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R7 R6 K17 ["LogAnalytics"]
  LOADK R8 K18 ["RunDeveloperFrameworkTests"]
  LOADB R9 0
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R7 R6 K18 ["RunDeveloperFrameworkTests"]
  OR R8 R4 R3
  ORK R9 R8 K21 [False]
  LOADK R10 K19 ["EnableRoactConfigs"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R7 R6 K19 ["EnableRoactConfigs"]
  RETURN R6 1
