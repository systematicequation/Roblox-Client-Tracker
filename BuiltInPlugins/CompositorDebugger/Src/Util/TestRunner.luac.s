PROTO_0:
  DUPTABLE R2 K2 [{"component", "props"}]
  SETTABLEKS R0 R2 K0 ["component"]
  SETTABLEKS R1 R2 K1 ["props"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [setmetatable]
  CALL R3 2 0
  GETUPVAL R3 0
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K5 ["__index"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["props"]
  MOVE R4 R1
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  GETTABLEKS R3 R0 K2 ["component"]
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["act"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 3
  GETUPVAL R4 4
  GETUPVAL R5 5
  MOVE R6 R0
  CALL R4 2 -1
  CALL R2 -1 -1
  CALL R1 -1 1
  SETUPVAL R1 0
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K1 ["act"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["unmount"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [game]
  GETTABLEKS R0 R1 K2 ["CoreGui"]
  LOADK R2 K3 ["CompositorDebuggerMock"]
  NAMECALL R0 R0 K4 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+3]
  NAMECALL R1 R0 K5 ["Destroy"]
  CALL R1 1 0
  GETIMPORT R1 K8 [Instance.new]
  LOADK R2 K9 ["ScreenGui"]
  CALL R1 1 1
  LOADK R2 K3 ["CompositorDebuggerMock"]
  SETTABLEKS R2 R1 K10 ["Name"]
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K2 ["CoreGui"]
  SETTABLEKS R2 R1 K11 ["Parent"]
  GETIMPORT R2 K13 [workspace]
  LOADK R4 K14 ["CompositorDebuggerFlags"]
  NAMECALL R2 R2 K4 ["FindFirstChild"]
  CALL R2 2 1
  LOADK R5 K15 ["UseMockData"]
  NAMECALL R3 R2 K4 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIF R3 [+13]
  GETIMPORT R4 K8 [Instance.new]
  LOADK R5 K16 ["BoolValue"]
  CALL R4 1 1
  MOVE R3 R4
  LOADK R4 K15 ["UseMockData"]
  SETTABLEKS R4 R3 K10 ["Name"]
  SETTABLEKS R2 R3 K11 ["Parent"]
  LOADB R4 0
  SETTABLEKS R4 R3 K17 ["Archivable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K18 ["Value"]
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K19 ["createElement"]
  GETUPVAL R6 2
  GETUPVAL R7 3
  CALL R5 2 -1
  CALL R4 -1 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K20 ["createRoot"]
  MOVE R6 R1
  CALL R5 1 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R5
  CAPTURE REF R4
  NEWCLOSURE R7 P1
  CAPTURE REF R4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R5
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K21 ["act"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R5
  CAPTURE REF R4
  CALL R8 1 0
  GETUPVAL R8 6
  LOADK R11 K22 ["Provider"]
  NAMECALL R9 R1 K4 ["FindFirstChild"]
  CALL R9 2 1
  MOVE R10 R6
  MOVE R11 R7
  CALL R8 3 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K21 ["act"]
  NEWCLOSURE R9 P3
  CAPTURE VAL R5
  CALL R8 1 0
  LOADNIL R8
  SETTABLEKS R8 R1 K11 ["Parent"]
  NAMECALL R8 R1 K5 ["Destroy"]
  CALL R8 1 0
  CLOSEUPVALS R4
  RETURN R0 0

PROTO_7:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  RETURN R3 1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_run"]
  GETTABLEKS R3 R0 K1 ["component"]
  GETTABLEKS R4 R0 K2 ["props"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_run"]
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactRoblox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["MainComponent"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["mockContext"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K16 ["Dash"]
  GETTABLEKS R8 R7 K17 ["join"]
  NEWTABLE R9 8 0
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K19 ["new"]
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K21 ["withProperties"]
  DUPCLOSURE R10 K22 [PROTO_7]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K23 ["_run"]
  DUPCLOSURE R10 K24 [PROTO_8]
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K25 ["run"]
  DUPCLOSURE R10 K26 [PROTO_9]
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K27 ["runPlugin"]
  RETURN R9 1
