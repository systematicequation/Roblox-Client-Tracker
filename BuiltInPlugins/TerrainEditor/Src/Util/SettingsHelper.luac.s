PROTO_0:
  NEWTABLE R4 0 0
  GETUPVAL R9 0
  GETTABLE R8 R9 R0
  GETTABLEKS R5 R8 K0 ["Storage"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["Global"]
  JUMPIFNOTEQ R9 R10 [+8]
  MOVE R12 R0
  MOVE R13 R8
  NAMECALL R10 R1 K2 ["getGlobal"]
  CALL R10 3 1
  SETTABLE R10 R4 R8
  JUMP [+58]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["LocalSubform"]
  JUMPIFNOTEQ R9 R10 [+38]
  NEWTABLE R10 0 0
  JUMPIFNOT R3 [+5]
  GETTABLE R11 R3 R8
  JUMPIF R11 [+3]
  NEWTABLE R11 0 0
  SETTABLE R11 R3 R8
  GETTABLE R11 R2 R8
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  JUMPIFNOT R3 [+7]
  GETTABLE R17 R3 R8
  GETTABLE R16 R17 R14
  JUMPIF R16 [+4]
  GETTABLE R16 R3 R8
  NEWTABLE R17 0 0
  SETTABLE R17 R16 R14
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K4 ["Get"]
  MOVE R17 R14
  MOVE R18 R1
  MOVE R19 R15
  JUMPIFNOT R3 [+3]
  GETTABLE R21 R3 R8
  GETTABLE R20 R21 R14
  JUMP [+1]
  LOADNIL R20
  CALL R16 4 1
  SETTABLE R16 R10 R14
  FORGLOOP R11 2 [-22]
  SETTABLE R10 R4 R8
  JUMP [+16]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["LocalPersistent"]
  JUMPIFNOTEQ R9 R10 [+4]
  GETTABLE R10 R2 R8
  SETTABLE R10 R4 R8
  JUMP [+8]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["LocalSession"]
  JUMPIFNOTEQ R9 R10 [+4]
  JUMPIFNOT R3 [+2]
  GETTABLE R10 R3 R8
  SETTABLE R10 R4 R8
  FORGLOOP R5 2 [-71]
  RETURN R4 1

PROTO_1:
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  GETUPVAL R9 0
  GETTABLE R8 R9 R0
  GETTABLEKS R5 R8 K0 ["Storage"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLE R10 R2 R8
  JUMPIFEQKNIL R10 [+81]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["Global"]
  JUMPIFNOTEQ R9 R10 [+8]
  MOVE R12 R0
  MOVE R13 R8
  GETTABLE R14 R2 R8
  NAMECALL R10 R1 K2 ["setGlobal"]
  CALL R10 4 0
  JUMP [+68]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["LocalSubform"]
  JUMPIFNOTEQ R9 R10 [+49]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 0
  GETTABLE R12 R2 R8
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K4 ["Set"]
  MOVE R18 R15
  MOVE R19 R1
  MOVE R20 R16
  CALL R17 3 2
  GETIMPORT R19 K6 [next]
  MOVE R20 R17
  CALL R19 1 1
  JUMPIFNOT R19 [+1]
  SETTABLE R17 R10 R15
  GETIMPORT R19 K6 [next]
  MOVE R20 R18
  CALL R19 1 1
  JUMPIFNOT R19 [+1]
  SETTABLE R18 R11 R15
  FORGLOOP R12 2 [-20]
  GETIMPORT R13 K6 [next]
  MOVE R14 R10
  CALL R13 1 1
  JUMPIFNOT R13 [+2]
  MOVE R12 R10
  JUMP [+1]
  LOADNIL R12
  SETTABLE R12 R3 R8
  GETIMPORT R13 K6 [next]
  MOVE R14 R11
  CALL R13 1 1
  JUMPIFNOT R13 [+2]
  MOVE R12 R11
  JUMP [+1]
  LOADNIL R12
  SETTABLE R12 R4 R8
  JUMP [+15]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["LocalPersistent"]
  JUMPIFNOTEQ R9 R10 [+4]
  GETTABLE R10 R2 R8
  SETTABLE R10 R3 R8
  JUMP [+7]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["LocalSession"]
  JUMPIFNOTEQ R9 R10 [+3]
  GETTABLE R10 R2 R8
  SETTABLE R10 R4 R8
  FORGLOOP R5 2 [-84]
  RETURN R3 2

PROTO_2:
  NEWTABLE R5 0 0
  MOVE R6 R1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["Global"]
  JUMPIFNOTEQ R10 R11 [+8]
  MOVE R13 R0
  MOVE R14 R9
  NAMECALL R11 R2 K1 ["getGlobal"]
  CALL R11 3 1
  SETTABLE R11 R5 R9
  JUMP [+16]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["LocalPersistent"]
  JUMPIFNOTEQ R10 R11 [+4]
  GETTABLE R11 R3 R9
  SETTABLE R11 R5 R9
  JUMP [+8]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["LocalSession"]
  JUMPIFNOTEQ R10 R11 [+4]
  JUMPIFNOT R4 [+2]
  GETTABLE R11 R4 R9
  SETTABLE R11 R5 R9
  FORGLOOP R6 2 [-29]
  RETURN R5 1

PROTO_3:
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  MOVE R6 R1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLE R11 R3 R9
  JUMPIFEQKNIL R11 [+28]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["Global"]
  JUMPIFNOTEQ R10 R11 [+8]
  MOVE R13 R0
  MOVE R14 R9
  GETTABLE R15 R3 R9
  NAMECALL R11 R2 K1 ["setGlobal"]
  CALL R11 4 0
  JUMP [+15]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["LocalPersistent"]
  JUMPIFNOTEQ R10 R11 [+4]
  GETTABLE R11 R3 R9
  SETTABLE R11 R4 R9
  JUMP [+7]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["LocalSession"]
  JUMPIFNOTEQ R10 R11 [+3]
  GETTABLE R11 R3 R9
  SETTABLE R11 R5 R9
  FORGLOOP R6 2 [-31]
  RETURN R4 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Storage"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["Schemas"]
  GETTABLEKS R4 R5 K10 ["Settings"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagTerrainEditorSubformComponent"]
  CALL R4 1 1
  MOVE R5 R4
  CALL R5 0 1
  JUMPIFNOT R5 [+15]
  NEWTABLE R5 2 0
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K14 ["Get"]
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K16 ["Set"]
  RETURN R5 1
  NEWTABLE R5 2 0
  DUPCLOSURE R6 K17 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K14 ["Get"]
  DUPCLOSURE R6 K18 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K16 ["Set"]
  RETURN R5 1
