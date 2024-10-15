PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["pathContainerRef"]
  NAMECALL R0 R0 K1 ["getValue"]
  CALL R0 1 1
  JUMPIF R0 [+1]
  RETURN R0 0
  LOADN R1 1
  NAMECALL R2 R0 K2 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  NEWTABLE R7 0 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["props"]
  GETTABLEKS R9 R10 K4 ["ControlPoints"]
  LENGTH R8 R9
  MOVE R11 R1
  ADDK R12 R1 K6 [100]
  SUBK R9 R12 K5 [1]
  LOADN R10 1
  FORNPREP R9
  JUMPIFLT R8 R11 [+14]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["props"]
  GETTABLEKS R15 R16 K4 ["ControlPoints"]
  GETTABLE R14 R15 R11
  FASTCALL2 TABLE_INSERT R7 R14 [+4]
  MOVE R13 R7
  GETIMPORT R12 K9 [table.insert]
  CALL R12 2 0
  FORNLOOP R9
  MOVE R11 R7
  NAMECALL R9 R6 K10 ["SetControlPoints"]
  CALL R9 2 0
  ADDK R1 R1 K11 [99]
  FORGLOOP R2 2 [-34]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["pathContainerRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["setControlPoints"]
  RETURN R0 0

PROTO_2:
  LOADK R1 K0 [""]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["Tag"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["Tag"]
  NEWTABLE R2 0 0
  LOADN R5 2
  GETTABLEKS R7 R0 K1 ["props"]
  GETTABLEKS R6 R7 K3 ["ControlPoints"]
  LENGTH R3 R6
  LOADN R4 99
  FORNPREP R3
  MOVE R7 R2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  LOADK R9 K5 ["Path2D"]
  NEWTABLE R10 1 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["Tag"]
  SETTABLE R1 R10 R11
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K8 [table.insert]
  CALL R6 -1 0
  FORNLOOP R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K11 [{"ref", "Size"}]
  GETTABLEKS R6 R0 K12 ["pathContainerRef"]
  SETTABLEKS R6 R5 K9 ["ref"]
  GETIMPORT R6 K15 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Size"]
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["setControlPoints"]
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["setControlPoints"]
  CALL R1 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["DirectionalCurveEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R1 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R4 R5 K11 ["Pane"]
  GETTABLEKS R6 R3 K12 ["Styling"]
  GETTABLEKS R5 R6 K13 ["joinTags"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R1 K14 ["Bin"]
  GETTABLEKS R8 R9 K15 ["Common"]
  GETTABLEKS R7 R8 K16 ["defineLuaFlags"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K17 ["Component"]
  LOADK R9 K18 ["Path2DWrapper"]
  NAMECALL R7 R7 K19 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K21 ["init"]
  DUPCLOSURE R8 K22 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K23 ["render"]
  DUPCLOSURE R8 K24 [PROTO_3]
  SETTABLEKS R8 R7 K25 ["didMount"]
  DUPCLOSURE R8 K26 [PROTO_4]
  SETTABLEKS R8 R7 K27 ["didUpdate"]
  RETURN R7 1
