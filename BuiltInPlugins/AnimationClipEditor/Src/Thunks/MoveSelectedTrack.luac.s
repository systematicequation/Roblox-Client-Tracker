PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["Status"]
  JUMP [+9]
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["Status"]
  JUMPIF R1 [+3]
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K2 ["Tracks"]
  NAMECALL R4 R0 K0 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["AnimationData"]
  GETTABLEKS R4 R1 K4 ["SelectedTracks"]
  JUMPIFNOT R4 [+4]
  GETUPVAL R5 1
  MOVE R6 R4
  CALL R5 1 1
  JUMPIFNOT R5 [+1]
  RETURN R0 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["isChannelAnimation"]
  MOVE R6 R3
  CALL R5 1 1
  JUMPIFNOT R5 [+5]
  LENGTH R5 R4
  LOADN R6 1
  JUMPIFNOTLT R6 R5 [+2]
  RETURN R0 0
  NEWTABLE R5 0 0
  NEWTABLE R6 0 0
  GETIMPORT R7 K7 [ipairs]
  MOVE R8 R2
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETTABLEKS R12 R11 K8 ["Name"]
  SETTABLE R10 R6 R12
  FORGLOOP R7 2 [inext] [-4]
  LOADNIL R7
  LOADNIL R8
  GETIMPORT R9 K7 [ipairs]
  MOVE R10 R4
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETTABLEN R14 R13 1
  GETTABLE R15 R6 R14
  JUMPIFNOT R7 [+8]
  FASTCALL2 MATH_MIN R7 R15 [+5]
  MOVE R17 R7
  MOVE R18 R15
  GETIMPORT R16 K11 [math.min]
  CALL R16 2 1
  JUMPIF R16 [+1]
  MOVE R16 R15
  MOVE R7 R16
  JUMPIFNOT R8 [+8]
  FASTCALL2 MATH_MAX R8 R15 [+5]
  MOVE R17 R8
  MOVE R18 R15
  GETIMPORT R16 K13 [math.max]
  CALL R16 2 1
  JUMPIF R16 [+1]
  MOVE R16 R15
  MOVE R8 R16
  FORGLOOP R9 2 [inext] [-25]
  GETUPVAL R9 3
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+11]
  GETUPVAL R10 3
  LENGTH R12 R2
  SUB R11 R12 R8
  FASTCALL2 MATH_MIN R10 R11 [+3]
  GETIMPORT R9 K11 [math.min]
  CALL R9 2 1
  SETUPVAL R9 3
  JUMP [+9]
  GETUPVAL R10 3
  LOADN R12 1
  SUB R11 R12 R7
  FASTCALL2 MATH_MAX R10 R11 [+3]
  GETIMPORT R9 K13 [math.max]
  CALL R9 2 1
  SETUPVAL R9 3
  GETIMPORT R9 K7 [ipairs]
  MOVE R10 R4
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETTABLEN R14 R13 1
  GETTABLE R15 R6 R14
  JUMPIFNOT R15 [+7]
  GETUPVAL R16 3
  ADD R15 R15 R16
  GETTABLE R17 R2 R15
  GETTABLEKS R16 R17 K8 ["Name"]
  LOADB R17 1
  SETTABLE R17 R5 R16
  FORGLOOP R9 2 [inext] [-11]
  NEWTABLE R9 0 0
  GETIMPORT R10 K15 [pairs]
  MOVE R11 R5
  CALL R10 1 3
  FORGPREP_NEXT R10
  NEWTABLE R17 0 1
  MOVE R18 R13
  SETLIST R17 R18 1 [1]
  FASTCALL2 TABLE_INSERT R9 R17 [+4]
  MOVE R16 R9
  GETIMPORT R15 K18 [table.insert]
  CALL R15 2 0
  FORGLOOP R10 2 [-12]
  GETUPVAL R12 4
  MOVE R13 R9
  CALL R12 1 -1
  NAMECALL R10 R0 K19 ["dispatch"]
  CALL R10 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE REF R0
  CAPTURE UPVAL U3
  CLOSEUPVALS R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Actions"]
  GETTABLEKS R3 R4 K10 ["SetSelectedTracks"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["isEmpty"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K13 ["AnimationData"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K14 ["LuaFlags"]
  GETTABLEKS R6 R7 K15 ["GetFFlagRhodium"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R6 1
