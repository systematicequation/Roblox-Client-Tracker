PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["createElement"]
  GETUPVAL R1 2
  DUPTABLE R2 K5 [{"Plugin"}]
  GETIMPORT R3 K1 [plugin]
  SETTABLEKS R3 R2 K4 ["Plugin"]
  CALL R0 2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["mount"]
  MOVE R2 R0
  CALL R1 1 1
  SETUPVAL R1 3
  GETUPVAL R1 4
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 4
  LOADK R3 K7 ["Roact tree"]
  GETUPVAL R4 3
  NAMECALL R1 R1 K8 ["addRoactTree"]
  CALL R1 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R1 1
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [require]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Packages"]
  GETTABLEKS R1 R2 K3 ["Roact"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Packages"]
  GETTABLEKS R2 R3 K4 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["MainPlugin"]
  CALL R2 1 1
  GETUPVAL R3 1
  JUMPIFNOT R3 [+11]
  GETTABLEKS R4 R1 K7 ["DeveloperTools"]
  GETTABLEKS R3 R4 K8 ["forPlugin"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["Name"]
  GETIMPORT R5 K11 [plugin]
  CALL R3 2 1
  SETUPVAL R3 2
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  GETIMPORT R5 K11 [plugin]
  GETTABLEKS R4 R5 K12 ["Unloading"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NAMECALL R4 R4 K13 ["Connect"]
  CALL R4 2 0
  MOVE R4 R3
  CALL R4 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R1 1
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 0
  GETIMPORT R1 K2 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["Packages"]
  GETTABLEKS R2 R3 K4 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K2 [require]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["MainPlugin"]
  CALL R2 1 1
  GETIMPORT R3 K8 [plugin]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["Name"]
  SETTABLEKS R4 R3 K9 ["Name"]
  GETTABLEKS R3 R1 K10 ["createElement"]
  MOVE R4 R2
  DUPTABLE R5 K13 [{"Plugin", "InitialEditorInstanceRequest"}]
  GETIMPORT R6 K8 [plugin]
  SETTABLEKS R6 R5 K11 ["Plugin"]
  SETTABLEKS R0 R5 K12 ["InitialEditorInstanceRequest"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K14 ["mount"]
  MOVE R5 R3
  CALL R4 1 1
  SETUPVAL R4 2
  GETUPVAL R4 3
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 3
  LOADK R6 K15 ["Roact tree"]
  GETUPVAL R7 2
  NAMECALL R4 R4 K16 ["addRoactTree"]
  CALL R4 3 0
  GETIMPORT R5 K8 [plugin]
  GETTABLEKS R4 R5 K17 ["Unloading"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  NAMECALL R4 R4 K18 ["Connect"]
  CALL R4 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [require]
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K7 ["defineFlags"]
  CALL R0 1 0
  GETIMPORT R0 K9 [game]
  LOADK R2 K10 ["9SliceEditorShorterLoadTime"]
  NAMECALL R0 R0 K11 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K13 [pcall]
  DUPCLOSURE R2 K14 [PROTO_0]
  CALL R1 1 2
  JUMPIF R1 [+1]
  LOADB R2 0
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETIMPORT R4 K3 [require]
  GETTABLEKS R7 R3 K15 ["Src"]
  GETTABLEKS R6 R7 K16 ["Util"]
  GETTABLEKS R5 R6 K17 ["DebugFlags"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K18 ["RunningUnderCLI"]
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  CLOSEUPVALS R2
  RETURN R0 0
  GETIMPORT R5 K3 [require]
  GETIMPORT R8 K5 [script]
  GETTABLEKS R7 R8 K6 ["Parent"]
  GETTABLEKS R6 R7 K19 ["commonInit"]
  CALL R5 1 1
  MOVE R6 R5
  CALL R6 0 0
  LOADNIL R6
  LOADNIL R7
  NEWCLOSURE R8 P1
  CAPTURE VAL R3
  CAPTURE REF R2
  CAPTURE REF R6
  CAPTURE REF R7
  JUMPIFNOT R0 [+53]
  GETIMPORT R10 K1 [plugin]
  GETTABLEKS R9 R10 K20 ["HostDataModelType"]
  GETIMPORT R10 K24 [Enum.StudioDataModelType.Edit]
  JUMPIFEQ R9 R10 [+3]
  CLOSEUPVALS R2
  RETURN R0 0
  JUMPIFNOT R2 [+21]
  GETTABLEKS R9 R4 K25 ["EnableDeveloperTools"]
  CALL R9 0 1
  JUMPIFNOT R9 [+17]
  GETIMPORT R9 K3 [require]
  GETTABLEKS R11 R3 K26 ["Packages"]
  GETTABLEKS R10 R11 K27 ["Framework"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K28 ["DeveloperTools"]
  GETTABLEKS R10 R11 K29 ["forPlugin"]
  GETTABLEKS R11 R3 K30 ["Name"]
  GETIMPORT R12 K1 [plugin]
  CALL R10 2 1
  MOVE R6 R10
  LOADNIL R9
  NEWCLOSURE R10 P2
  CAPTURE REF R9
  CAPTURE VAL R3
  CAPTURE REF R7
  CAPTURE REF R6
  GETIMPORT R11 K9 [game]
  LOADK R13 K31 ["GuiService"]
  NAMECALL R11 R11 K32 ["GetService"]
  CALL R11 2 1
  GETTABLEKS R12 R11 K33 ["Open9SliceEditor"]
  MOVE R14 R10
  NAMECALL R12 R12 K34 ["Connect"]
  CALL R12 2 1
  MOVE R9 R12
  CLOSEUPVALS R9
  JUMP [+2]
  MOVE R9 R8
  CALL R9 0 0
  CLOSEUPVALS R2
  RETURN R0 0
