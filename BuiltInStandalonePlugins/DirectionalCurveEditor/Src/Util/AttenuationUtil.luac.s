PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["EMITTER"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["SetDistanceAttenuation"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["LISTENER"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  LOADB R3 0
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["EMITTER"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K2 ["GetDistanceAttenuation"]
  CALL R1 1 1
  RETURN R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["LISTENER"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  LOADB R2 0
  FASTCALL2K ASSERT R2 K4 [+4]
  LOADK R3 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["EMITTER"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["SetAngleAttenuation"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["LISTENER"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["SetAngleAttenuation"]
  CALL R2 2 0
  RETURN R0 0
  LOADB R3 0
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["EMITTER"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K2 ["GetAngleAttenuation"]
  CALL R1 1 1
  RETURN R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["LISTENER"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K2 ["GetAngleAttenuation"]
  CALL R1 1 1
  RETURN R1 1
  LOADB R2 0
  FASTCALL2K ASSERT R2 K4 [+4]
  LOADK R3 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["NO_INSTANCE"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["EMITTER"]
  NAMECALL R2 R0 K2 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["EMITTER"]
  JUMP [+18]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["LISTENER"]
  NAMECALL R2 R0 K2 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["LISTENER"]
  JUMP [+7]
  LOADB R3 0
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["DirectionalCurveEditor only supports emitters and listeners"]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  DUPTABLE R2 K10 [{"InstanceType", "DistanceCurve", "AngleCurve"}]
  SETTABLEKS R1 R2 K7 ["InstanceType"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["stringifyCurveTable"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["getDistanceAttenuation"]
  MOVE R5 R0
  CALL R4 1 -1
  CALL R3 -1 1
  SETTABLEKS R3 R2 K8 ["DistanceCurve"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["stringifyCurveTable"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K13 ["getAngleAttenuation"]
  MOVE R5 R0
  CALL R4 1 -1
  CALL R3 -1 1
  SETTABLEKS R3 R2 K9 ["AngleCurve"]
  RETURN R2 1

PROTO_5:
  LENGTH R2 R0
  LENGTH R3 R1
  JUMPIFEQ R2 R3 [+3]
  LOADB R4 0
  RETURN R4 1
  LOADN R6 1
  MOVE R4 R2
  LOADN R5 1
  FORNPREP R4
  GETTABLE R9 R0 R6
  GETTABLE R10 R1 R6
  SUB R8 R9 R10
  GETTABLEKS R7 R8 K0 ["Magnitude"]
  LOADK R8 K1 [0.001]
  JUMPIFNOTLT R8 R7 [+3]
  LOADB R7 0
  RETURN R7 1
  FORNLOOP R4
  LOADB R4 1
  RETURN R4 1

PROTO_6:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K1 [tostring]
  CALL R7 1 1
  JUMPIF R7 [+10]
  GETIMPORT R8 K3 [print]
  LOADK R10 K4 ["%* couldn't be converted to a string!"]
  MOVE R12 R5
  NAMECALL R10 R10 K5 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CALL R8 1 0
  JUMP [+1]
  SETTABLE R6 R1 R7
  FORGLOOP R2 2 [-18]
  RETURN R1 1

PROTO_7:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL1 TONUMBER R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K1 [tonumber]
  CALL R7 1 1
  JUMPIF R7 [+10]
  GETIMPORT R8 K3 [print]
  LOADK R10 K4 ["%* couldn't be converted to a number!"]
  MOVE R12 R5
  NAMECALL R10 R10 K5 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CALL R8 1 0
  JUMP [+1]
  SETTABLE R6 R1 R7
  FORGLOOP R2 2 [-18]
  RETURN R1 1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["X"]
  GETTABLEKS R4 R1 K0 ["X"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_9:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R8 R1
  GETIMPORT R9 K2 [Vector2.new]
  MOVE R10 R5
  MOVE R11 R6
  CALL R9 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K5 [table.insert]
  CALL R7 -1 0
  FORGLOOP R2 2 [-11]
  GETIMPORT R2 K7 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K8 [PROTO_8]
  CALL R2 2 0
  RETURN R1 1

PROTO_10:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 0
  GETTABLEKS R8 R6 K0 ["X"]
  LOADN R9 3
  CALL R7 2 1
  GETUPVAL R8 0
  GETTABLEKS R9 R6 K1 ["Y"]
  LOADN R10 3
  CALL R8 2 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-12]
  RETURN R1 1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["stringifyCurveTable"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["keypointsToTable"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["tableToKeypoints"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["destringifyCurveTable"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DirectionalCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["roundDecimal"]
  CALL R2 1 1
  NEWTABLE R3 16 0
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K11 ["setDistanceAttenuation"]
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K13 ["getDistanceAttenuation"]
  DUPCLOSURE R4 K14 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K15 ["setAngleAttenuation"]
  DUPCLOSURE R4 K16 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K17 ["getAngleAttenuation"]
  DUPCLOSURE R4 K18 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K19 ["getInstanceData"]
  DUPCLOSURE R4 K20 [PROTO_5]
  SETTABLEKS R4 R3 K21 ["areKeypointsEqual"]
  DUPCLOSURE R4 K22 [PROTO_6]
  SETTABLEKS R4 R3 K23 ["stringifyCurveTable"]
  DUPCLOSURE R4 K24 [PROTO_7]
  SETTABLEKS R4 R3 K25 ["destringifyCurveTable"]
  DUPCLOSURE R4 K26 [PROTO_9]
  SETTABLEKS R4 R3 K27 ["tableToKeypoints"]
  DUPCLOSURE R4 K28 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K29 ["keypointsToTable"]
  DUPCLOSURE R4 K30 [PROTO_11]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K31 ["keypointsToStrTable"]
  DUPCLOSURE R4 K32 [PROTO_12]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K33 ["strTableToKeypoints"]
  RETURN R3 1
