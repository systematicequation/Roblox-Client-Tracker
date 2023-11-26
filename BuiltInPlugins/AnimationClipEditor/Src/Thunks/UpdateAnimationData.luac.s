PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETUPVAL R2 0
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Metadata"]
  JUMPIF R2 [+7]
  GETUPVAL R4 1
  GETUPVAL R5 0
  CALL R4 1 -1
  NAMECALL R2 R0 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETTABLEKS R3 R1 K3 ["Status"]
  GETTABLEKS R2 R3 K4 ["HorizontalScroll"]
  GETTABLEKS R4 R1 K3 ["Status"]
  GETTABLEKS R3 R4 K5 ["HorizontalZoom"]
  GETTABLEKS R5 R1 K3 ["Status"]
  GETTABLEKS R4 R5 K6 ["Playhead"]
  GETTABLEKS R6 R1 K3 ["Status"]
  GETTABLEKS R5 R6 K7 ["EditingLength"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["Metadata"]
  GETTABLEKS R6 R7 K8 ["StartTick"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["getZoomRange"]
  GETUPVAL R8 0
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R5
  CALL R7 4 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K10 ["removeExtraKeyframes"]
  GETUPVAL R9 0
  CALL R8 1 1
  JUMPIFNOT R8 [+7]
  GETUPVAL R11 4
  LOADK R12 K11 ["ClippedWarning"]
  LOADB R13 1
  CALL R11 2 -1
  NAMECALL R9 R0 K2 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K12 ["setEndTick"]
  GETUPVAL R10 0
  CALL R9 1 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["Metadata"]
  GETTABLEKS R9 R10 K13 ["EndTick"]
  GETIMPORT R10 K15 [ipairs]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K16 ["Events"]
  GETTABLEKS R11 R13 K17 ["Keyframes"]
  CALL R10 1 3
  FORGPREP_INEXT R10
  JUMPIFNOTLT R9 R14 [+7]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["Metadata"]
  SETTABLEKS R14 R15 K13 ["EndTick"]
  MOVE R9 R14
  FORGLOOP R10 2 [inext] [-9]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K18 ["validateKeyframeNames"]
  GETUPVAL R11 0
  CALL R10 1 0
  GETUPVAL R12 1
  GETUPVAL R13 0
  CALL R12 1 -1
  NAMECALL R10 R0 K2 ["dispatch"]
  CALL R10 -1 0
  JUMPIFEQ R6 R9 [+9]
  MOVE R11 R4
  MOVE R12 R6
  MOVE R13 R9
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R10 K21 [math.clamp]
  CALL R10 3 1
  MOVE R4 R10
  GETUPVAL R12 5
  MOVE R13 R4
  CALL R12 1 -1
  NAMECALL R10 R0 K2 ["dispatch"]
  CALL R10 -1 0
  SUB R10 R9 R6
  JUMPIFNOTLT R5 R10 [+51]
  GETUPVAL R13 6
  MOVE R14 R10
  CALL R13 1 -1
  NAMECALL R11 R0 K2 ["dispatch"]
  CALL R11 -1 0
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K22 ["LENGTH_PADDING"]
  MUL R12 R10 R13
  FASTCALL1 MATH_CEIL R12 [+2]
  GETIMPORT R11 K24 [math.ceil]
  CALL R11 1 1
  GETTABLEKS R13 R7 K25 ["End"]
  GETTABLEKS R14 R7 K26 ["Start"]
  SUB R12 R13 R14
  LOADN R2 0
  JUMPIFEQ R11 R12 [+13]
  GETTABLEKS R16 R7 K26 ["Start"]
  SUB R15 R16 R6
  SUB R16 R11 R12
  DIV R14 R15 R16
  LOADN R15 0
  LOADN R16 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R13 K21 [math.clamp]
  CALL R13 3 1
  MOVE R2 R13
  LOADN R13 1
  DIV R15 R12 R11
  LOADN R16 0
  LOADN R17 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R14 K21 [math.clamp]
  CALL R14 3 1
  SUB R3 R13 R14
  GETUPVAL R15 8
  MOVE R16 R2
  MOVE R17 R3
  CALL R15 2 -1
  NAMECALL R13 R0 K2 ["dispatch"]
  CALL R13 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Actions"]
  GETTABLEKS R2 R3 K8 ["SetHorizontalScrollZoom"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["AnimationData"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["TrackUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Actions"]
  GETTABLEKS R6 R7 K13 ["SetAnimationData"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K14 ["Thunks"]
  GETTABLEKS R8 R9 K15 ["Playback"]
  GETTABLEKS R7 R8 K16 ["StepAnimation"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K7 ["Actions"]
  GETTABLEKS R8 R9 K17 ["SetNotification"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K14 ["Thunks"]
  GETTABLEKS R9 R10 K18 ["UpdateEditingLength"]
  CALL R8 1 1
  DUPCLOSURE R9 K19 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R9 1
