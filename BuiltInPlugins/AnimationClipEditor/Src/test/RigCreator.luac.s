PROTO_0:
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K3 ["Motor6D"]
  CALL R4 1 1
  SETTABLEKS R0 R4 K4 ["Part0"]
  SETTABLEKS R1 R4 K5 ["Part1"]
  SETTABLEKS R2 R4 K6 ["C0"]
  SETTABLEKS R3 R4 K7 ["C1"]
  SETTABLEKS R0 R4 K8 ["Parent"]
  RETURN R4 1

PROTO_1:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Model"]
  CALL R0 1 1
  LOADK R1 K4 ["Dummy"]
  SETTABLEKS R1 R0 K5 ["Name"]
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K6 ["Part"]
  CALL R1 1 1
  LOADK R2 K7 ["HumanoidRootPart"]
  SETTABLEKS R2 R1 K5 ["Name"]
  LOADB R2 1
  SETTABLEKS R2 R1 K8 ["Anchored"]
  LOADB R2 1
  SETTABLEKS R2 R1 K9 ["CanCollide"]
  LOADN R2 1
  SETTABLEKS R2 R1 K10 ["Transparency"]
  LOADN R3 2
  LOADN R4 2
  LOADN R5 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K12 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K13 ["Size"]
  SETTABLEKS R0 R1 K14 ["Parent"]
  GETIMPORT R2 K16 [CFrame.new]
  LOADN R3 0
  LOADK R4 K17 [5.2]
  LOADK R5 K18 [4.5]
  CALL R2 3 1
  SETTABLEKS R2 R1 K15 ["CFrame"]
  LOADK R2 K19 ["Smooth"]
  SETTABLEKS R2 R1 K20 ["BottomSurface"]
  LOADK R2 K19 ["Smooth"]
  SETTABLEKS R2 R1 K21 ["TopSurface"]
  SETTABLEKS R1 R0 K22 ["PrimaryPart"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K6 ["Part"]
  CALL R2 1 1
  LOADK R3 K23 ["Torso"]
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["Anchored"]
  LOADB R3 0
  SETTABLEKS R3 R2 K9 ["CanCollide"]
  LOADN R4 2
  LOADN R5 2
  LOADN R6 1
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K12 [Vector3.new]
  CALL R3 3 1
  SETTABLEKS R3 R2 K13 ["Size"]
  SETTABLEKS R0 R2 K14 ["Parent"]
  GETIMPORT R3 K16 [CFrame.new]
  LOADN R4 0
  LOADK R5 K17 [5.2]
  LOADK R6 K18 [4.5]
  CALL R3 3 1
  SETTABLEKS R3 R2 K15 ["CFrame"]
  LOADK R3 K19 ["Smooth"]
  SETTABLEKS R3 R2 K20 ["BottomSurface"]
  LOADK R3 K19 ["Smooth"]
  SETTABLEKS R3 R2 K21 ["TopSurface"]
  GETIMPORT R3 K16 [CFrame.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 255
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R3 12 1
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K24 ["Motor6D"]
  CALL R5 1 1
  SETTABLEKS R1 R5 K25 ["Part0"]
  SETTABLEKS R2 R5 K26 ["Part1"]
  SETTABLEKS R3 R5 K27 ["C0"]
  SETTABLEKS R3 R5 K28 ["C1"]
  SETTABLEKS R1 R5 K14 ["Parent"]
  MOVE R4 R5
  LOADK R5 K29 ["Root Hip"]
  SETTABLEKS R5 R4 K5 ["Name"]
  LOADK R5 K30 [0.1]
  SETTABLEKS R5 R4 K31 ["MaxVelocity"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K6 ["Part"]
  MOVE R7 R0
  CALL R5 2 1
  LOADK R6 K32 ["Left Leg"]
  SETTABLEKS R6 R5 K5 ["Name"]
  LOADB R6 0
  SETTABLEKS R6 R5 K8 ["Anchored"]
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["CanCollide"]
  LOADN R7 1
  LOADN R8 2
  LOADN R9 1
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K12 [Vector3.new]
  CALL R6 3 1
  SETTABLEKS R6 R5 K13 ["Size"]
  GETIMPORT R6 K16 [CFrame.new]
  LOADK R7 K33 [0.5]
  LOADK R8 K34 [3.2]
  LOADK R9 K18 [4.5]
  CALL R6 3 1
  SETTABLEKS R6 R5 K15 ["CFrame"]
  LOADK R6 K19 ["Smooth"]
  SETTABLEKS R6 R5 K20 ["BottomSurface"]
  LOADK R6 K19 ["Smooth"]
  SETTABLEKS R6 R5 K21 ["TopSurface"]
  GETIMPORT R7 K16 [CFrame.new]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 0
  CALL R7 3 1
  GETIMPORT R8 K36 [CFrame.fromAxisAngle]
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  FASTCALL VECTOR [+2]
  GETIMPORT R9 K12 [Vector3.new]
  CALL R9 3 1
  LOADK R10 K37 [-1.5707963267949]
  CALL R8 2 1
  MUL R6 R7 R8
  GETIMPORT R8 K16 [CFrame.new]
  LOADK R9 K38 [-0.5]
  LOADN R10 1
  LOADN R11 0
  CALL R8 3 1
  GETIMPORT R9 K36 [CFrame.fromAxisAngle]
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  FASTCALL VECTOR [+2]
  GETIMPORT R10 K12 [Vector3.new]
  CALL R10 3 1
  LOADK R11 K37 [-1.5707963267949]
  CALL R9 2 1
  MUL R7 R8 R9
  GETIMPORT R9 K2 [Instance.new]
  LOADK R10 K24 ["Motor6D"]
  CALL R9 1 1
  SETTABLEKS R2 R9 K25 ["Part0"]
  SETTABLEKS R5 R9 K26 ["Part1"]
  SETTABLEKS R6 R9 K27 ["C0"]
  SETTABLEKS R7 R9 K28 ["C1"]
  SETTABLEKS R2 R9 K14 ["Parent"]
  MOVE R8 R9
  LOADK R9 K39 ["Left Hip"]
  SETTABLEKS R9 R8 K5 ["Name"]
  LOADK R9 K30 [0.1]
  SETTABLEKS R9 R8 K31 ["MaxVelocity"]
  GETIMPORT R9 K2 [Instance.new]
  LOADK R10 K6 ["Part"]
  MOVE R11 R0
  CALL R9 2 1
  LOADK R10 K40 ["Right Leg"]
  SETTABLEKS R10 R9 K5 ["Name"]
  LOADB R10 0
  SETTABLEKS R10 R9 K8 ["Anchored"]
  LOADB R10 0
  SETTABLEKS R10 R9 K9 ["CanCollide"]
  LOADN R11 1
  LOADN R12 2
  LOADN R13 1
  FASTCALL VECTOR [+2]
  GETIMPORT R10 K12 [Vector3.new]
  CALL R10 3 1
  SETTABLEKS R10 R9 K13 ["Size"]
  GETIMPORT R10 K16 [CFrame.new]
  LOADK R11 K38 [-0.5]
  LOADK R12 K34 [3.2]
  LOADK R13 K18 [4.5]
  CALL R10 3 1
  SETTABLEKS R10 R9 K15 ["CFrame"]
  LOADK R10 K19 ["Smooth"]
  SETTABLEKS R10 R9 K20 ["BottomSurface"]
  LOADK R10 K19 ["Smooth"]
  SETTABLEKS R10 R9 K21 ["TopSurface"]
  GETIMPORT R11 K16 [CFrame.new]
  LOADN R12 1
  LOADN R13 255
  LOADN R14 0
  CALL R11 3 1
  GETIMPORT R12 K36 [CFrame.fromAxisAngle]
  LOADN R14 0
  LOADN R15 255
  LOADN R16 0
  FASTCALL VECTOR [+2]
  GETIMPORT R13 K12 [Vector3.new]
  CALL R13 3 1
  LOADK R14 K37 [-1.5707963267949]
  CALL R12 2 1
  MUL R10 R11 R12
  GETIMPORT R12 K16 [CFrame.new]
  LOADK R13 K33 [0.5]
  LOADN R14 1
  LOADN R15 0
  CALL R12 3 1
  GETIMPORT R13 K36 [CFrame.fromAxisAngle]
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K12 [Vector3.new]
  CALL R14 3 1
  LOADK R15 K41 [1.5707963267949]
  CALL R13 2 1
  MUL R11 R12 R13
  GETIMPORT R13 K2 [Instance.new]
  LOADK R14 K24 ["Motor6D"]
  CALL R13 1 1
  SETTABLEKS R2 R13 K25 ["Part0"]
  SETTABLEKS R9 R13 K26 ["Part1"]
  SETTABLEKS R10 R13 K27 ["C0"]
  SETTABLEKS R11 R13 K28 ["C1"]
  SETTABLEKS R2 R13 K14 ["Parent"]
  MOVE R12 R13
  LOADK R13 K42 ["Right Hip"]
  SETTABLEKS R13 R12 K5 ["Name"]
  LOADK R13 K30 [0.1]
  SETTABLEKS R13 R12 K31 ["MaxVelocity"]
  GETIMPORT R13 K2 [Instance.new]
  LOADK R14 K6 ["Part"]
  MOVE R15 R0
  CALL R13 2 1
  LOADK R14 K43 ["Left Arm"]
  SETTABLEKS R14 R13 K5 ["Name"]
  LOADB R14 0
  SETTABLEKS R14 R13 K8 ["Anchored"]
  LOADB R14 0
  SETTABLEKS R14 R13 K9 ["CanCollide"]
  LOADN R15 1
  LOADN R16 2
  LOADN R17 1
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K12 [Vector3.new]
  CALL R14 3 1
  SETTABLEKS R14 R13 K13 ["Size"]
  GETIMPORT R14 K16 [CFrame.new]
  LOADK R15 K44 [1.5]
  LOADK R16 K17 [5.2]
  LOADK R17 K18 [4.5]
  CALL R14 3 1
  SETTABLEKS R14 R13 K15 ["CFrame"]
  LOADK R14 K19 ["Smooth"]
  SETTABLEKS R14 R13 K20 ["BottomSurface"]
  LOADK R14 K19 ["Smooth"]
  SETTABLEKS R14 R13 K21 ["TopSurface"]
  GETIMPORT R15 K16 [CFrame.new]
  LOADN R16 255
  LOADK R17 K33 [0.5]
  LOADN R18 0
  CALL R15 3 1
  GETIMPORT R16 K36 [CFrame.fromAxisAngle]
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K12 [Vector3.new]
  CALL R17 3 1
  LOADK R18 K37 [-1.5707963267949]
  CALL R16 2 1
  MUL R14 R15 R16
  GETIMPORT R16 K16 [CFrame.new]
  LOADK R17 K33 [0.5]
  LOADK R18 K33 [0.5]
  LOADN R19 0
  CALL R16 3 1
  GETIMPORT R17 K36 [CFrame.fromAxisAngle]
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  FASTCALL VECTOR [+2]
  GETIMPORT R18 K12 [Vector3.new]
  CALL R18 3 1
  LOADK R19 K37 [-1.5707963267949]
  CALL R17 2 1
  MUL R15 R16 R17
  GETIMPORT R17 K2 [Instance.new]
  LOADK R18 K24 ["Motor6D"]
  CALL R17 1 1
  SETTABLEKS R2 R17 K25 ["Part0"]
  SETTABLEKS R13 R17 K26 ["Part1"]
  SETTABLEKS R14 R17 K27 ["C0"]
  SETTABLEKS R15 R17 K28 ["C1"]
  SETTABLEKS R2 R17 K14 ["Parent"]
  MOVE R16 R17
  LOADK R17 K45 ["Left Shoulder"]
  SETTABLEKS R17 R16 K5 ["Name"]
  LOADK R17 K30 [0.1]
  SETTABLEKS R17 R16 K31 ["MaxVelocity"]
  GETIMPORT R17 K2 [Instance.new]
  LOADK R18 K6 ["Part"]
  MOVE R19 R0
  CALL R17 2 1
  LOADK R18 K46 ["Right Arm"]
  SETTABLEKS R18 R17 K5 ["Name"]
  LOADB R18 0
  SETTABLEKS R18 R17 K8 ["Anchored"]
  LOADB R18 0
  SETTABLEKS R18 R17 K9 ["CanCollide"]
  LOADN R19 1
  LOADN R20 2
  LOADN R21 1
  FASTCALL VECTOR [+2]
  GETIMPORT R18 K12 [Vector3.new]
  CALL R18 3 1
  SETTABLEKS R18 R17 K13 ["Size"]
  GETIMPORT R18 K16 [CFrame.new]
  LOADK R19 K47 [-1.5]
  LOADK R20 K17 [5.2]
  LOADK R21 K18 [4.5]
  CALL R18 3 1
  SETTABLEKS R18 R17 K15 ["CFrame"]
  LOADK R18 K19 ["Smooth"]
  SETTABLEKS R18 R17 K20 ["BottomSurface"]
  LOADK R18 K19 ["Smooth"]
  SETTABLEKS R18 R17 K21 ["TopSurface"]
  GETIMPORT R19 K16 [CFrame.new]
  LOADN R20 1
  LOADK R21 K33 [0.5]
  LOADN R22 0
  CALL R19 3 1
  GETIMPORT R20 K36 [CFrame.fromAxisAngle]
  LOADN R22 0
  LOADN R23 255
  LOADN R24 0
  FASTCALL VECTOR [+2]
  GETIMPORT R21 K12 [Vector3.new]
  CALL R21 3 1
  LOADK R22 K37 [-1.5707963267949]
  CALL R20 2 1
  MUL R18 R19 R20
  GETIMPORT R20 K16 [CFrame.new]
  LOADK R21 K38 [-0.5]
  LOADK R22 K33 [0.5]
  LOADN R23 0
  CALL R20 3 1
  GETIMPORT R21 K36 [CFrame.fromAxisAngle]
  LOADN R23 0
  LOADN R24 1
  LOADN R25 0
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K12 [Vector3.new]
  CALL R22 3 1
  LOADK R23 K41 [1.5707963267949]
  CALL R21 2 1
  MUL R19 R20 R21
  GETIMPORT R21 K2 [Instance.new]
  LOADK R22 K24 ["Motor6D"]
  CALL R21 1 1
  SETTABLEKS R2 R21 K25 ["Part0"]
  SETTABLEKS R17 R21 K26 ["Part1"]
  SETTABLEKS R18 R21 K27 ["C0"]
  SETTABLEKS R19 R21 K28 ["C1"]
  SETTABLEKS R2 R21 K14 ["Parent"]
  MOVE R20 R21
  LOADK R21 K48 ["Right Shoulder"]
  SETTABLEKS R21 R20 K5 ["Name"]
  LOADK R21 K30 [0.1]
  SETTABLEKS R21 R20 K31 ["MaxVelocity"]
  GETIMPORT R21 K2 [Instance.new]
  LOADK R22 K6 ["Part"]
  MOVE R23 R0
  CALL R21 2 1
  LOADK R22 K49 ["Head"]
  SETTABLEKS R22 R21 K5 ["Name"]
  LOADB R22 0
  SETTABLEKS R22 R21 K8 ["Anchored"]
  LOADB R22 1
  SETTABLEKS R22 R21 K9 ["CanCollide"]
  LOADN R23 2
  LOADN R24 1
  LOADN R25 1
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K12 [Vector3.new]
  CALL R22 3 1
  SETTABLEKS R22 R21 K13 ["Size"]
  GETIMPORT R22 K16 [CFrame.new]
  LOADN R23 0
  LOADK R24 K50 [6.7]
  LOADK R25 K18 [4.5]
  CALL R22 3 1
  SETTABLEKS R22 R21 K15 ["CFrame"]
  LOADK R22 K19 ["Smooth"]
  SETTABLEKS R22 R21 K20 ["BottomSurface"]
  LOADK R22 K19 ["Smooth"]
  SETTABLEKS R22 R21 K21 ["TopSurface"]
  GETIMPORT R22 K16 [CFrame.new]
  LOADN R23 0
  LOADN R24 1
  LOADN R25 0
  LOADN R26 255
  LOADN R27 0
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  LOADN R31 1
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  CALL R22 12 1
  GETIMPORT R23 K16 [CFrame.new]
  LOADN R24 0
  LOADK R25 K38 [-0.5]
  LOADN R26 0
  LOADN R27 255
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  CALL R23 12 1
  GETIMPORT R25 K2 [Instance.new]
  LOADK R26 K24 ["Motor6D"]
  CALL R25 1 1
  SETTABLEKS R2 R25 K25 ["Part0"]
  SETTABLEKS R21 R25 K26 ["Part1"]
  SETTABLEKS R22 R25 K27 ["C0"]
  SETTABLEKS R23 R25 K28 ["C1"]
  SETTABLEKS R2 R25 K14 ["Parent"]
  MOVE R24 R25
  LOADK R25 K51 ["Neck"]
  SETTABLEKS R25 R24 K5 ["Name"]
  LOADK R25 K30 [0.1]
  SETTABLEKS R25 R24 K31 ["MaxVelocity"]
  GETIMPORT R25 K2 [Instance.new]
  LOADK R26 K52 ["Decal"]
  MOVE R27 R21
  CALL R25 2 1
  LOADK R26 K53 ["Face"]
  SETTABLEKS R26 R25 K5 ["Name"]
  LOADK R26 K54 ["rbxasset://textures/face.png"]
  SETTABLEKS R26 R25 K55 ["Texture"]
  GETIMPORT R26 K2 [Instance.new]
  LOADK R27 K56 ["Humanoid"]
  MOVE R28 R0
  CALL R26 2 0
  GETIMPORT R26 K58 [workspace]
  SETTABLEKS R26 R0 K14 ["Parent"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CreateR6Rig"]
  CALL R0 0 1
  GETIMPORT R1 K3 [Instance.new]
  LOADK R2 K4 ["CharacterMesh"]
  MOVE R3 R0
  CALL R1 2 1
  LOADK R2 K5 [27111419]
  SETTABLEKS R2 R1 K6 ["MeshId"]
  LOADN R2 2
  SETTABLEKS R2 R1 K7 ["BodyPart"]
  GETIMPORT R2 K3 [Instance.new]
  LOADK R3 K4 ["CharacterMesh"]
  MOVE R4 R0
  CALL R2 2 1
  LOADK R3 K8 [27111864]
  SETTABLEKS R3 R2 K6 ["MeshId"]
  LOADN R3 3
  SETTABLEKS R3 R2 K7 ["BodyPart"]
  GETIMPORT R3 K3 [Instance.new]
  LOADK R4 K4 ["CharacterMesh"]
  MOVE R5 R0
  CALL R3 2 1
  LOADK R4 K9 [27111857]
  SETTABLEKS R4 R3 K6 ["MeshId"]
  LOADN R4 4
  SETTABLEKS R4 R3 K7 ["BodyPart"]
  GETIMPORT R4 K3 [Instance.new]
  LOADK R5 K4 ["CharacterMesh"]
  MOVE R6 R0
  CALL R4 2 1
  LOADK R5 K10 [27111882]
  SETTABLEKS R5 R4 K6 ["MeshId"]
  LOADN R5 5
  SETTABLEKS R5 R4 K7 ["BodyPart"]
  GETIMPORT R5 K3 [Instance.new]
  LOADK R6 K4 ["CharacterMesh"]
  MOVE R7 R0
  CALL R5 2 1
  LOADK R6 K11 [27111894]
  SETTABLEKS R6 R5 K6 ["MeshId"]
  LOADN R6 1
  SETTABLEKS R6 R5 K7 ["BodyPart"]
  GETIMPORT R6 K3 [Instance.new]
  LOADK R7 K12 ["SpecialMesh"]
  GETTABLEKS R8 R0 K13 ["Head"]
  CALL R6 2 1
  LOADN R7 0
  SETTABLEKS R7 R6 K14 ["MeshType"]
  LOADK R8 K15 [1.25]
  LOADK R9 K15 [1.25]
  LOADK R10 K15 [1.25]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K17 [Vector3.new]
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["Scale"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CreateR6Rig"]
  CALL R0 0 1
  GETIMPORT R1 K3 [Instance.new]
  LOADK R2 K4 ["CharacterMesh"]
  MOVE R3 R0
  CALL R1 2 1
  LOADK R2 K5 [82907977]
  SETTABLEKS R2 R1 K6 ["MeshId"]
  LOADN R2 2
  SETTABLEKS R2 R1 K7 ["BodyPart"]
  GETIMPORT R2 K3 [Instance.new]
  LOADK R3 K4 ["CharacterMesh"]
  MOVE R4 R0
  CALL R2 2 1
  LOADK R3 K8 [82908019]
  SETTABLEKS R3 R2 K6 ["MeshId"]
  LOADN R3 3
  SETTABLEKS R3 R2 K7 ["BodyPart"]
  GETIMPORT R3 K3 [Instance.new]
  LOADK R4 K4 ["CharacterMesh"]
  MOVE R5 R0
  CALL R3 2 1
  LOADK R4 K9 [81487640]
  SETTABLEKS R4 R3 K6 ["MeshId"]
  LOADN R4 4
  SETTABLEKS R4 R3 K7 ["BodyPart"]
  GETIMPORT R4 K3 [Instance.new]
  LOADK R5 K4 ["CharacterMesh"]
  MOVE R6 R0
  CALL R4 2 1
  LOADK R5 K10 [81487710]
  SETTABLEKS R5 R4 K6 ["MeshId"]
  LOADN R5 5
  SETTABLEKS R5 R4 K7 ["BodyPart"]
  GETIMPORT R5 K3 [Instance.new]
  LOADK R6 K4 ["CharacterMesh"]
  MOVE R7 R0
  CALL R5 2 1
  LOADK R6 K11 [82907945]
  SETTABLEKS R6 R5 K6 ["MeshId"]
  LOADN R6 1
  SETTABLEKS R6 R5 K7 ["BodyPart"]
  GETIMPORT R6 K3 [Instance.new]
  LOADK R7 K12 ["SpecialMesh"]
  GETTABLEKS R8 R0 K13 ["Head"]
  CALL R6 2 1
  LOADN R7 0
  SETTABLEKS R7 R6 K14 ["MeshType"]
  LOADK R8 K15 [1.25]
  LOADK R9 K15 [1.25]
  LOADK R10 K15 [1.25]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K17 [Vector3.new]
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["Scale"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CreateR6Rig"]
  CALL R0 0 1
  GETIMPORT R1 K3 [Instance.new]
  LOADK R2 K4 ["CharacterMesh"]
  MOVE R3 R0
  CALL R1 2 1
  LOADK R2 K5 [83001137]
  SETTABLEKS R2 R1 K6 ["MeshId"]
  LOADN R2 2
  SETTABLEKS R2 R1 K7 ["BodyPart"]
  GETIMPORT R2 K3 [Instance.new]
  LOADK R3 K4 ["CharacterMesh"]
  MOVE R4 R0
  CALL R2 2 1
  LOADK R3 K8 [83001181]
  SETTABLEKS R3 R2 K6 ["MeshId"]
  LOADN R3 3
  SETTABLEKS R3 R2 K7 ["BodyPart"]
  GETIMPORT R3 K3 [Instance.new]
  LOADK R4 K4 ["CharacterMesh"]
  MOVE R5 R0
  CALL R3 2 1
  LOADK R4 K9 [81628361]
  SETTABLEKS R4 R3 K6 ["MeshId"]
  LOADN R4 4
  SETTABLEKS R4 R3 K7 ["BodyPart"]
  GETIMPORT R4 K3 [Instance.new]
  LOADK R5 K4 ["CharacterMesh"]
  MOVE R6 R0
  CALL R4 2 1
  LOADK R5 K10 [81628308]
  SETTABLEKS R5 R4 K6 ["MeshId"]
  LOADN R5 5
  SETTABLEKS R5 R4 K7 ["BodyPart"]
  GETIMPORT R5 K3 [Instance.new]
  LOADK R6 K4 ["CharacterMesh"]
  MOVE R7 R0
  CALL R5 2 1
  LOADK R6 K11 [82987757]
  SETTABLEKS R6 R5 K6 ["MeshId"]
  LOADN R6 1
  SETTABLEKS R6 R5 K7 ["BodyPart"]
  GETIMPORT R6 K3 [Instance.new]
  LOADK R7 K12 ["SpecialMesh"]
  GETTABLEKS R8 R0 K13 ["Head"]
  CALL R6 2 1
  LOADN R7 0
  SETTABLEKS R7 R6 K14 ["MeshType"]
  LOADK R8 K15 [1.25]
  LOADK R9 K15 [1.25]
  LOADK R10 K15 [1.25]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K17 [Vector3.new]
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["Scale"]
  RETURN R0 1

PROTO_5:
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["InsertService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R4 K4 [9425124156]
  NAMECALL R2 R2 K5 ["LoadAsset"]
  CALL R2 2 1
  NAMECALL R2 R2 K6 ["GetChildren"]
  CALL R2 1 1
  GETTABLEN R1 R2 1
  GETIMPORT R2 K8 [pairs]
  NAMECALL R3 R0 K6 ["GetChildren"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R9 R6 K9 ["Name"]
  NAMECALL R7 R1 K10 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOT R7 [+3]
  NAMECALL R8 R7 K11 ["Destroy"]
  CALL R8 1 0
  SETTABLEKS R1 R6 K12 ["Parent"]
  FORGLOOP R2 2 [-12]
  NAMECALL R2 R0 K11 ["Destroy"]
  CALL R2 1 0
  MOVE R0 R1
  GETIMPORT R2 K14 [workspace]
  SETTABLEKS R2 R0 K12 ["Parent"]
  LOADK R4 K15 ["Humanoid"]
  NAMECALL R2 R0 K16 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K17 ["BuildRigFromAttachments"]
  CALL R3 1 0
  LOADK R5 K18 ["Head"]
  LOADN R6 1
  NAMECALL R3 R0 K19 ["WaitForChild"]
  CALL R3 3 1
  LOADK R6 K20 ["face"]
  NAMECALL R4 R3 K10 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIF R4 [+4]
  LOADK R6 K21 ["Face"]
  NAMECALL R4 R3 K10 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOTEQKNIL R4 [+12]
  GETIMPORT R5 K24 [Instance.new]
  LOADK R6 K25 ["Decal"]
  MOVE R7 R3
  CALL R5 2 1
  LOADK R6 K20 ["face"]
  SETTABLEKS R6 R5 K9 ["Name"]
  LOADK R6 K26 ["rbxasset://textures/face.png"]
  SETTABLEKS R6 R5 K27 ["Texture"]
  RETURN R0 1

PROTO_6:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Model"]
  GETIMPORT R3 K5 [workspace]
  CALL R1 2 1
  LOADNIL R2
  LOADNIL R3
  JUMPIFEQKNIL R0 [+89]
  GETIMPORT R4 K7 [game]
  LOADK R6 K8 ["AssetService"]
  NAMECALL R4 R4 K9 ["GetService"]
  CALL R4 2 1
  MOVE R6 R0
  NAMECALL R4 R4 K10 ["GetAssetIdsForPackage"]
  CALL R4 2 1
  GETIMPORT R5 K12 [pairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETIMPORT R10 K7 [game]
  LOADK R12 K13 ["InsertService"]
  NAMECALL R10 R10 K9 ["GetService"]
  CALL R10 2 1
  MOVE R12 R9
  NAMECALL R10 R10 K14 ["LoadAsset"]
  CALL R10 2 1
  LOADK R13 K15 ["R15ArtistIntent"]
  NAMECALL R11 R10 K16 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFNOT R11 [+14]
  GETIMPORT R11 K12 [pairs]
  GETTABLEKS R12 R10 K15 ["R15ArtistIntent"]
  NAMECALL R12 R12 K17 ["GetChildren"]
  CALL R12 1 -1
  CALL R11 -1 3
  FORGPREP_NEXT R11
  SETTABLEKS R1 R15 K18 ["Parent"]
  FORGLOOP R11 2 [-3]
  JUMP [+42]
  LOADK R13 K19 ["R15"]
  NAMECALL R11 R10 K16 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFNOT R11 [+14]
  GETIMPORT R11 K12 [pairs]
  GETTABLEKS R12 R10 K19 ["R15"]
  NAMECALL R12 R12 K17 ["GetChildren"]
  CALL R12 1 -1
  CALL R11 -1 3
  FORGPREP_NEXT R11
  SETTABLEKS R1 R15 K18 ["Parent"]
  FORGLOOP R11 2 [-3]
  JUMP [+23]
  LOADK R13 K20 ["face"]
  NAMECALL R11 R10 K16 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFNOT R11 [+3]
  GETTABLEKS R3 R10 K20 ["face"]
  JUMP [+15]
  LOADK R13 K21 ["Face"]
  NAMECALL R11 R10 K16 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFNOT R11 [+3]
  GETTABLEKS R3 R10 K21 ["Face"]
  JUMP [+7]
  LOADK R13 K22 ["Mesh"]
  NAMECALL R11 R10 K16 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFNOT R11 [+2]
  GETTABLEKS R2 R10 K22 ["Mesh"]
  FORGLOOP R5 2 [-72]
  GETUPVAL R4 0
  MOVE R5 R1
  CALL R4 1 1
  JUMPIFNOT R2 [+11]
  GETTABLEKS R6 R4 K23 ["Head"]
  GETTABLEKS R5 R6 K22 ["Mesh"]
  NAMECALL R5 R5 K24 ["Destroy"]
  CALL R5 1 0
  GETTABLEKS R5 R4 K23 ["Head"]
  SETTABLEKS R5 R2 K18 ["Parent"]
  JUMPIFNOT R3 [+26]
  GETIMPORT R5 K12 [pairs]
  GETTABLEKS R6 R4 K23 ["Head"]
  NAMECALL R6 R6 K17 ["GetChildren"]
  CALL R6 1 -1
  CALL R5 -1 3
  FORGPREP_NEXT R5
  GETTABLEKS R10 R9 K25 ["Name"]
  JUMPIFEQKS R10 K20 ["face"] [+5]
  GETTABLEKS R10 R9 K25 ["Name"]
  JUMPIFNOTEQKS R10 K21 ["Face"] [+4]
  NAMECALL R10 R9 K24 ["Destroy"]
  CALL R10 1 0
  FORGLOOP R5 2 [-12]
  GETTABLEKS R5 R4 K23 ["Head"]
  SETTABLEKS R5 R3 K18 ["Parent"]
  RETURN R4 1

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+7]
  GETIMPORT R2 K2 [error]
  LOADK R4 K3 ["RigCreator couldn't find Rig with name "]
  MOVE R5 R0
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0
  NAMECALL R2 R1 K4 ["Clone"]
  CALL R2 1 1
  LOADK R5 K5 ["Humanoid"]
  NAMECALL R3 R2 K6 ["FindFirstChildOfClass"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  NAMECALL R4 R3 K7 ["BuildRigFromAttachments"]
  CALL R4 1 0
  GETIMPORT R4 K9 [workspace]
  SETTABLEKS R4 R2 K10 ["Parent"]
  RETURN R2 1
  RETURN R0 0

PROTO_8:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Model"]
  CALL R0 1 1
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K4 ["Part"]
  MOVE R3 R0
  CALL R1 2 1
  LOADK R2 K5 ["HumanoidRootPart"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K4 ["Part"]
  MOVE R4 R0
  CALL R2 2 1
  LOADK R3 K7 ["UpperTorso"]
  SETTABLEKS R3 R2 K6 ["Name"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K4 ["Part"]
  MOVE R5 R0
  CALL R3 2 1
  LOADK R4 K8 ["Head"]
  SETTABLEKS R4 R3 K6 ["Name"]
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K9 ["Motor6D"]
  MOVE R6 R2
  CALL R4 2 1
  SETTABLEKS R1 R4 K10 ["Part0"]
  SETTABLEKS R2 R4 K11 ["Part1"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K9 ["Motor6D"]
  MOVE R7 R3
  CALL R5 2 1
  SETTABLEKS R2 R5 K10 ["Part0"]
  SETTABLEKS R3 R5 K11 ["Part1"]
  GETIMPORT R6 K2 [Instance.new]
  LOADK R7 K12 ["Attachment"]
  MOVE R8 R1
  CALL R6 2 1
  LOADK R7 K13 ["RootAttachment"]
  SETTABLEKS R7 R6 K6 ["Name"]
  GETIMPORT R7 K2 [Instance.new]
  LOADK R8 K12 ["Attachment"]
  MOVE R9 R2
  CALL R7 2 1
  LOADK R8 K13 ["RootAttachment"]
  SETTABLEKS R8 R7 K6 ["Name"]
  GETIMPORT R8 K2 [Instance.new]
  LOADK R9 K12 ["Attachment"]
  MOVE R10 R2
  CALL R8 2 1
  LOADK R9 K14 ["NeckAttachment"]
  SETTABLEKS R9 R8 K6 ["Name"]
  GETIMPORT R9 K2 [Instance.new]
  LOADK R10 K12 ["Attachment"]
  MOVE R11 R3
  CALL R9 2 1
  LOADK R10 K14 ["NeckAttachment"]
  SETTABLEKS R10 R9 K6 ["Name"]
  GETIMPORT R10 K2 [Instance.new]
  LOADK R11 K15 ["BallSocketConstraint"]
  MOVE R12 R0
  CALL R10 2 1
  LOADB R11 0
  SETTABLEKS R11 R10 K16 ["Enabled"]
  SETTABLEKS R8 R10 K17 ["Attachment0"]
  SETTABLEKS R9 R10 K18 ["Attachment1"]
  GETIMPORT R11 K2 [Instance.new]
  LOADK R12 K19 ["AnimationController"]
  MOVE R13 R0
  CALL R11 2 0
  GETIMPORT R11 K2 [Instance.new]
  LOADK R12 K20 ["Bone"]
  MOVE R13 R3
  CALL R11 2 1
  LOADK R12 K21 ["Jaw"]
  SETTABLEKS R12 R11 K6 ["Name"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["InsertService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K4 ["rbxasset://models/RigBuilder/AnthroRigs.rbxm"]
  NAMECALL R2 R1 K5 ["LoadLocalAsset"]
  CALL R2 2 1
  DUPCLOSURE R3 K6 [PROTO_0]
  DUPCLOSURE R4 K7 [PROTO_1]
  SETTABLEKS R4 R0 K8 ["CreateR6Rig"]
  DUPCLOSURE R4 K9 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K10 ["CreateR6MeshRig"]
  DUPCLOSURE R4 K11 [PROTO_3]
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K12 ["CreateR6MeshBoyRig"]
  DUPCLOSURE R4 K13 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K14 ["CreateR6MeshGirlRig"]
  DUPCLOSURE R4 K15 [PROTO_5]
  DUPCLOSURE R5 K16 [PROTO_6]
  CAPTURE VAL R4
  SETTABLEKS R5 R0 K17 ["BuildR15Rig"]
  DUPCLOSURE R5 K18 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R5 R0 K19 ["BuildAnthroRig"]
  DUPCLOSURE R5 K20 [PROTO_8]
  SETTABLEKS R5 R0 K21 ["buildTestRig"]
  RETURN R0 1
