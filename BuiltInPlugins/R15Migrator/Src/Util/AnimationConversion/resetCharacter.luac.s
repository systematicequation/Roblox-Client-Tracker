PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["Part0"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["Part0"]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K2 ["Part1"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["Part1"]
  GETTABLEKS R1 R0 K0 ["Part0"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["Part1"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["Part0"]
  GETTABLEKS R3 R0 K3 ["Name"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+9]
  GETIMPORT R2 K6 [Instance.new]
  LOADK R3 K7 ["Motor6D"]
  CALL R2 1 1
  MOVE R1 R2
  GETTABLEKS R2 R0 K0 ["Part0"]
  SETTABLEKS R2 R1 K8 ["Parent"]
  GETIMPORT R2 K10 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  SETTABLE R6 R1 R5
  FORGLOOP R2 2 [-2]
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 8 0
  DUPTABLE R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
  LOADK R3 K7 ["RootJoint"]
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADK R3 K8 ["HumanoidRootPart"]
  SETTABLEKS R3 R2 K1 ["Part0"]
  LOADK R3 K9 ["Torso"]
  SETTABLEKS R3 R2 K2 ["Part1"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 255
  LOADK R8 K13 [0]
  LOADK R9 K13 [0]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R3 12 1
  SETTABLEKS R3 R2 K3 ["C0"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 255
  LOADK R8 K13 [0]
  LOADK R9 K13 [0]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R3 12 1
  SETTABLEKS R3 R2 K4 ["C1"]
  LOADK R3 K14 [0.1]
  SETTABLEKS R3 R2 K5 ["MaxVelocity"]
  SETTABLEKS R2 R1 K7 ["RootJoint"]
  DUPTABLE R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
  LOADK R3 K15 ["Left Hip"]
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADK R3 K9 ["Torso"]
  SETTABLEKS R3 R2 K1 ["Part0"]
  LOADK R3 K16 ["Left Leg"]
  SETTABLEKS R3 R2 K2 ["Part1"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADN R4 255
  LOADN R5 255
  LOADN R6 0
  LOADK R7 K13 [0]
  LOADK R8 K13 [0]
  LOADN R9 255
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  CALL R3 12 1
  SETTABLEKS R3 R2 K3 ["C0"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADK R4 K17 [-0.5]
  LOADN R5 1
  LOADN R6 0
  LOADK R7 K13 [0]
  LOADK R8 K13 [0]
  LOADN R9 255
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  CALL R3 12 1
  SETTABLEKS R3 R2 K4 ["C1"]
  LOADK R3 K14 [0.1]
  SETTABLEKS R3 R2 K5 ["MaxVelocity"]
  SETTABLEKS R2 R1 K15 ["Left Hip"]
  DUPTABLE R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
  LOADK R3 K18 ["Left Shoulder"]
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADK R3 K9 ["Torso"]
  SETTABLEKS R3 R2 K1 ["Part0"]
  LOADK R3 K19 ["Left Arm"]
  SETTABLEKS R3 R2 K2 ["Part1"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADN R4 255
  LOADK R5 K20 [0.5]
  LOADN R6 0
  LOADK R7 K13 [0]
  LOADK R8 K13 [0]
  LOADN R9 255
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  CALL R3 12 1
  SETTABLEKS R3 R2 K3 ["C0"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADK R4 K20 [0.5]
  LOADK R5 K20 [0.5]
  LOADN R6 0
  LOADK R7 K13 [0]
  LOADK R8 K13 [0]
  LOADN R9 255
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  CALL R3 12 1
  SETTABLEKS R3 R2 K4 ["C1"]
  LOADK R3 K14 [0.1]
  SETTABLEKS R3 R2 K5 ["MaxVelocity"]
  SETTABLEKS R2 R1 K18 ["Left Shoulder"]
  DUPTABLE R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
  LOADK R3 K21 ["Neck"]
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADK R3 K9 ["Torso"]
  SETTABLEKS R3 R2 K1 ["Part0"]
  LOADK R3 K22 ["Head"]
  SETTABLEKS R3 R2 K2 ["Part1"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADN R4 0
  LOADN R5 1
  LOADN R6 0
  LOADN R7 255
  LOADK R8 K13 [0]
  LOADK R9 K13 [0]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R3 12 1
  SETTABLEKS R3 R2 K3 ["C0"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADN R4 0
  LOADK R5 K17 [-0.5]
  LOADN R6 0
  LOADN R7 255
  LOADK R8 K13 [0]
  LOADK R9 K13 [0]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R3 12 1
  SETTABLEKS R3 R2 K4 ["C1"]
  LOADK R3 K14 [0.1]
  SETTABLEKS R3 R2 K5 ["MaxVelocity"]
  SETTABLEKS R2 R1 K21 ["Neck"]
  DUPTABLE R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
  LOADK R3 K23 ["Right Shoulder"]
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADK R3 K9 ["Torso"]
  SETTABLEKS R3 R2 K1 ["Part0"]
  LOADK R3 K24 ["Right Arm"]
  SETTABLEKS R3 R2 K2 ["Part1"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADN R4 1
  LOADK R5 K20 [0.5]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  LOADN R13 255
  LOADK R14 K13 [0]
  LOADK R15 K13 [0]
  CALL R3 12 1
  SETTABLEKS R3 R2 K3 ["C0"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADK R4 K17 [-0.5]
  LOADK R5 K20 [0.5]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  LOADN R13 255
  LOADK R14 K13 [0]
  LOADK R15 K13 [0]
  CALL R3 12 1
  SETTABLEKS R3 R2 K4 ["C1"]
  LOADK R3 K14 [0.1]
  SETTABLEKS R3 R2 K5 ["MaxVelocity"]
  SETTABLEKS R2 R1 K23 ["Right Shoulder"]
  DUPTABLE R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
  LOADK R3 K25 ["Right Hip"]
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADK R3 K9 ["Torso"]
  SETTABLEKS R3 R2 K1 ["Part0"]
  LOADK R3 K26 ["Right Leg"]
  SETTABLEKS R3 R2 K2 ["Part1"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADN R4 1
  LOADN R5 255
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  LOADN R13 255
  LOADK R14 K13 [0]
  LOADK R15 K13 [0]
  CALL R3 12 1
  SETTABLEKS R3 R2 K3 ["C0"]
  GETIMPORT R3 K12 [CFrame.new]
  LOADK R4 K20 [0.5]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  LOADN R13 255
  LOADK R14 K13 [0]
  LOADK R15 K13 [0]
  CALL R3 12 1
  SETTABLEKS R3 R2 K4 ["C1"]
  LOADK R3 K14 [0.1]
  SETTABLEKS R3 R2 K5 ["MaxVelocity"]
  SETTABLEKS R2 R1 K25 ["Right Hip"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  LOADK R5 K27 ["Humanoid"]
  NAMECALL R3 R0 K28 ["FindFirstChildWhichIsA"]
  CALL R3 2 1
  GETTABLEKS R4 R3 K29 ["RigType"]
  GETIMPORT R5 K33 [Enum.HumanoidRigType.R6]
  JUMPIFNOTEQ R4 R5 [+12]
  GETIMPORT R4 K35 [pairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_NEXT R4
  MOVE R9 R2
  MOVE R10 R8
  CALL R9 1 0
  FORGLOOP R4 2 [-4]
  RETURN R0 0
  NAMECALL R4 R3 K36 ["BuildRigFromAttachments"]
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADB R3 0
  SETTABLEKS R3 R1 K0 ["Anchored"]
  SETTABLEKS R2 R1 K1 ["CFrame"]
  NAMECALL R3 R0 K2 ["GetDescendants"]
  CALL R3 1 3
  FORGPREP R3
  LOADK R10 K3 ["JointInstance"]
  NAMECALL R8 R7 K4 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+26]
  GETTABLEKS R8 R7 K5 ["Enabled"]
  JUMPIFNOT R8 [+23]
  GETTABLEKS R8 R7 K6 ["Part0"]
  JUMPIFNOTEQ R8 R1 [+20]
  GETTABLEKS R11 R7 K6 ["Part0"]
  GETTABLEKS R10 R11 K1 ["CFrame"]
  GETTABLEKS R11 R7 K7 ["C0"]
  MUL R9 R10 R11
  GETTABLEKS R10 R7 K8 ["C1"]
  NAMECALL R10 R10 K9 ["Inverse"]
  CALL R10 1 1
  MUL R8 R9 R10
  GETUPVAL R9 0
  MOVE R10 R0
  GETTABLEKS R11 R7 K10 ["Part1"]
  MOVE R12 R8
  CALL R9 3 0
  FORGLOOP R3 2 [-32]
  RETURN R0 0

PROTO_3:
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K1 ["Accessory"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+21]
  LOADK R9 K3 ["Tool"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+16]
  LOADK R9 K4 ["Attachment"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R6 K5 ["Name"]
  JUMPIFNOTEQ R7 R1 [+2]
  RETURN R6 1
  GETUPVAL R7 0
  MOVE R8 R6
  MOVE R9 R1
  CALL R7 2 1
  JUMPIFNOT R7 [+1]
  RETURN R7 1
  FORGLOOP R2 2 [-27]
  RETURN R0 0

PROTO_4:
  NAMECALL R1 R0 K0 ["GetChildren"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K1 ["Accessory"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+51]
  LOADK R8 K3 ["Handle"]
  NAMECALL R6 R5 K4 ["FindFirstChild"]
  CALL R6 2 1
  LOADK R9 K5 ["Attachment"]
  NAMECALL R7 R6 K6 ["FindFirstChildWhichIsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+21]
  GETUPVAL R8 0
  MOVE R9 R0
  MOVE R10 R7
  CALL R8 2 1
  JUMPIFNOT R8 [+16]
  GETTABLEKS R12 R8 K7 ["Parent"]
  GETTABLEKS R11 R12 K8 ["CFrame"]
  GETTABLEKS R12 R8 K8 ["CFrame"]
  MUL R10 R11 R12
  GETTABLEKS R11 R7 K8 ["CFrame"]
  NAMECALL R11 R11 K9 ["Inverse"]
  CALL R11 1 1
  MUL R9 R10 R11
  SETTABLEKS R9 R6 K8 ["CFrame"]
  RETURN R0 0
  LOADK R13 K10 ["Head"]
  NAMECALL R11 R0 K4 ["FindFirstChild"]
  CALL R11 2 1
  GETTABLEKS R10 R11 K8 ["CFrame"]
  GETIMPORT R11 K12 [CFrame.new]
  LOADN R12 0
  LOADK R13 K13 [0.5]
  LOADN R14 0
  CALL R11 3 1
  MUL R9 R10 R11
  GETTABLEKS R10 R5 K14 ["AttachmentPoint"]
  NAMECALL R10 R10 K9 ["Inverse"]
  CALL R10 1 1
  MUL R8 R9 R10
  SETTABLEKS R8 R6 K8 ["CFrame"]
  FORGLOOP R1 2 [-57]
  RETURN R0 0

PROTO_5:
  NAMECALL R1 R0 K0 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K1 ["Script"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K3 ["Destroy"]
  CALL R6 1 0
  FORGLOOP R1 2 [-9]
  RETURN R0 0

PROTO_6:
  JUMPIF R1 [+4]
  GETIMPORT R2 K2 [CFrame.new]
  CALL R2 0 1
  MOVE R1 R2
  LOADK R5 K3 ["Humanoid"]
  NAMECALL R3 R0 K4 ["FindFirstChildWhichIsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["model does not contain humanoid"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  LOADK R4 K8 ["HumanoidRootPart"]
  NAMECALL R2 R0 K9 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+31]
  LOADK R6 K3 ["Humanoid"]
  NAMECALL R4 R0 K4 ["FindFirstChildWhichIsA"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K10 ["RigType"]
  GETIMPORT R4 K14 [Enum.HumanoidRigType.R6]
  JUMPIFNOTEQ R3 R4 [+22]
  GETIMPORT R3 K16 [Instance.new]
  LOADK R4 K17 ["Part"]
  MOVE R5 R0
  CALL R3 2 1
  MOVE R2 R3
  LOADK R3 K8 ["HumanoidRootPart"]
  SETTABLEKS R3 R2 K18 ["Name"]
  LOADN R4 2
  LOADN R5 2
  LOADN R6 1
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K20 [Vector3.new]
  CALL R3 3 1
  SETTABLEKS R3 R2 K21 ["Size"]
  LOADN R3 1
  SETTABLEKS R3 R2 K22 ["Transparency"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R2
  MOVE R6 R1
  CALL R3 3 0
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R3 1 0
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_1]
  DUPCLOSURE R1 K1 [PROTO_2]
  CAPTURE VAL R1
  DUPCLOSURE R2 K2 [PROTO_3]
  CAPTURE VAL R2
  DUPCLOSURE R3 K3 [PROTO_4]
  CAPTURE VAL R2
  DUPCLOSURE R4 K4 [PROTO_5]
  DUPCLOSURE R5 K5 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
