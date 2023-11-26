PROTO_0:
  JUMPIFNOT R0 [+6]
  GETIMPORT R2 K1 [game]
  GETTABLEKS R1 R2 K2 ["Workspace"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADNIL R1
  RETURN R1 1
  LOADK R3 K3 ["Model"]
  NAMECALL R1 R0 K4 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 1
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K5 ["Parent"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R6 K1 [game]
  GETTABLEKS R5 R6 K2 ["Workspace"]
  GETTABLEKS R4 R5 K3 ["Name"]
  NAMECALL R2 R0 K4 ["FindFirstAncestor"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Get"]
  CALL R1 1 1
  LENGTH R0 R1
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+17]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Get"]
  CALL R0 1 1
  LENGTH R2 R0
  GETTABLE R1 R0 R2
  RETURN R1 1
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Get"]
  CALL R1 1 1
  GETTABLEN R0 R1 1
  RETURN R0 1
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Mouse"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["Target"]
  RETURN R1 1

PROTO_4:
  MOVE R1 R0
  JUMPIFNOT R1 [+28]
  GETIMPORT R6 K1 [game]
  GETTABLEKS R5 R6 K2 ["Workspace"]
  GETTABLEKS R4 R5 K3 ["Name"]
  NAMECALL R2 R0 K4 ["FindFirstAncestor"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+14]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+2]
  GETUPVAL R3 1
  JUMP [+1]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["getAnimationController"]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_5:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["RootInstance"]
  JUMPIFEQ R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["wasUnmounted"]
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["Mouse"]
  NAMECALL R4 R4 K3 ["get"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K4 ["Target"]
  JUMPIFEQKNIL R3 [+66]
  JUMPIFNOT R3 [+6]
  GETIMPORT R6 K6 [game]
  GETTABLEKS R5 R6 K7 ["Workspace"]
  JUMPIFNOTEQ R3 R5 [+3]
  LOADNIL R4
  JUMP [+12]
  LOADK R7 K8 ["Model"]
  NAMECALL R5 R3 K9 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+2]
  MOVE R4 R3
  JUMP [+5]
  GETUPVAL R4 0
  GETTABLEKS R5 R3 K10 ["Parent"]
  CALL R4 1 1
  JUMP [0]
  JUMPIFNOT R4 [+40]
  MOVE R7 R4
  NAMECALL R5 R0 K11 ["isCurrentRootInstance"]
  CALL R5 2 1
  JUMPIF R5 [+35]
  MOVE R5 R4
  JUMPIFNOT R5 [+28]
  GETIMPORT R10 K6 [game]
  GETTABLEKS R9 R10 K7 ["Workspace"]
  GETTABLEKS R8 R9 K12 ["Name"]
  NAMECALL R6 R4 K13 ["FindFirstAncestor"]
  CALL R6 2 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R5 [+14]
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  GETUPVAL R7 2
  JUMP [+1]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K14 ["getAnimationController"]
  MOVE R7 R4
  CALL R6 1 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R5 [+4]
  MOVE R5 R1
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0
  JUMPIFNOT R2 [+2]
  MOVE R5 R2
  CALL R5 0 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R8 R7 K2 ["Data"]
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 0
  GETIMPORT R10 K1 [ipairs]
  MOVE R11 R8
  CALL R10 1 3
  FORGPREP_INEXT R10
  GETTABLEKS R15 R14 K3 ["Name"]
  SETTABLE R15 R9 R13
  FORGLOOP R10 2 [inext] [-4]
  GETUPVAL R10 0
  MOVE R11 R1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K7 [{"ErrorType", "Entries"}]
  GETTABLEKS R15 R7 K8 ["ID"]
  SETTABLEKS R15 R14 K5 ["ErrorType"]
  SETTABLEKS R9 R14 K6 ["Entries"]
  CALL R12 2 -1
  CALL R10 -1 0
  FORGLOOP R3 2 [inext] [-33]
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K0 ["Set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NEWTABLE R2 0 0
  NAMECALL R0 R0 K0 ["Set"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["deselect"]
  CALL R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K2 ["SetSelectedTrackInstances"]
  NEWTABLE R1 0 0
  CALL R0 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K3 ["Signals"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["SIGNAL_KEYS"]
  GETTABLEKS R2 R3 K5 ["SelectionChanged"]
  NAMECALL R0 R0 K6 ["get"]
  CALL R0 2 1
  NAMECALL R0 R0 K7 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"HoverPart"}]
  SETTABLEKS R0 R3 K0 ["HoverPart"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"HoverPart"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["None"]
  SETTABLEKS R3 R2 K0 ["HoverPart"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["Get"]
  CALL R2 1 1
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+17]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Get"]
  CALL R1 1 1
  LENGTH R2 R1
  GETTABLE R0 R1 R2
  JUMP [+7]
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Get"]
  CALL R1 1 1
  GETTABLEN R0 R1 1
  JUMP [+1]
  LOADNIL R0
  JUMPIFNOT R0 [+6]
  GETIMPORT R3 K2 [game]
  GETTABLEKS R2 R3 K3 ["Workspace"]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADNIL R1
  JUMP [+12]
  LOADK R4 K4 ["Model"]
  NAMECALL R2 R0 K5 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  MOVE R1 R0
  JUMP [+5]
  GETUPVAL R1 2
  GETTABLEKS R2 R0 K6 ["Parent"]
  CALL R1 1 1
  JUMP [0]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K7 ["props"]
  GETTABLEKS R2 R3 K8 ["Plugin"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+97]
  MOVE R3 R1
  JUMPIFNOT R3 [+28]
  GETIMPORT R8 K2 [game]
  GETTABLEKS R7 R8 K3 ["Workspace"]
  GETTABLEKS R6 R7 K9 ["Name"]
  NAMECALL R4 R1 K10 ["FindFirstAncestor"]
  CALL R4 2 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+14]
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  GETUPVAL R5 5
  JUMP [+1]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K11 ["getAnimationController"]
  MOVE R5 R1
  CALL R4 1 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+51]
  GETUPVAL R3 3
  MOVE R5 R1
  NAMECALL R3 R3 K12 ["isCurrentRootInstance"]
  CALL R3 2 1
  JUMPIF R3 [+152]
  GETUPVAL R5 7
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  GETUPVAL R4 8
  JUMP [+1]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K13 ["rigHasErrors"]
  MOVE R4 R1
  CALL R3 1 2
  JUMPIF R3 [+13]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["props"]
  GETTABLEKS R5 R6 K14 ["UpdateRootInstance"]
  MOVE R6 R1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["props"]
  GETTABLEKS R7 R8 K15 ["Analytics"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["props"]
  GETTABLEKS R5 R6 K14 ["UpdateRootInstance"]
  LOADNIL R6
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["props"]
  GETTABLEKS R7 R8 K15 ["Analytics"]
  CALL R5 2 0
  GETUPVAL R5 3
  NAMECALL R7 R2 K16 ["get"]
  CALL R7 1 1
  MOVE R8 R4
  NAMECALL R5 R5 K17 ["showErrorDialogs"]
  CALL R5 3 0
  RETURN R0 0
  JUMPIFNOT R0 [+106]
  JUMPIFNOT R2 [+105]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["props"]
  GETTABLEKS R3 R4 K14 ["UpdateRootInstance"]
  LOADNIL R4
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["props"]
  GETTABLEKS R5 R6 K15 ["Analytics"]
  CALL R3 2 0
  RETURN R0 0
  MOVE R3 R1
  JUMPIFNOT R3 [+28]
  GETIMPORT R8 K2 [game]
  GETTABLEKS R7 R8 K3 ["Workspace"]
  GETTABLEKS R6 R7 K9 ["Name"]
  NAMECALL R4 R1 K10 ["FindFirstAncestor"]
  CALL R4 2 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+14]
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  GETUPVAL R5 5
  JUMP [+1]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K11 ["getAnimationController"]
  MOVE R5 R1
  CALL R4 1 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+53]
  GETUPVAL R3 3
  MOVE R5 R1
  NAMECALL R3 R3 K12 ["isCurrentRootInstance"]
  CALL R3 2 1
  JUMPIF R3 [+47]
  GETUPVAL R5 7
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  GETUPVAL R4 8
  JUMP [+1]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K13 ["rigHasErrors"]
  MOVE R4 R1
  CALL R3 1 2
  JUMPIF R3 [+17]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["props"]
  GETTABLEKS R5 R6 K14 ["UpdateRootInstance"]
  MOVE R6 R1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["props"]
  GETTABLEKS R7 R8 K15 ["Analytics"]
  CALL R5 2 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K18 ["deselectAndRemoveSelectedTrackInstances"]
  CALL R5 0 0
  RETURN R0 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K18 ["deselectAndRemoveSelectedTrackInstances"]
  CALL R5 0 0
  NAMECALL R5 R2 K16 ["get"]
  CALL R5 1 1
  NAMECALL R5 R5 K19 ["Deactivate"]
  CALL R5 1 0
  GETUPVAL R5 3
  NAMECALL R7 R2 K16 ["get"]
  CALL R7 1 1
  MOVE R8 R4
  NAMECALL R5 R5 K17 ["showErrorDialogs"]
  CALL R5 3 0
  RETURN R0 0
  JUMPIFNOT R0 [+7]
  JUMPIFNOT R2 [+6]
  NAMECALL R3 R2 K16 ["get"]
  CALL R3 1 1
  NAMECALL R3 R3 K19 ["Deactivate"]
  CALL R3 1 0
  RETURN R0 0

PROTO_14:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["wasUnmounted"]
  DUPTABLE R1 K2 [{"HoverPart"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["HoverPart"]
  SETTABLEKS R1 R0 K3 ["state"]
  DUPCLOSURE R1 K4 [PROTO_8]
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K5 ["selectInstance"]
  DUPCLOSURE R1 K6 [PROTO_9]
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K7 ["deselect"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K8 ["deselectAndRemoveSelectedTrackInstances"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["highlightInstance"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K10 ["removeHighlight"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["SelectionChanged"]
  NEWCLOSURE R3 P5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NAMECALL R1 R1 K12 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K13 ["SelectionChangedHandle"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["highlightInstance"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["removeHighlight"]
  NAMECALL R1 R1 K2 ["selectValidInstance"]
  CALL R1 3 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["selectInstance"]
  NAMECALL R0 R0 K1 ["selectValidInstance"]
  CALL R0 2 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["deselect"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Heartbeat"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["Heartbeat"]
  GETTABLEKS R2 R0 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["Plugin"]
  JUMPIFNOT R1 [+23]
  NAMECALL R2 R1 K5 ["get"]
  CALL R2 1 1
  LOADB R4 1
  NAMECALL R2 R2 K6 ["Activate"]
  CALL R2 2 0
  GETTABLEKS R4 R0 K3 ["props"]
  GETTABLEKS R3 R4 K7 ["Mouse"]
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K8 ["Button1Down"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K2 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K9 ["MouseButtonDown"]
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R2 K2 ["VisualizeBones"]
  GETTABLEKS R4 R1 K3 ["HoverPart"]
  GETTABLEKS R5 R2 K4 ["Container"]
  JUMPIF R5 [+1]
  GETUPVAL R5 0
  NEWTABLE R6 0 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["getOrCreateMicroboneFolder"]
  CALL R7 0 1
  JUMPIFNOT R3 [+66]
  NAMECALL R8 R7 K6 ["GetChildren"]
  CALL R8 1 1
  GETIMPORT R9 K8 [pairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_NEXT R9
  LOADK R16 K9 ["Cone"]
  NAMECALL R14 R13 K10 ["FindFirstChild"]
  CALL R14 2 1
  JUMPIFNOT R14 [+23]
  GETTABLEKS R15 R13 K9 ["Cone"]
  GETTABLEKS R14 R15 K11 ["Color3"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K12 ["BONE_COLOR_SELECTED"]
  JUMPIFNOTEQ R14 R15 [+15]
  GETTABLEKS R14 R13 K9 ["Cone"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K13 ["BONE_COLOR_DEFAULT"]
  SETTABLEKS R15 R14 K11 ["Color3"]
  GETTABLEKS R14 R13 K9 ["Cone"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K14 ["BONE_TRANSPARENCY_DEFAULT"]
  SETTABLEKS R15 R14 K15 ["Transparency"]
  LOADK R16 K16 ["Sphere"]
  NAMECALL R14 R13 K10 ["FindFirstChild"]
  CALL R14 2 1
  JUMPIFNOT R14 [+23]
  GETTABLEKS R15 R13 K16 ["Sphere"]
  GETTABLEKS R14 R15 K11 ["Color3"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K12 ["BONE_COLOR_SELECTED"]
  JUMPIFNOTEQ R14 R15 [+15]
  GETTABLEKS R14 R13 K16 ["Sphere"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K13 ["BONE_COLOR_DEFAULT"]
  SETTABLEKS R15 R14 K11 ["Color3"]
  GETTABLEKS R14 R13 K16 ["Sphere"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K14 ["BONE_TRANSPARENCY_DEFAULT"]
  SETTABLEKS R15 R14 K15 ["Transparency"]
  FORGLOOP R9 2 [-57]
  GETTABLEKS R8 R2 K17 ["SelectedTrackInstances"]
  JUMPIFNOT R8 [+152]
  GETIMPORT R8 K19 [ipairs]
  GETTABLEKS R9 R2 K17 ["SelectedTrackInstances"]
  CALL R8 1 3
  FORGPREP_INEXT R8
  JUMPIFNOT R3 [+116]
  GETTABLEKS R13 R12 K20 ["Parent"]
  JUMPIFEQKNIL R13 [+7]
  GETTABLEKS R14 R12 K20 ["Parent"]
  GETTABLEKS R13 R14 K21 ["Name"]
  JUMPIFEQKS R13 K22 ["RBX_MICROBONE_NODES"] [+29]
  LOADK R14 K23 ["SelectionBox"]
  MOVE R15 R11
  CONCAT R13 R14 R15
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K24 ["createElement"]
  LOADK R15 K23 ["SelectionBox"]
  DUPTABLE R16 K30 [{"Archivable", "Adornee", "LineThickness", "Transparency", "SurfaceTransparency", "StudioSelectionBox"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K25 ["Archivable"]
  SETTABLEKS R12 R16 K26 ["Adornee"]
  LOADN R17 1
  SETTABLEKS R17 R16 K27 ["LineThickness"]
  LOADK R17 K31 [0.5]
  SETTABLEKS R17 R16 K15 ["Transparency"]
  LOADK R17 K32 [0.8]
  SETTABLEKS R17 R16 K28 ["SurfaceTransparency"]
  LOADB R17 1
  SETTABLEKS R17 R16 K29 ["StudioSelectionBox"]
  CALL R14 2 1
  SETTABLE R14 R6 R13
  JUMP [+105]
  JUMPIFNOT R12 [+12]
  LOADK R15 K9 ["Cone"]
  NAMECALL R13 R12 K10 ["FindFirstChild"]
  CALL R13 2 1
  JUMPIFNOT R13 [+7]
  GETTABLEKS R13 R12 K9 ["Cone"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K12 ["BONE_COLOR_SELECTED"]
  SETTABLEKS R14 R13 K11 ["Color3"]
  JUMPIFNOT R12 [+12]
  LOADK R15 K16 ["Sphere"]
  NAMECALL R13 R12 K10 ["FindFirstChild"]
  CALL R13 2 1
  JUMPIFNOT R13 [+7]
  GETTABLEKS R13 R12 K16 ["Sphere"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K12 ["BONE_COLOR_SELECTED"]
  SETTABLEKS R14 R13 K11 ["Color3"]
  GETUPVAL R13 4
  CALL R13 0 1
  JUMPIF R13 [+76]
  GETTABLEKS R14 R2 K33 ["BoneLinksToBone"]
  GETTABLEKS R15 R12 K21 ["Name"]
  GETTABLE R13 R14 R15
  JUMPIFNOT R13 [+15]
  MOVE R17 R13
  LOADK R18 K34 ["Node"]
  CONCAT R16 R17 R18
  NAMECALL R14 R7 K10 ["FindFirstChild"]
  CALL R14 2 1
  JUMPIFNOT R14 [+63]
  GETTABLEKS R15 R14 K16 ["Sphere"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K12 ["BONE_COLOR_SELECTED"]
  SETTABLEKS R16 R15 K11 ["Color3"]
  JUMP [+55]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K35 ["getBoneFromBoneNode"]
  GETTABLEKS R15 R12 K21 ["Name"]
  CALL R14 1 1
  GETIMPORT R15 K8 [pairs]
  GETTABLEKS R16 R2 K33 ["BoneLinksToBone"]
  CALL R15 1 3
  FORGPREP_NEXT R15
  JUMPIFNOTEQ R19 R14 [+12]
  MOVE R22 R18
  NAMECALL R20 R7 K10 ["FindFirstChild"]
  CALL R20 2 1
  GETTABLEKS R21 R20 K9 ["Cone"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K12 ["BONE_COLOR_SELECTED"]
  SETTABLEKS R22 R21 K11 ["Color3"]
  FORGLOOP R15 2 [-14]
  JUMP [+27]
  LOADK R14 K23 ["SelectionBox"]
  MOVE R15 R11
  CONCAT R13 R14 R15
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K24 ["createElement"]
  LOADK R15 K23 ["SelectionBox"]
  DUPTABLE R16 K30 [{"Archivable", "Adornee", "LineThickness", "Transparency", "SurfaceTransparency", "StudioSelectionBox"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K25 ["Archivable"]
  SETTABLEKS R12 R16 K26 ["Adornee"]
  LOADN R17 1
  SETTABLEKS R17 R16 K27 ["LineThickness"]
  LOADK R17 K31 [0.5]
  SETTABLEKS R17 R16 K15 ["Transparency"]
  LOADK R17 K32 [0.8]
  SETTABLEKS R17 R16 K28 ["SurfaceTransparency"]
  LOADB R17 1
  SETTABLEKS R17 R16 K29 ["StudioSelectionBox"]
  CALL R14 2 1
  SETTABLE R14 R6 R13
  FORGLOOP R8 2 [inext] [-145]
  MOVE R8 R4
  JUMPIFNOT R8 [+17]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K24 ["createElement"]
  LOADK R9 K23 ["SelectionBox"]
  DUPTABLE R10 K36 [{"Archivable", "Adornee", "LineThickness", "StudioSelectionBox"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K25 ["Archivable"]
  SETTABLEKS R4 R10 K26 ["Adornee"]
  LOADN R11 2
  SETTABLEKS R11 R10 K27 ["LineThickness"]
  LOADB R11 1
  SETTABLEKS R11 R10 K29 ["StudioSelectionBox"]
  CALL R8 2 1
  SETTABLEKS R8 R6 K37 ["HoverBox"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K24 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K38 ["Portal"]
  DUPTABLE R10 K40 [{"target"}]
  SETTABLEKS R5 R10 K39 ["target"]
  MOVE R11 R6
  CALL R8 3 -1
  RETURN R8 -1

PROTO_19:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["wasUnmounted"]
  GETTABLEKS R1 R0 K1 ["Heartbeat"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["Heartbeat"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["SetSelectedTrackInstances"]
  NEWTABLE R2 0 0
  CALL R1 1 0
  GETTABLEKS R2 R0 K3 ["props"]
  GETTABLEKS R1 R2 K5 ["Signals"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["SIGNAL_KEYS"]
  GETTABLEKS R3 R4 K7 ["SelectionChanged"]
  NAMECALL R1 R1 K8 ["get"]
  CALL R1 2 1
  NAMECALL R1 R1 K9 ["Fire"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K10 ["SelectionChangedHandle"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K10 ["SelectionChangedHandle"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K11 ["MouseButtonDown"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K11 ["MouseButtonDown"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K3 ["props"]
  GETTABLEKS R1 R2 K12 ["Plugin"]
  JUMPIFNOT R1 [+10]
  GETTABLEKS R2 R0 K3 ["props"]
  GETTABLEKS R1 R2 K12 ["Plugin"]
  NAMECALL R1 R1 K8 ["get"]
  CALL R1 1 1
  NAMECALL R1 R1 K13 ["Deactivate"]
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  DUPTABLE R2 K4 [{"RootInstance", "SelectedTrackInstances", "BoneLinksToBone", "VisualizeBones"}]
  GETTABLEKS R4 R0 K5 ["Status"]
  GETTABLEKS R3 R4 K0 ["RootInstance"]
  SETTABLEKS R3 R2 K0 ["RootInstance"]
  GETTABLEKS R4 R0 K5 ["Status"]
  GETTABLEKS R3 R4 K1 ["SelectedTrackInstances"]
  SETTABLEKS R3 R2 K1 ["SelectedTrackInstances"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+2]
  LOADNIL R3
  JUMP [+4]
  GETTABLEKS R4 R0 K5 ["Status"]
  GETTABLEKS R3 R4 K2 ["BoneLinksToBone"]
  SETTABLEKS R3 R2 K2 ["BoneLinksToBone"]
  GETTABLEKS R4 R0 K5 ["Status"]
  GETTABLEKS R3 R4 K3 ["VisualizeBones"]
  SETTABLEKS R3 R2 K3 ["VisualizeBones"]
  RETURN R2 1

PROTO_21:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  NEWTABLE R7 0 1
  GETTABLEKS R8 R6 K2 ["Name"]
  SETLIST R7 R8 1 [1]
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-8]
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R3 2
  MOVE R4 R1
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_23:
  DUPTABLE R1 K2 [{"SetSelectedTrackInstances", "UpdateRootInstance"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K0 ["SetSelectedTrackInstances"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["UpdateRootInstance"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Thunks"]
  GETTABLEKS R7 R8 K14 ["UpdateRootInstance"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["RigUtils"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K17 ["RigValidation"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K15 ["Util"]
  GETTABLEKS R10 R11 K18 ["RigInfo"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K19 ["Components"]
  GETTABLEKS R12 R13 K20 ["BlockingDialog"]
  GETTABLEKS R11 R12 K21 ["ErrorDialogContents"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K15 ["Util"]
  GETTABLEKS R12 R13 K22 ["showBlockingDialog"]
  CALL R11 1 1
  GETIMPORT R12 K24 [game]
  LOADK R14 K25 ["RunService"]
  NAMECALL R12 R12 K26 ["GetService"]
  CALL R12 2 1
  GETIMPORT R13 K24 [game]
  LOADK R15 K27 ["CoreGui"]
  NAMECALL R13 R13 K26 ["GetService"]
  CALL R13 2 1
  GETIMPORT R14 K24 [game]
  LOADK R16 K28 ["Selection"]
  NAMECALL R14 R14 K26 ["GetService"]
  CALL R14 2 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K12 ["Src"]
  GETTABLEKS R17 R18 K15 ["Util"]
  GETTABLEKS R16 R17 K29 ["Constants"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K12 ["Src"]
  GETTABLEKS R18 R19 K30 ["Context"]
  GETTABLEKS R17 R18 K31 ["Signals"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K12 ["Src"]
  GETTABLEKS R19 R20 K32 ["Actions"]
  GETTABLEKS R18 R19 K33 ["SetSelectedTrackInstances"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K12 ["Src"]
  GETTABLEKS R20 R21 K32 ["Actions"]
  GETTABLEKS R19 R20 K34 ["SetSelectedTracks"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R21 R0 K35 ["LuaFlags"]
  GETTABLEKS R20 R21 K36 ["GetFFlagRigUtilsMigration"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R0 K35 ["LuaFlags"]
  GETTABLEKS R21 R22 K37 ["GetFFlagRigUtilsMigration3"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R23 R0 K35 ["LuaFlags"]
  GETTABLEKS R22 R23 K38 ["GetFFlagBoneReferences"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R24 R0 K35 ["LuaFlags"]
  GETTABLEKS R23 R24 K39 ["GetFFlagFixMultipleOutlines"]
  CALL R22 1 1
  GETTABLEKS R23 R1 K40 ["PureComponent"]
  LOADK R25 K41 ["InstanceSelector"]
  NAMECALL R23 R23 K42 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K43 [PROTO_0]
  CAPTURE VAL R24
  DUPCLOSURE R25 K44 [PROTO_1]
  DUPCLOSURE R26 K45 [PROTO_2]
  CAPTURE VAL R14
  CAPTURE VAL R22
  DUPCLOSURE R27 K46 [PROTO_3]
  DUPCLOSURE R28 K47 [PROTO_4]
  CAPTURE VAL R19
  CAPTURE VAL R9
  CAPTURE VAL R7
  DUPCLOSURE R29 K48 [PROTO_5]
  SETTABLEKS R29 R23 K49 ["isCurrentRootInstance"]
  DUPCLOSURE R29 K50 [PROTO_6]
  CAPTURE VAL R24
  CAPTURE VAL R19
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R29 R23 K51 ["selectValidInstance"]
  DUPCLOSURE R29 K52 [PROTO_7]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R29 R23 K53 ["showErrorDialogs"]
  DUPCLOSURE R29 K54 [PROTO_14]
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R22
  CAPTURE VAL R24
  CAPTURE VAL R19
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R8
  SETTABLEKS R29 R23 K55 ["init"]
  DUPCLOSURE R29 K56 [PROTO_17]
  CAPTURE VAL R12
  SETTABLEKS R29 R23 K57 ["didMount"]
  DUPCLOSURE R29 K58 [PROTO_18]
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R21
  SETTABLEKS R29 R23 K59 ["render"]
  DUPCLOSURE R29 K60 [PROTO_19]
  CAPTURE VAL R15
  SETTABLEKS R29 R23 K61 ["willUnmount"]
  MOVE R29 R5
  DUPTABLE R30 K65 [{"Plugin", "Mouse", "Analytics", "Signals"}]
  GETTABLEKS R31 R4 K62 ["Plugin"]
  SETTABLEKS R31 R30 K62 ["Plugin"]
  GETTABLEKS R31 R4 K63 ["Mouse"]
  SETTABLEKS R31 R30 K63 ["Mouse"]
  GETTABLEKS R31 R4 K64 ["Analytics"]
  SETTABLEKS R31 R30 K64 ["Analytics"]
  SETTABLEKS R16 R30 K31 ["Signals"]
  CALL R29 1 1
  MOVE R30 R23
  CALL R29 1 1
  MOVE R23 R29
  DUPCLOSURE R29 K66 [PROTO_20]
  CAPTURE VAL R21
  DUPCLOSURE R30 K67 [PROTO_23]
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R6
  GETTABLEKS R31 R2 K68 ["connect"]
  MOVE R32 R29
  MOVE R33 R30
  CALL R31 2 1
  MOVE R32 R23
  CALL R31 1 -1
  RETURN R31 -1
