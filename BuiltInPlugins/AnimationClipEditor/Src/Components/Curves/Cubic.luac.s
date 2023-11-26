PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  NEWTABLE R2 0 0
  GETTABLEKS R3 R1 K1 ["A"]
  GETTABLEKS R4 R1 K2 ["B"]
  LOADNIL R5
  LOADNIL R6
  GETTABLEKS R9 R3 K3 ["X"]
  GETTABLEKS R7 R4 K3 ["X"]
  GETUPVAL R10 0
  GETTABLEKS R8 R10 K4 ["CURVE_INTERVAL"]
  FORNPREP R7
  GETTABLEKS R12 R3 K3 ["X"]
  SUB R11 R9 R12
  GETTABLEKS R13 R4 K3 ["X"]
  GETTABLEKS R14 R3 K3 ["X"]
  SUB R12 R13 R14
  DIV R10 R11 R12
  MUL R11 R10 R10
  LOADN R16 2
  MUL R15 R16 R10
  SUBK R14 R15 K6 [3]
  MUL R13 R11 R14
  ADDK R12 R13 K5 [1]
  SUBK R16 R10 K7 [2]
  MUL R15 R16 R10
  ADDK R14 R15 K5 [1]
  MUL R13 R14 R10
  LOADN R16 3
  LOADN R18 2
  MUL R17 R18 R10
  SUB R15 R16 R17
  MUL R14 R11 R15
  SUBK R16 R10 K5 [1]
  MUL R15 R11 R16
  GETTABLEKS R20 R3 K8 ["Y"]
  MUL R19 R12 R20
  GETTABLEKS R23 R4 K3 ["X"]
  GETTABLEKS R24 R3 K3 ["X"]
  SUB R22 R23 R24
  MUL R21 R13 R22
  GETTABLEKS R22 R1 K9 ["ASlope"]
  MUL R20 R21 R22
  ADD R18 R19 R20
  GETTABLEKS R20 R4 K8 ["Y"]
  MUL R19 R14 R20
  ADD R17 R18 R19
  GETTABLEKS R21 R4 K3 ["X"]
  GETTABLEKS R22 R3 K3 ["X"]
  SUB R20 R21 R22
  MUL R19 R15 R20
  GETTABLEKS R20 R1 K10 ["BSlope"]
  MUL R18 R19 R20
  ADD R16 R17 R18
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K11 ["MinClamp"]
  JUMPIFNOT R17 [+19]
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K12 ["MaxClamp"]
  JUMPIFNOT R17 [+14]
  MOVE R18 R16
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K11 ["MinClamp"]
  GETTABLEKS R21 R0 K0 ["props"]
  GETTABLEKS R20 R21 K12 ["MaxClamp"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R17 K15 [math.clamp]
  CALL R17 3 1
  MOVE R16 R17
  JUMPIFNOT R5 [+48]
  GETTABLEKS R17 R1 K16 ["FrameWidth"]
  JUMPIFNOTLT R5 R17 [+45]
  LOADN R17 0
  JUMPIFNOTLT R17 R9 [+42]
  MOVE R18 R2
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K17 ["createElement"]
  GETUPVAL R20 2
  DUPTABLE R21 K22 [{"A", "B", "Color", "Width", "Transparency", "ZIndex"}]
  GETIMPORT R22 K25 [Vector2.new]
  MOVE R23 R5
  MOVE R24 R6
  CALL R22 2 1
  SETTABLEKS R22 R21 K1 ["A"]
  GETIMPORT R22 K25 [Vector2.new]
  MOVE R23 R9
  MOVE R24 R16
  CALL R22 2 1
  SETTABLEKS R22 R21 K2 ["B"]
  GETTABLEKS R22 R1 K18 ["Color"]
  SETTABLEKS R22 R21 K18 ["Color"]
  GETTABLEKS R22 R1 K19 ["Width"]
  SETTABLEKS R22 R21 K19 ["Width"]
  GETTABLEKS R22 R1 K20 ["Transparency"]
  SETTABLEKS R22 R21 K20 ["Transparency"]
  GETTABLEKS R22 R1 K21 ["ZIndex"]
  SETTABLEKS R22 R21 K21 ["ZIndex"]
  CALL R19 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R17 K28 [table.insert]
  CALL R17 -1 0
  MOVE R5 R9
  MOVE R6 R16
  FORNLOOP R7
  MOVE R8 R2
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K17 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K22 [{"A", "B", "Color", "Width", "Transparency", "ZIndex"}]
  JUMPIFNOT R5 [+6]
  GETIMPORT R12 K25 [Vector2.new]
  MOVE R13 R5
  MOVE R14 R6
  CALL R12 2 1
  JUMP [+1]
  MOVE R12 R3
  SETTABLEKS R12 R11 K1 ["A"]
  SETTABLEKS R4 R11 K2 ["B"]
  GETTABLEKS R12 R1 K18 ["Color"]
  SETTABLEKS R12 R11 K18 ["Color"]
  GETTABLEKS R12 R1 K19 ["Width"]
  SETTABLEKS R12 R11 K19 ["Width"]
  GETTABLEKS R12 R1 K20 ["Transparency"]
  SETTABLEKS R12 R11 K20 ["Transparency"]
  GETTABLEKS R12 R1 K21 ["ZIndex"]
  SETTABLEKS R12 R11 K21 ["ZIndex"]
  CALL R9 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K28 [table.insert]
  CALL R7 -1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K17 ["createElement"]
  LOADK R8 K29 ["Frame"]
  DUPTABLE R9 K34 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
  GETIMPORT R10 K36 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K30 ["Position"]
  GETIMPORT R10 K36 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K31 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K32 ["BackgroundTransparency"]
  LOADN R10 0
  SETTABLEKS R10 R9 K33 ["BorderSizePixel"]
  GETTABLEKS R10 R1 K21 ["ZIndex"]
  SETTABLEKS R10 R9 K21 ["ZIndex"]
  MOVE R10 R2
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["Curves"]
  GETTABLEKS R4 R5 K13 ["Line"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K14 ["PureComponent"]
  LOADK R6 K15 ["Cubic"]
  NAMECALL R4 R4 K16 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K18 ["render"]
  RETURN R4 1
