PROTO_0:
  GETUPVAL R2 0
  MOVE R4 R0
  GETUPVAL R5 1
  NAMECALL R2 R2 K0 ["findMatchingAccessoryAndAvatarAttachments"]
  CALL R2 3 2
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R4
  RETURN R4 1
  SETTABLEKS R0 R1 K1 ["Part0"]
  GETTABLEKS R4 R2 K2 ["CFrame"]
  SETTABLEKS R4 R1 K3 ["C0"]
  GETTABLEKS R4 R3 K2 ["CFrame"]
  SETTABLEKS R4 R1 K4 ["C1"]
  GETTABLEKS R4 R3 K5 ["Parent"]
  SETTABLEKS R4 R1 K6 ["Part1"]
  SETTABLEKS R0 R1 K5 ["Parent"]
  GETTABLEKS R4 R3 K5 ["Parent"]
  RETURN R4 1

PROTO_1:
  LOADK R3 K0 ["Handle"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+6]
  LOADK R4 K2 ["BasePart"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADB R3 0
  JUMPIFEQKNIL R1 [+5]
  LOADK R5 K2 ["BasePart"]
  NAMECALL R3 R1 K3 ["IsA"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  LOADK R4 K7 ["Weld"]
  NAMECALL R2 R1 K8 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R0 0
  GETIMPORT R2 K11 [Instance.new]
  LOADK R3 K7 ["Weld"]
  CALL R2 1 1
  GETUPVAL R4 1
  MOVE R6 R1
  GETUPVAL R7 2
  NAMECALL R4 R4 K12 ["findMatchingAccessoryAndAvatarAttachments"]
  CALL R4 3 2
  JUMPIFNOTEQKNIL R5 [+3]
  LOADNIL R3
  JUMP [+18]
  SETTABLEKS R1 R2 K13 ["Part0"]
  GETTABLEKS R6 R4 K14 ["CFrame"]
  SETTABLEKS R6 R2 K15 ["C0"]
  GETTABLEKS R6 R5 K14 ["CFrame"]
  SETTABLEKS R6 R2 K16 ["C1"]
  GETTABLEKS R6 R5 K17 ["Parent"]
  SETTABLEKS R6 R2 K18 ["Part1"]
  SETTABLEKS R1 R2 K17 ["Parent"]
  GETTABLEKS R3 R5 K17 ["Parent"]
  GETUPVAL R5 3
  DUPTABLE R6 K22 [{"accessoryHandle", "limb", "weld"}]
  SETTABLEKS R1 R6 K19 ["accessoryHandle"]
  SETTABLEKS R3 R6 K20 ["limb"]
  SETTABLEKS R2 R6 K21 ["weld"]
  FASTCALL2 TABLE_INSERT R5 R6 [+3]
  GETIMPORT R4 K25 [table.insert]
  CALL R4 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETTABLEKS R5 R4 K0 ["limb"]
  JUMPIFNOTEQKNIL R5 [+35]
  GETTABLEKS R6 R4 K1 ["accessoryHandle"]
  GETTABLEKS R7 R4 K2 ["weld"]
  GETUPVAL R8 1
  MOVE R10 R6
  GETUPVAL R11 2
  NAMECALL R8 R8 K3 ["findMatchingAccessoryAndAvatarAttachments"]
  CALL R8 3 2
  JUMPIFNOTEQKNIL R9 [+3]
  LOADNIL R5
  JUMP [+18]
  SETTABLEKS R6 R7 K4 ["Part0"]
  GETTABLEKS R10 R8 K5 ["CFrame"]
  SETTABLEKS R10 R7 K6 ["C0"]
  GETTABLEKS R10 R9 K5 ["CFrame"]
  SETTABLEKS R10 R7 K7 ["C1"]
  GETTABLEKS R10 R9 K8 ["Parent"]
  SETTABLEKS R10 R7 K9 ["Part1"]
  SETTABLEKS R6 R7 K8 ["Parent"]
  GETTABLEKS R5 R9 K8 ["Parent"]
  SETTABLEKS R5 R4 K0 ["limb"]
  FORGLOOP R0 2 [-39]
  RETURN R0 0

PROTO_3:
  LOADK R3 K0 ["Accessory"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETIMPORT R1 K4 [task.delay]
  LOADK R2 K5 [0.1]
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0
  LOADK R3 K6 ["BasePart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  GETUPVAL R1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["accessoryHandle"]
  GETTABLEKS R2 R3 K1 ["Parent"]
  GETUPVAL R3 0
  JUMPIFNOTEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_5:
  LOADK R3 K0 ["Accessory"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["filter"]
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R1 2 1
  SETUPVAL R1 0
  RETURN R0 0
  LOADK R3 K3 ["BasePart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+18]
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R5 K4 ["limb"]
  JUMPIFNOTEQ R6 R0 [+9]
  GETTABLEKS R6 R5 K5 ["weld"]
  LOADNIL R7
  SETTABLEKS R7 R6 K6 ["Parent"]
  LOADNIL R6
  SETTABLEKS R6 R5 K4 ["limb"]
  FORGLOOP R1 2 [-13]
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  NEWTABLE R0 0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  CAPTURE REF R0
  NEWCLOSURE R3 P2
  CAPTURE REF R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  NEWCLOSURE R4 P3
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWCLOSURE R5 P4
  CAPTURE REF R0
  CAPTURE UPVAL U3
  GETUPVAL R6 0
  NAMECALL R6 R6 K3 ["GetChildren"]
  CALL R6 1 3
  FORGPREP R6
  LOADK R13 K4 ["Accessory"]
  NAMECALL R11 R10 K5 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+7]
  GETIMPORT R11 K8 [task.delay]
  LOADK R12 K9 [0.1]
  MOVE R13 R2
  MOVE R14 R10
  CALL R11 3 0
  JUMP [+7]
  LOADK R13 K10 ["BasePart"]
  NAMECALL R11 R10 K5 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+2]
  MOVE R11 R3
  CALL R11 0 0
  FORGLOOP R6 2 [-20]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["ChildAdded"]
  MOVE R8 R4
  NAMECALL R6 R6 K12 ["Connect"]
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["ChildRemoved"]
  MOVE R9 R5
  NAMECALL R7 R7 K12 ["Connect"]
  CALL R7 2 1
  NEWCLOSURE R8 P5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CLOSEUPVALS R0
  RETURN R8 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useEffect"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AvatarToolsShared"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETTABLEKS R8 R1 K11 ["Util"]
  GETTABLEKS R7 R8 K14 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R6 R7 K15 ["AccessoryUtil"]
  DUPCLOSURE R7 K16 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  RETURN R7 1
