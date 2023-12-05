PROTO_0:
  MOVE R5 R0
  NAMECALL R3 R1 K0 ["IsDescendantOf"]
  CALL R3 2 1
  JUMPIFNOT R3 [+12]
  LOADK R5 K1 ["BasePart"]
  NAMECALL R3 R1 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R5 R1 K3 ["Name"]
  GETTABLE R4 R2 R5
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_1:
  LOADK R4 K0 ["Cone"]
  NAMECALL R2 R0 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+83]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["intersectRayRay"]
  GETTABLEKS R4 R0 K3 ["CFrame"]
  GETTABLEKS R3 R4 K4 ["Position"]
  GETTABLEKS R5 R0 K3 ["CFrame"]
  GETTABLEKS R4 R5 K5 ["LookVector"]
  GETTABLEKS R5 R1 K6 ["Origin"]
  GETTABLEKS R7 R1 K7 ["Direction"]
  GETTABLEKS R6 R7 K8 ["Unit"]
  CALL R2 4 2
  JUMPIF R2 [+2]
  LOADNIL R4
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["intersectRayRay"]
  GETTABLEKS R5 R1 K6 ["Origin"]
  GETTABLEKS R7 R1 K7 ["Direction"]
  GETTABLEKS R6 R7 K8 ["Unit"]
  GETTABLEKS R8 R0 K3 ["CFrame"]
  GETTABLEKS R7 R8 K4 ["Position"]
  GETTABLEKS R9 R0 K3 ["CFrame"]
  GETTABLEKS R8 R9 K5 ["LookVector"]
  CALL R4 4 2
  GETTABLEKS R10 R0 K3 ["CFrame"]
  GETTABLEKS R9 R10 K4 ["Position"]
  GETTABLEKS R12 R0 K3 ["CFrame"]
  GETTABLEKS R11 R12 K5 ["LookVector"]
  MUL R10 R11 R3
  ADD R8 R9 R10
  GETTABLEKS R10 R1 K6 ["Origin"]
  GETTABLEKS R13 R1 K7 ["Direction"]
  GETTABLEKS R12 R13 K8 ["Unit"]
  MUL R11 R12 R5
  ADD R9 R10 R11
  SUB R7 R8 R9
  GETTABLEKS R6 R7 K9 ["Magnitude"]
  LOADK R9 K0 ["Cone"]
  NAMECALL R7 R0 K1 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOT R7 [+16]
  GETTABLEKS R8 R0 K0 ["Cone"]
  GETTABLEKS R7 R8 K10 ["Radius"]
  JUMPIFNOTLT R6 R7 [+11]
  LOADN R7 0
  JUMPIFNOTLT R7 R3 [+8]
  GETTABLEKS R8 R0 K0 ["Cone"]
  GETTABLEKS R7 R8 K11 ["Height"]
  JUMPIFNOTLT R3 R7 [+2]
  RETURN R5 1
  LOADNIL R7
  RETURN R7 1
  LOADK R4 K12 ["Sphere"]
  NAMECALL R2 R0 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+22]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["intersectRaySphere"]
  GETTABLEKS R3 R1 K6 ["Origin"]
  GETTABLEKS R5 R1 K7 ["Direction"]
  GETTABLEKS R4 R5 K8 ["Unit"]
  GETTABLEKS R6 R0 K3 ["CFrame"]
  GETTABLEKS R5 R6 K4 ["Position"]
  GETTABLEKS R7 R0 K12 ["Sphere"]
  GETTABLEKS R6 R7 K10 ["Radius"]
  CALL R2 4 2
  JUMPIFNOT R2 [+1]
  RETURN R3 1
  LOADNIL R4
  RETURN R4 1
  LOADNIL R2
  RETURN R2 1

PROTO_2:
  LOADNIL R2
  LOADK R3 K0 [∞]
  NAMECALL R4 R1 K1 ["GetChildren"]
  CALL R4 1 1
  GETIMPORT R5 K3 [pairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_NEXT R5
  LOADK R12 K4 ["Cone"]
  NAMECALL R10 R9 K5 ["FindFirstChild"]
  CALL R10 2 1
  JUMPIFNOT R10 [+23]
  GETTABLEKS R11 R9 K4 ["Cone"]
  GETTABLEKS R10 R11 K6 ["Color3"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["BONE_COLOR_SELECTED"]
  JUMPIFEQ R10 R11 [+15]
  GETTABLEKS R10 R9 K4 ["Cone"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["BONE_COLOR_DEFAULT"]
  SETTABLEKS R11 R10 K6 ["Color3"]
  GETTABLEKS R10 R9 K4 ["Cone"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["BONE_TRANSPARENCY_DEFAULT"]
  SETTABLEKS R11 R10 K10 ["Transparency"]
  LOADK R12 K11 ["Sphere"]
  NAMECALL R10 R9 K5 ["FindFirstChild"]
  CALL R10 2 1
  JUMPIFNOT R10 [+23]
  GETTABLEKS R11 R9 K11 ["Sphere"]
  GETTABLEKS R10 R11 K6 ["Color3"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["BONE_COLOR_SELECTED"]
  JUMPIFEQ R10 R11 [+15]
  GETTABLEKS R10 R9 K11 ["Sphere"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["BONE_COLOR_DEFAULT"]
  SETTABLEKS R11 R10 K6 ["Color3"]
  GETTABLEKS R10 R9 K11 ["Sphere"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["BONE_TRANSPARENCY_DEFAULT"]
  SETTABLEKS R11 R10 K10 ["Transparency"]
  GETUPVAL R10 1
  MOVE R11 R9
  MOVE R12 R0
  CALL R10 2 1
  JUMPIFNOT R10 [+4]
  JUMPIFNOTLT R10 R3 [+3]
  MOVE R3 R10
  MOVE R2 R9
  FORGLOOP R5 2 [-66]
  RETURN R2 2

PROTO_3:
  GETTABLEKS R3 R0 K0 ["RootInstance"]
  JUMPIF R3 [+2]
  LOADNIL R3
  RETURN R3 1
  LOADNIL R3
  LOADNIL R4
  GETIMPORT R5 K3 [RaycastParams.new]
  CALL R5 0 1
  GETIMPORT R6 K7 [Enum.RaycastFilterType.Blacklist]
  SETTABLEKS R6 R5 K8 ["FilterType"]
  NEWTABLE R6 0 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["findRootPart"]
  GETTABLEKS R8 R0 K0 ["RootInstance"]
  CALL R7 1 -1
  SETLIST R6 R7 -1 [1]
  SETTABLEKS R6 R5 K10 ["FilterDescendantsInstances"]
  LOADB R6 1
  SETTABLEKS R6 R5 K11 ["BruteForceAllSlow"]
  GETUPVAL R6 1
  GETTABLEKS R8 R1 K12 ["Origin"]
  GETTABLEKS R9 R1 K13 ["Direction"]
  MOVE R10 R5
  NAMECALL R6 R6 K14 ["Raycast"]
  CALL R6 4 1
  JUMPIFNOT R6 [+30]
  GETTABLEKS R3 R6 K15 ["Instance"]
  GETTABLEKS R4 R6 K16 ["Distance"]
  GETIMPORT R7 K18 [Enum.RaycastFilterType.Whitelist]
  SETTABLEKS R7 R5 K8 ["FilterType"]
  SETTABLEKS R2 R5 K10 ["FilterDescendantsInstances"]
  GETUPVAL R7 1
  GETTABLEKS R9 R1 K12 ["Origin"]
  GETTABLEKS R10 R1 K13 ["Direction"]
  MOVE R11 R5
  NAMECALL R7 R7 K19 ["raycast"]
  CALL R7 4 1
  JUMPIFNOT R7 [+10]
  GETTABLEKS R8 R7 K20 ["Position"]
  GETTABLEKS R10 R6 K20 ["Position"]
  NAMECALL R8 R8 K21 ["FuzzyEq"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  GETTABLEKS R3 R7 K15 ["Instance"]
  GETTABLEKS R9 R1 K12 ["Origin"]
  GETTABLEKS R10 R1 K13 ["Direction"]
  GETIMPORT R11 K3 [RaycastParams.new]
  CALL R11 0 -1
  NAMECALL R7 R0 K22 ["gizmoRaycast"]
  CALL R7 -1 1
  JUMPIFNOT R7 [+15]
  NAMECALL R8 R0 K23 ["shouldDrawConstraintsOnTop"]
  CALL R8 1 1
  JUMPIF R8 [+7]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R8 R7 K16 ["Distance"]
  GETTABLEKS R9 R6 K16 ["Distance"]
  JUMPIFNOTLT R8 R9 [+5]
  GETTABLEKS R3 R7 K15 ["Instance"]
  GETTABLEKS R4 R7 K16 ["Distance"]
  GETTABLEKS R8 R0 K24 ["VisualizeBones"]
  JUMPIFNOT R8 [+19]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K25 ["getRigInfo"]
  GETTABLEKS R9 R0 K0 ["RootInstance"]
  CALL R8 1 4
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K26 ["getOrCreateMicroboneFolder"]
  CALL R12 0 1
  GETUPVAL R13 3
  MOVE R14 R1
  MOVE R15 R12
  CALL R13 2 2
  JUMPIFNOT R13 [+4]
  MOVE R15 R13
  MOVE R16 R13
  MOVE R17 R14
  RETURN R15 3
  JUMPIFNOT R3 [+35]
  MOVE R8 R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K25 ["getRigInfo"]
  GETTABLEKS R10 R0 K0 ["RootInstance"]
  CALL R9 1 4
  GETTABLEKS R14 R0 K0 ["RootInstance"]
  MOVE R17 R14
  NAMECALL R15 R8 K27 ["IsDescendantOf"]
  CALL R15 2 1
  MOVE R13 R15
  JUMPIFNOT R13 [+13]
  LOADK R17 K28 ["BasePart"]
  NAMECALL R15 R8 K29 ["IsA"]
  CALL R15 2 1
  MOVE R13 R15
  JUMPIFNOT R13 [+7]
  GETTABLEKS R16 R8 K30 ["Name"]
  GETTABLE R15 R10 R16
  JUMPIFNOTEQKNIL R15 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIFNOT R8 [+8]
  JUMPIFNOT R13 [+7]
  MOVE R14 R8
  MOVE R15 R3
  MOVE R16 R4
  RETURN R14 3
  RETURN R0 0
  LOADNIL R8
  RETURN R8 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R3 R1 K8 ["Packages"]
  GETTABLEKS R2 R3 K9 ["DraggerFramework"]
  GETIMPORT R3 K11 [require]
  GETTABLEKS R6 R1 K12 ["Src"]
  GETTABLEKS R5 R6 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["RigUtils"]
  CALL R3 1 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R7 R1 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Util"]
  GETTABLEKS R5 R6 K15 ["RigInfo"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R2 K16 ["Utility"]
  GETTABLEKS R6 R7 K17 ["Math"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R9 R1 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K18 ["Constants"]
  CALL R6 1 1
  DUPCLOSURE R7 K19 [PROTO_0]
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R5
  DUPCLOSURE R9 K21 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R8
  DUPCLOSURE R10 K22 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R9
  RETURN R10 1
