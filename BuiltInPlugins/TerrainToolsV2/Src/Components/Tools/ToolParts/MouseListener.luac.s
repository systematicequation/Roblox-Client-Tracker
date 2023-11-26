PROTO_0:
  GETUPVAL R0 0
  GETIMPORT R2 K3 [Enum.KeyCode.LeftAlt]
  NAMECALL R0 R0 K4 ["IsKeyDown"]
  CALL R0 2 1
  JUMPIF R0 [+6]
  GETUPVAL R0 0
  GETIMPORT R2 K6 [Enum.KeyCode.RightAlt]
  NAMECALL R0 R0 K4 ["IsKeyDown"]
  CALL R0 2 1
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  GETIMPORT R2 K3 [Enum.KeyCode.LeftShift]
  NAMECALL R0 R0 K4 ["IsKeyDown"]
  CALL R0 2 1
  JUMPIF R0 [+6]
  GETUPVAL R0 0
  GETIMPORT R2 K6 [Enum.KeyCode.RightShift]
  NAMECALL R0 R0 K4 ["IsKeyDown"]
  CALL R0 2 1
  RETURN R0 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Mouse"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["_mouse"]
  GETTABLEKS R3 R0 K3 ["_mouse"]
  GETTABLEKS R2 R3 K4 ["UnitRay"]
  GETTABLEKS R1 R2 K5 ["Direction"]
  GETTABLEKS R4 R0 K3 ["_mouse"]
  GETTABLEKS R3 R4 K6 ["Origin"]
  GETTABLEKS R2 R3 K7 ["p"]
  LOADNIL R3
  LOADNIL R4
  GETUPVAL R5 0
  MOVE R7 R2
  MULK R8 R1 K8 [10000]
  GETTABLEKS R9 R0 K9 ["_raycastParams"]
  NAMECALL R5 R5 K10 ["Raycast"]
  CALL R5 4 1
  JUMPIFNOT R5 [+4]
  GETTABLEKS R3 R5 K11 ["Instance"]
  GETTABLEKS R4 R5 K12 ["Material"]
  JUMPIFNOT R3 [+53]
  LOADK R8 K13 ["Terrain"]
  NAMECALL R6 R3 K14 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+48]
  GETUPVAL R6 1
  GETIMPORT R8 K18 [Enum.KeyCode.LeftShift]
  NAMECALL R6 R6 K19 ["IsKeyDown"]
  CALL R6 2 1
  JUMPIF R6 [+6]
  GETUPVAL R6 1
  GETIMPORT R8 K21 [Enum.KeyCode.RightShift]
  NAMECALL R6 R6 K19 ["IsKeyDown"]
  CALL R6 2 1
  JUMPIF R6 [+23]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K22 ["dispatchSetMaterial"]
  JUMPIFNOT R6 [+6]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K22 ["dispatchSetMaterial"]
  MOVE R7 R4
  CALL R6 1 0
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K23 ["dispatchSetSourceMaterial"]
  JUMPIFNOT R6 [+18]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K23 ["dispatchSetSourceMaterial"]
  MOVE R7 R4
  CALL R6 1 0
  RETURN R0 0
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K24 ["dispatchSetTargetMaterial"]
  JUMPIFNOT R6 [+6]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K24 ["dispatchSetTargetMaterial"]
  MOVE R7 R4
  CALL R6 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+20]
  JUMPIF R1 [+18]
  GETUPVAL R2 0
  GETIMPORT R4 K6 [Enum.KeyCode.LeftAlt]
  NAMECALL R2 R2 K7 ["IsKeyDown"]
  CALL R2 2 1
  JUMPIF R2 [+6]
  GETUPVAL R2 0
  GETIMPORT R4 K9 [Enum.KeyCode.RightAlt]
  NAMECALL R2 R2 K7 ["IsKeyDown"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 1
  NAMECALL R3 R3 K10 ["pickMaterial"]
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onInputBegan"]
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K2 [RaycastParams.new]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["_raycastParams"]
  GETTABLEKS R1 R0 K3 ["_raycastParams"]
  GETIMPORT R2 K7 [Enum.RaycastFilterType.Whitelist]
  SETTABLEKS R2 R1 K8 ["FilterType"]
  GETTABLEKS R1 R0 K3 ["_raycastParams"]
  LOADB R2 1
  SETTABLEKS R2 R1 K9 ["BruteForceAllSlow"]
  GETTABLEKS R1 R0 K3 ["_raycastParams"]
  NEWTABLE R2 0 1
  GETTABLEKS R4 R0 K10 ["props"]
  GETTABLEKS R3 R4 K11 ["Terrain"]
  NAMECALL R3 R3 K12 ["get"]
  CALL R3 1 -1
  SETLIST R2 R3 4294967295 [1]
  SETTABLEKS R2 R1 K13 ["FilterDescendantsInstances"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K14 ["InputBegan"]
  GETTABLEKS R3 R0 K15 ["onInputBegan"]
  NAMECALL R1 R1 K16 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K17 ["_onInputBeganConnection"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_onInputBeganConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_onInputBeganConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_onInputBeganConnection"]
  RETURN R0 0

PROTO_7:
  LOADNIL R1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["ContextItems"]
  CALL R5 1 1
  GETIMPORT R6 K13 [game]
  LOADK R8 K14 ["UserInputService"]
  NAMECALL R6 R6 K15 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K13 [game]
  LOADK R9 K16 ["Workspace"]
  NAMECALL R7 R7 K15 ["GetService"]
  CALL R7 2 1
  GETTABLEKS R8 R2 K17 ["PureComponent"]
  LOADK R10 K18 ["MouseListener"]
  NAMECALL R8 R8 K19 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K20 [PROTO_0]
  CAPTURE VAL R6
  DUPCLOSURE R10 K21 [PROTO_1]
  CAPTURE VAL R6
  DUPCLOSURE R11 K22 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R11 R8 K23 ["pickMaterial"]
  DUPCLOSURE R11 K24 [PROTO_4]
  CAPTURE VAL R6
  SETTABLEKS R11 R8 K25 ["init"]
  DUPCLOSURE R11 K26 [PROTO_5]
  CAPTURE VAL R6
  SETTABLEKS R11 R8 K27 ["didMount"]
  DUPCLOSURE R11 K28 [PROTO_6]
  SETTABLEKS R11 R8 K29 ["willUnmount"]
  DUPCLOSURE R11 K30 [PROTO_7]
  SETTABLEKS R11 R8 K31 ["render"]
  MOVE R11 R4
  DUPTABLE R12 K34 [{"Mouse", "Terrain"}]
  GETTABLEKS R13 R3 K32 ["Mouse"]
  SETTABLEKS R13 R12 K32 ["Mouse"]
  GETTABLEKS R13 R5 K33 ["Terrain"]
  SETTABLEKS R13 R12 K33 ["Terrain"]
  CALL R11 1 1
  MOVE R12 R8
  CALL R11 1 1
  MOVE R8 R11
  RETURN R8 1
