PROTO_0:
  GETTABLEKS R3 R0 K0 ["props"]
  NAMECALL R1 R0 K1 ["setup"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["teardown"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R1 K0 ["DraggerContext"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K0 ["DraggerContext"]
  JUMPIFNOTEQ R2 R3 [+17]
  GETTABLEKS R2 R1 K2 ["DraggerSchema"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["DraggerSchema"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETTABLEKS R2 R1 K3 ["DraggerSettings"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["DraggerSettings"]
  JUMPIFEQ R2 R3 [+8]
  NAMECALL R2 R0 K4 ["teardown"]
  CALL R2 1 0
  MOVE R4 R1
  NAMECALL R2 R0 K5 ["setup"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_constraintToolModel"]
  NAMECALL R1 R1 K1 ["render"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_isMounted"]
  JUMPIFNOT R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["forceUpdate"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["forceUpdate"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 0
  NEWTABLE R2 0 0
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_viewBoundsAreDirty"]
  RETURN R0 0

PROTO_7:
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.Keyboard]
  JUMPIFNOTEQ R2 R3 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["_constraintToolModel"]
  GETTABLEKS R5 R0 K5 ["KeyCode"]
  NAMECALL R3 R3 K6 ["_processKeyDown"]
  CALL R3 2 0
  RETURN R0 0
  GETIMPORT R3 K8 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R2 R3 [+5]
  GETIMPORT R3 K10 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R2 R3 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["_constraintToolModel"]
  NAMECALL R3 R3 K11 ["_processMouseDown"]
  CALL R3 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.Keyboard]
  JUMPIFNOTEQ R2 R3 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["_constraintToolModel"]
  GETTABLEKS R5 R0 K5 ["KeyCode"]
  NAMECALL R3 R3 K6 ["_processKeyUp"]
  CALL R3 2 0
  RETURN R0 0
  GETIMPORT R3 K8 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R2 R3 [+5]
  GETIMPORT R3 K10 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R2 R3 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["_constraintToolModel"]
  NAMECALL R3 R3 K11 ["_processMouseUp"]
  CALL R3 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_isMounted"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["_constraintToolModel"]
  NAMECALL R0 R0 K2 ["update"]
  CALL R0 1 0
  LOADB R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K3 ["poll"]
  CALL R1 1 1
  JUMPIFNOT R1 [+1]
  LOADB R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["_viewBoundsAreDirty"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["_viewBoundsAreDirty"]
  LOADB R0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["_constraintToolModel"]
  NAMECALL R1 R1 K5 ["_processViewChanged"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R3 R1 K0 ["DraggerContext"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  GETTABLEKS R3 R1 K3 ["DraggerSchema"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  GETTABLEKS R3 R1 K4 ["DraggerSettings"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  GETTABLEKS R3 R1 K5 ["ClosePluginCallback"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  GETTABLEKS R3 R1 K6 ["constraintType"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  LOADB R2 0
  SETTABLEKS R2 R0 K7 ["_selectionBoundsAreDirty"]
  LOADB R2 0
  SETTABLEKS R2 R0 K8 ["_viewBoundsAreDirty"]
  LOADK R2 K9 ["ConstraintToolViewUpdate"]
  SETTABLEKS R2 R0 K10 ["_bindName"]
  GETUPVAL R2 0
  LOADB R4 0
  NAMECALL R2 R2 K11 ["GenerateGUID"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K10 ["_bindName"]
  MOVE R5 R2
  CONCAT R3 R4 R5
  SETTABLEKS R3 R0 K10 ["_bindName"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["new"]
  GETTABLEKS R5 R1 K0 ["DraggerContext"]
  GETTABLEKS R6 R1 K3 ["DraggerSchema"]
  GETTABLEKS R7 R1 K4 ["DraggerSettings"]
  GETTABLEKS R8 R1 K5 ["ClosePluginCallback"]
  GETTABLEKS R9 R1 K13 ["undoAttachmentStack"]
  GETTABLEKS R10 R1 K14 ["redoAttachmentStack"]
  GETTABLEKS R11 R1 K15 ["recordingName"]
  GETTABLEKS R12 R1 K16 ["plugin"]
  GETTABLEKS R13 R1 K17 ["SetConstraintToolModelReference"]
  MOVE R14 R3
  NEWCLOSURE R15 P1
  CAPTURE VAL R0
  CALL R4 11 1
  SETTABLEKS R4 R0 K18 ["_constraintToolModel"]
  GETTABLEKS R4 R0 K18 ["_constraintToolModel"]
  NAMECALL R4 R4 K19 ["_processSelected"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K18 ["_constraintToolModel"]
  GETTABLEKS R6 R1 K6 ["constraintType"]
  NAMECALL R4 R4 K20 ["_setConstraintType"]
  CALL R4 2 0
  GETTABLEKS R4 R1 K6 ["constraintType"]
  JUMPIFEQKS R4 K21 ["WeldConstraint"] [+5]
  GETTABLEKS R4 R1 K6 ["constraintType"]
  JUMPIFNOTEQKS R4 K22 ["NoCollisionConstraint"] [+7]
  GETTABLEKS R4 R0 K18 ["_constraintToolModel"]
  NAMECALL R4 R4 K23 ["_initWeldHighlight"]
  CALL R4 1 0
  JUMP [+5]
  GETTABLEKS R4 R0 K18 ["_constraintToolModel"]
  NAMECALL R4 R4 K24 ["_initAttachmentAdornment"]
  CALL R4 1 0
  GETTABLEKS R4 R1 K25 ["Mouse"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K26 ["InputBegan"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  NAMECALL R5 R5 K27 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K28 ["_inputBeganConnection"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K29 ["InputEnded"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R0
  NAMECALL R5 R5 K27 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K30 ["_inputEndedConnection"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K12 ["new"]
  MOVE R6 R4
  CALL R5 1 1
  GETUPVAL R6 4
  GETTABLEKS R8 R0 K10 ["_bindName"]
  GETIMPORT R10 K34 [Enum.RenderPriority.First]
  GETTABLEKS R9 R10 K35 ["Value"]
  NEWCLOSURE R10 P4
  CAPTURE VAL R0
  CAPTURE VAL R5
  NAMECALL R6 R6 K36 ["BindToRenderStep"]
  CALL R6 4 0
  LOADB R6 1
  SETTABLEKS R6 R0 K37 ["_isMounted"]
  RETURN R0 0

PROTO_11:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_isMounted"]
  GETTABLEKS R1 R0 K1 ["_inputBeganConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_inputBeganConnection"]
  GETTABLEKS R1 R0 K3 ["_inputEndedConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_inputEndedConnection"]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K4 ["_bindName"]
  NAMECALL R1 R1 K5 ["UnbindFromRenderStep"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K6 ["_constraintToolModel"]
  NAMECALL R1 R1 K7 ["_processDeselected"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ConstraintTool"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["RunService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["UserInputService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K5 [game]
  LOADK R5 K9 ["HttpService"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["DraggerFramework"]
  GETIMPORT R5 K13 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K13 [require]
  GETTABLEKS R8 R0 K15 ["Src"]
  GETTABLEKS R7 R8 K16 ["ConstraintToolModel"]
  CALL R6 1 1
  GETIMPORT R7 K13 [require]
  GETTABLEKS R9 R4 K17 ["Utility"]
  GETTABLEKS R8 R9 K18 ["ViewChangeDetector"]
  CALL R7 1 1
  GETTABLEKS R8 R5 K19 ["PureComponent"]
  LOADK R10 K20 ["ConstraintToolComponent"]
  NAMECALL R8 R8 K21 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K22 [PROTO_0]
  SETTABLEKS R9 R8 K23 ["init"]
  DUPCLOSURE R9 K24 [PROTO_1]
  SETTABLEKS R9 R8 K25 ["didMount"]
  DUPCLOSURE R9 K26 [PROTO_2]
  SETTABLEKS R9 R8 K27 ["willUnmount"]
  DUPCLOSURE R9 K28 [PROTO_3]
  SETTABLEKS R9 R8 K29 ["willUpdate"]
  DUPCLOSURE R9 K30 [PROTO_4]
  SETTABLEKS R9 R8 K31 ["render"]
  DUPCLOSURE R9 K32 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K33 ["setup"]
  DUPCLOSURE R9 K34 [PROTO_11]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K35 ["teardown"]
  RETURN R8 1
