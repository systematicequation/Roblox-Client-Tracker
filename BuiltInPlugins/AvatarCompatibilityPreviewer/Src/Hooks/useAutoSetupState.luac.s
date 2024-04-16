PROTO_0:
  JUMPIFNOTEQKNIL R0 [+6]
  DUPTABLE R1 K1 [{"type"}]
  LOADK R2 K2 ["none"]
  SETTABLEKS R2 R1 K0 ["type"]
  RETURN R1 1
  DUPTABLE R1 K4 [{"type", "target"}]
  LOADK R2 K5 ["hasSelection"]
  SETTABLEKS R2 R1 K0 ["type"]
  SETTABLEKS R0 R1 K3 ["target"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["types"]
  GETTABLE R4 R5 R0
  GETTABLEKS R3 R4 K1 ["GuessMaxHeight"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["types"]
  GETTABLE R5 R6 R1
  GETTABLEKS R4 R5 K1 ["GuessMaxHeight"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["keys"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["types"]
  CALL R2 1 1
  GETIMPORT R3 K4 [table.sort]
  MOVE R4 R2
  DUPCLOSURE R5 K5 [PROTO_1]
  CAPTURE UPVAL U1
  CALL R3 2 0
  LOADNIL R3
  LOADNIL R4
  MOVE R5 R2
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["types"]
  GETTABLE R10 R11 R9
  GETTABLEKS R12 R1 K6 ["ExtentsSize"]
  GETTABLEKS R11 R12 K7 ["Y"]
  GETTABLEKS R12 R10 K8 ["GuessMaxHeight"]
  JUMPIFNOTLT R11 R12 [+4]
  MOVE R3 R9
  MOVE R4 R10
  JUMP [+2]
  FORGLOOP R5 2 [-16]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K9 [+4]
  LOADK R7 K9 ["No scaling type info chosen"]
  GETIMPORT R5 K11 [assert]
  CALL R5 2 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K12 ["setAvatarPartScaleTypeValueObjects"]
  MOVE R6 R0
  MOVE R7 R3
  CALL R5 2 0
  GETTABLEKS R5 R0 K13 ["Humanoid"]
  LOADK R7 K14 ["BodyTypeScale"]
  NAMECALL R5 R5 K15 ["FindFirstChild"]
  CALL R5 2 1
  LOADB R7 0
  JUMPIFEQKNIL R5 [+5]
  LOADK R9 K16 ["NumberValue"]
  NAMECALL R7 R5 K17 ["IsA"]
  CALL R7 2 1
  FASTCALL2K ASSERT R7 K18 [+4]
  LOADK R8 K18 ["Couldn't find BodyTypeScale"]
  GETIMPORT R6 K11 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R4 K14 ["BodyTypeScale"]
  SETTABLEKS R6 R5 K19 ["Value"]
  GETTABLEKS R6 R0 K13 ["Humanoid"]
  LOADK R8 K20 ["BodyProportionScale"]
  NAMECALL R6 R6 K15 ["FindFirstChild"]
  CALL R6 2 1
  LOADB R8 0
  JUMPIFEQKNIL R6 [+5]
  LOADK R10 K16 ["NumberValue"]
  NAMECALL R8 R6 K17 ["IsA"]
  CALL R8 2 1
  FASTCALL2K ASSERT R8 K21 [+4]
  LOADK R9 K21 ["Couldn't find BodyProportionScale"]
  GETIMPORT R7 K11 [assert]
  CALL R7 2 0
  GETTABLEKS R7 R4 K20 ["BodyProportionScale"]
  SETTABLEKS R7 R6 K19 ["Value"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K1 ["none"] [+16]
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+6]
  DUPTABLE R1 K2 [{"type"}]
  LOADK R3 K1 ["none"]
  SETTABLEKS R3 R1 K0 ["type"]
  RETURN R1 1
  DUPTABLE R1 K4 [{"type", "target"}]
  LOADK R3 K5 ["hasSelection"]
  SETTABLEKS R3 R1 K0 ["type"]
  SETTABLEKS R2 R1 K3 ["target"]
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K5 ["hasSelection"] [+14]
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+3]
  MOVE R1 R0
  RETURN R1 1
  DUPTABLE R1 K4 [{"type", "target"}]
  LOADK R2 K5 ["hasSelection"]
  SETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K3 ["target"]
  RETURN R1 1
  RETURN R0 1

PROTO_4:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Inserting body with no target"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADK R3 K3 ["Avatar Auto Setup"]
  NAMECALL R1 R1 K4 ["SetWaypoint"]
  CALL R1 2 0
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+38]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["intendedName"]
  JUMPIF R1 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["bodies"]
  GETTABLEN R2 R3 1
  GETTABLEKS R1 R2 K7 ["Name"]
  NAMECALL R2 R1 K8 ["lower"]
  CALL R2 1 1
  LOADK R5 K9 ["%*$"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["BODY_MESH_SUFFIX"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  NAMECALL R2 R2 K12 ["match"]
  CALL R2 2 1
  JUMPIFNOT R2 [+11]
  LOADN R4 1
  LENGTH R6 R1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K10 ["BODY_MESH_SUFFIX"]
  LENGTH R7 R8
  SUB R5 R6 R7
  NAMECALL R2 R1 K13 ["sub"]
  CALL R2 3 1
  MOVE R1 R2
  SETTABLEKS R1 R0 K7 ["Name"]
  GETTABLEKS R3 R0 K14 ["PrimaryPart"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K15 [+4]
  LOADK R3 K15 ["Auto setup returned model with no primary part"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 4
  SETTABLEKS R1 R0 K16 ["Parent"]
  GETTABLEKS R1 R0 K14 ["PrimaryPart"]
  NAMECALL R3 R0 K17 ["GetBoundingBox"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K14 ["PrimaryPart"]
  GETTABLEKS R4 R5 K18 ["CFrame"]
  NAMECALL R4 R4 K19 ["Inverse"]
  CALL R4 1 1
  MUL R2 R3 R4
  SETTABLEKS R2 R1 K20 ["PivotOffset"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["bodies"]
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K21 ["ExtentsCFrame"]
  NAMECALL R1 R0 K22 ["PivotTo"]
  CALL R1 2 0
  GETUPVAL R1 5
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 6
  MOVE R2 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["bodies"]
  GETTABLEN R3 R4 1
  CALL R1 2 0
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K23 ["otherChildren"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NAMECALL R6 R5 K24 ["Clone"]
  CALL R6 1 1
  SETTABLEKS R0 R6 K16 ["Parent"]
  FORGLOOP R1 2 [-6]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K25 ["CurrentCamera"]
  FASTCALL2K ASSERT R3 K26 [+4]
  LOADK R4 K26 ["No Workspace Camera"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 1
  GETTABLEKS R1 R2 K18 ["CFrame"]
  GETTABLEKS R4 R1 K27 ["Position"]
  GETTABLEKS R6 R1 K29 ["LookVector"]
  MULK R5 R6 K28 [10]
  ADD R3 R4 R5
  LOADN R5 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["bodies"]
  GETTABLEN R9 R10 1
  GETTABLEKS R8 R9 K31 ["Size"]
  GETTABLEKS R7 R8 K32 ["Y"]
  MULK R6 R7 K30 [0.5]
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K35 [Vector3.new]
  CALL R4 3 1
  ADD R2 R3 R4
  GETUPVAL R3 7
  CALL R3 0 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K36 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
  LOADB R6 1
  NAMECALL R3 R0 K37 ["SetAttribute"]
  CALL R3 3 0
  JUMP [+11]
  GETUPVAL R8 3
  GETTABLEKS R6 R8 K38 ["ATTRIBUTE_PREFIX"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K36 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
  CONCAT R5 R6 R7
  LOADB R6 1
  NAMECALL R3 R0 K37 ["SetAttribute"]
  CALL R3 3 0
  GETIMPORT R5 K40 [CFrame.lookAt]
  MOVE R6 R2
  GETTABLEKS R9 R1 K27 ["Position"]
  GETTABLEKS R8 R9 K41 ["X"]
  GETTABLEKS R9 R2 K32 ["Y"]
  GETTABLEKS R11 R1 K27 ["Position"]
  GETTABLEKS R10 R11 K42 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K35 [Vector3.new]
  CALL R7 3 1
  CALL R5 2 -1
  NAMECALL R3 R0 K22 ["PivotTo"]
  CALL R3 -1 0
  GETUPVAL R3 8
  NEWTABLE R5 0 1
  MOVE R6 R0
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R3 K43 ["Set"]
  CALL R3 2 0
  GETUPVAL R3 9
  DUPTABLE R4 K45 [{"type"}]
  LOADK R5 K46 ["none"]
  SETTABLEKS R5 R4 K44 ["type"]
  CALL R3 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  GETIMPORT R0 K6 [task.cancel]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFEQKS R1 K1 ["inAutoSetup"] [+2]
  RETURN R0 1
  GETTABLEKS R3 R0 K0 ["type"]
  JUMPIFEQKS R3 K1 ["inAutoSetup"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETIMPORT R1 K7 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K8 ["eta"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R0 K2 [os.clock]
  CALL R0 0 1
  GETIMPORT R1 K4 [pcall]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["startAutoSetupAsync"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R1 3 2
  JUMPIFNOT R1 [+40]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["current"]
  GETUPVAL R4 4
  NAMECALL R5 R2 K7 ["Clone"]
  CALL R5 1 1
  SETTABLE R5 R3 R4
  GETUPVAL R3 5
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 6
  LOADK R5 K8 ["autoSetupFinish"]
  GETIMPORT R7 K2 [os.clock]
  CALL R7 0 1
  SUB R6 R7 R0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["MeshId"]
  NAMECALL R3 R3 K10 ["report"]
  CALL R3 4 0
  GETUPVAL R3 7
  CALL R3 0 1
  JUMPIFNOT R3 [+44]
  GETUPVAL R3 6
  LOADK R5 K11 ["autoSetupAssetsGenerated"]
  GETUPVAL R6 8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["MeshId"]
  CALL R6 1 1
  GETUPVAL R7 9
  MOVE R8 R2
  CALL R7 1 -1
  NAMECALL R3 R3 K10 ["report"]
  CALL R3 -1 0
  RETURN R0 0
  GETIMPORT R3 K13 [warn]
  LOADK R5 K14 ["Something went wrong while performing auto setup.
"]
  MOVE R6 R2
  CONCAT R4 R5 R6
  CALL R3 1 0
  GETUPVAL R3 10
  DUPTABLE R4 K18 [{"type", "target", "error"}]
  LOADK R5 K17 ["error"]
  SETTABLEKS R5 R4 K15 ["type"]
  GETUPVAL R5 11
  SETTABLEKS R5 R4 K16 ["target"]
  LOADK R5 K19 ["ErrorSourceFail"]
  SETTABLEKS R5 R4 K17 ["error"]
  CALL R3 1 0
  GETUPVAL R3 6
  LOADK R5 K20 ["autoSetupFailure"]
  GETIMPORT R7 K2 [os.clock]
  CALL R7 0 1
  SUB R6 R7 R0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["MeshId"]
  NAMECALL R3 R3 K10 ["report"]
  CALL R3 4 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["type"]
  JUMPIFEQKS R0 K1 ["hasSelection"] [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["type"]
  JUMPIFEQKS R0 K2 ["error"] [+2]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["current"]
  JUMPIFEQKNIL R0 [+11]
  GETIMPORT R0 K6 [task.cancel]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["current"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["current"]
  GETUPVAL R2 2
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K7 [+4]
  LOADK R2 K7 ["performAutoSetup called with no target"]
  GETIMPORT R0 K9 [assert]
  CALL R0 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K10 ["bodies"]
  GETTABLEN R1 R2 1
  FASTCALL2K ASSERT R1 K11 [+4]
  LOADK R2 K11 ["Auto setup target has no bodies"]
  GETIMPORT R0 K9 [assert]
  CALL R0 2 1
  GETUPVAL R1 3
  GETTABLEKS R3 R0 K12 ["MeshId"]
  NAMECALL R1 R1 K13 ["HashMeshAsync"]
  CALL R1 2 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K3 ["current"]
  GETTABLE R2 R3 R1
  JUMPIFEQKNIL R2 [+16]
  GETUPVAL R3 5
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K14 ["autoSetupClickedSignal"]
  JUMPIFEQKNIL R3 [+7]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K14 ["autoSetupClickedSignal"]
  NAMECALL R3 R3 K15 ["Fire"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R3 7
  DUPTABLE R4 K17 [{"type", "target"}]
  LOADK R5 K18 ["inAutoSetup"]
  SETTABLEKS R5 R4 K0 ["type"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K16 ["target"]
  CALL R3 1 0
  GETUPVAL R3 1
  GETIMPORT R4 K20 [task.spawn]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["current"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K14 ["autoSetupClickedSignal"]
  JUMPIFEQKNIL R3 [+7]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K14 ["autoSetupClickedSignal"]
  NAMECALL R3 R3 K15 ["Fire"]
  CALL R3 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K1 ["none"] [+2]
  RETURN R0 1
  DUPTABLE R1 K3 [{"type", "target"}]
  LOADK R2 K4 ["hasSelection"]
  SETTABLEKS R2 R1 K0 ["type"]
  GETTABLEKS R2 R0 K2 ["target"]
  SETTABLEKS R2 R1 K2 ["target"]
  RETURN R1 1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFEQKNIL R0 [+7]
  GETIMPORT R0 K3 [task.cancel]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  GETUPVAL R0 1
  DUPCLOSURE R1 K4 [PROTO_11]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  JUMPIFNOTEQKNIL R1 [+15]
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFEQKS R1 K1 ["hasSelection"] [+5]
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K2 ["none"] [+22]
  DUPTABLE R1 K3 [{"type"}]
  LOADK R2 K2 ["none"]
  SETTABLEKS R2 R1 K0 ["type"]
  RETURN R1 1
  RETURN R0 1
  GETUPVAL R1 0
  JUMPIFEQKNIL R1 [+13]
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K2 ["none"] [+9]
  DUPTABLE R1 K5 [{"type", "target"}]
  LOADK R2 K1 ["hasSelection"]
  SETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K4 ["target"]
  RETURN R1 1
  RETURN R0 1

PROTO_14:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+17]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["type"]
  JUMPIFEQKS R0 K1 ["hasSelection"] [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["type"]
  JUMPIFNOTEQKS R0 K2 ["none"] [+7]
  GETUPVAL R0 2
  DUPTABLE R1 K3 [{"type"}]
  LOADK R2 K2 ["none"]
  SETTABLEKS R2 R1 K0 ["type"]
  CALL R0 1 0
  GETUPVAL R0 2
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useContext"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Context"]
  CALL R2 1 1
  GETUPVAL R3 3
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 1 1
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["useState"]
  JUMPIFNOTEQKNIL R0 [+6]
  DUPTABLE R5 K6 [{"type"}]
  LOADK R6 K7 ["none"]
  SETTABLEKS R6 R5 K5 ["type"]
  JUMP [+6]
  DUPTABLE R5 K9 [{"type", "target"}]
  LOADK R6 K10 ["hasSelection"]
  SETTABLEKS R6 R5 K5 ["type"]
  SETTABLEKS R0 R5 K8 ["target"]
  CALL R4 1 2
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+12]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["useEffect"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CAPTURE VAL R0
  NEWTABLE R8 0 1
  MOVE R9 R0
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["useRef"]
  NEWTABLE R7 0 0
  CALL R6 1 1
  GETTABLEKS R9 R6 K13 ["current"]
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K14 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R8 R9 [+3]
  GETIMPORT R7 K16 [assert]
  CALL R7 2 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K17 ["useCallback"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U5
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R3
  CAPTURE VAL R5
  NEWTABLE R9 0 1
  MOVE R10 R0
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K12 ["useRef"]
  LOADNIL R9
  CALL R8 1 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["useEffect"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R8
  CAPTURE UPVAL U5
  NEWTABLE R11 0 0
  CALL R9 2 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K17 ["useCallback"]
  NEWCLOSURE R10 P3
  CAPTURE UPVAL U12
  CAPTURE VAL R5
  CAPTURE UPVAL U5
  NEWTABLE R11 0 0
  CALL R9 2 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K17 ["useCallback"]
  NEWCLOSURE R11 P4
  CAPTURE REF R4
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE UPVAL U13
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  NEWTABLE R12 0 4
  MOVE R13 R4
  GETTABLEKS R14 R2 K18 ["startAutoSetupAsync"]
  MOVE R15 R0
  MOVE R16 R7
  SETLIST R12 R13 4 [1]
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K17 ["useCallback"]
  NEWCLOSURE R12 P5
  CAPTURE VAL R8
  CAPTURE VAL R5
  NEWTABLE R13 0 0
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K11 ["useEffect"]
  NEWCLOSURE R13 P6
  CAPTURE VAL R0
  CAPTURE REF R4
  CAPTURE VAL R5
  NEWTABLE R14 0 1
  MOVE R15 R0
  SETLIST R14 R15 1 [1]
  CALL R12 2 0
  JUMPIFEQKNIL R0 [+17]
  GETTABLEKS R13 R0 K19 ["bodies"]
  LENGTH R12 R13
  LOADN R13 1
  JUMPIFNOTLT R13 R12 [+11]
  DUPTABLE R12 K21 [{"type", "target", "error"}]
  LOADK R13 K20 ["error"]
  SETTABLEKS R13 R12 K5 ["type"]
  SETTABLEKS R0 R12 K8 ["target"]
  LOADK R13 K22 ["ErrorMultipleBodies"]
  SETTABLEKS R13 R12 K20 ["error"]
  MOVE R4 R12
  DUPTABLE R12 K26 [{"state", "cancelAutoSetup", "startAutoSetup"}]
  SETTABLEKS R4 R12 K23 ["state"]
  SETTABLEKS R11 R12 K24 ["cancelAutoSetup"]
  SETTABLEKS R10 R12 K25 ["startAutoSetup"]
  CLOSEUPVALS R4
  RETURN R12 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GeometryService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["Workspace"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [script]
  LOADK R5 K8 ["AvatarCompatibilityPreviewer"]
  NAMECALL R3 R3 K9 ["FindFirstAncestor"]
  CALL R3 2 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R3 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R3 K12 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R3 K12 ["Packages"]
  GETTABLEKS R7 R8 K15 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R10 R3 K16 ["Src"]
  GETTABLEKS R9 R10 K17 ["Util"]
  GETTABLEKS R8 R9 K18 ["AvatarScalingTypes"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R3 K16 ["Src"]
  GETTABLEKS R10 R11 K19 ["Components"]
  GETTABLEKS R9 R10 K20 ["AutoSetupContext"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R12 R3 K16 ["Src"]
  GETTABLEKS R11 R12 K17 ["Util"]
  GETTABLEKS R10 R11 K21 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K11 [require]
  GETTABLEKS R13 R3 K16 ["Src"]
  GETTABLEKS R12 R13 K17 ["Util"]
  GETTABLEKS R11 R12 K22 ["SelectionWrapper"]
  CALL R10 1 1
  GETIMPORT R11 K11 [require]
  GETTABLEKS R14 R3 K16 ["Src"]
  GETTABLEKS R13 R14 K17 ["Util"]
  GETTABLEKS R12 R13 K23 ["assetUriToId"]
  CALL R11 1 1
  GETIMPORT R12 K11 [require]
  GETTABLEKS R15 R3 K16 ["Src"]
  GETTABLEKS R14 R15 K17 ["Util"]
  GETTABLEKS R13 R14 K24 ["findUnderlyingMeshAssetIds"]
  CALL R12 1 1
  GETIMPORT R13 K11 [require]
  GETTABLEKS R15 R3 K16 ["Src"]
  GETTABLEKS R14 R15 K25 ["Types"]
  CALL R13 1 1
  GETIMPORT R14 K11 [require]
  GETTABLEKS R17 R3 K16 ["Src"]
  GETTABLEKS R16 R17 K26 ["Flags"]
  GETTABLEKS R15 R16 K27 ["getFFlagAvatarPreviewerAutoSetupCopyName"]
  CALL R14 1 1
  GETIMPORT R15 K11 [require]
  GETTABLEKS R18 R3 K16 ["Src"]
  GETTABLEKS R17 R18 K26 ["Flags"]
  GETTABLEKS R16 R17 K28 ["getFFlagAvatarPreviewerAutoSetupDisablePublish"]
  CALL R15 1 1
  GETIMPORT R16 K11 [require]
  GETTABLEKS R19 R3 K16 ["Src"]
  GETTABLEKS R18 R19 K26 ["Flags"]
  GETTABLEKS R17 R18 K29 ["getFFlagAvatarPreviewerDisableETA"]
  CALL R16 1 1
  GETIMPORT R17 K11 [require]
  GETTABLEKS R20 R3 K16 ["Src"]
  GETTABLEKS R19 R20 K26 ["Flags"]
  GETTABLEKS R18 R19 K30 ["getFFlagAvatarPreviewerFixMeshSwitching"]
  CALL R17 1 1
  GETIMPORT R18 K11 [require]
  GETTABLEKS R21 R3 K16 ["Src"]
  GETTABLEKS R20 R21 K26 ["Flags"]
  GETTABLEKS R19 R20 K31 ["getFFlagAvatarPreviewerProportionControls"]
  CALL R18 1 1
  GETIMPORT R19 K11 [require]
  GETTABLEKS R22 R3 K16 ["Src"]
  GETTABLEKS R21 R22 K26 ["Flags"]
  GETTABLEKS R20 R21 K32 ["getFFlagAvatarPreviewerAutoSetupTelemetry"]
  CALL R19 1 1
  GETTABLEKS R21 R5 K33 ["ContextServices"]
  GETTABLEKS R20 R21 K34 ["Analytics"]
  DUPCLOSURE R21 K35 [PROTO_0]
  DUPCLOSURE R22 K36 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R7
  DUPCLOSURE R23 K37 [PROTO_15]
  CAPTURE VAL R20
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R18
  CAPTURE VAL R22
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R12
  RETURN R23 1
