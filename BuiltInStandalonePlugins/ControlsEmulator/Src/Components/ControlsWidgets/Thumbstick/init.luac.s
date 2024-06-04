PROTO_0:
  GETTABLEKS R4 R0 K0 ["X"]
  GETTABLEKS R3 R4 K1 ["Offset"]
  LOADN R5 0
  GETUPVAL R7 0
  DIVK R6 R7 K2 [2]
  SUB R4 R5 R6
  GETUPVAL R6 0
  DIVK R5 R6 K2 [2]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K5 [math.clamp]
  CALL R2 3 1
  GETUPVAL R4 0
  DIVK R3 R4 K2 [2]
  ADD R1 R2 R3
  GETTABLEKS R5 R0 K6 ["Y"]
  GETTABLEKS R4 R5 K1 ["Offset"]
  LOADN R6 0
  GETUPVAL R8 0
  DIVK R7 R8 K2 [2]
  SUB R5 R6 R7
  GETUPVAL R7 0
  DIVK R6 R7 K2 [2]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K5 [math.clamp]
  CALL R3 3 1
  GETUPVAL R5 0
  DIVK R4 R5 K2 [2]
  ADD R2 R3 R4
  GETIMPORT R3 K9 [UDim2.new]
  LOADN R4 0
  MOVE R5 R1
  LOADN R6 0
  MOVE R7 R2
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  GETTABLEKS R6 R0 K1 ["X"]
  GETTABLEKS R5 R6 K2 ["Offset"]
  GETUPVAL R6 0
  DIV R4 R5 R6
  MULK R3 R4 K0 [2]
  LOADN R4 255
  LOADN R5 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K5 [math.clamp]
  CALL R2 3 1
  GETTABLEKS R8 R0 K6 ["Y"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  MINUS R6 R7
  GETUPVAL R7 0
  DIV R5 R6 R7
  MULK R4 R5 K0 [2]
  LOADN R5 255
  LOADN R6 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K5 [math.clamp]
  CALL R3 3 1
  LOADN R4 0
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K9 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETIMPORT R2 K2 [UDim2.new]
  LOADN R3 0
  GETTABLEKS R6 R0 K3 ["Position"]
  GETTABLEKS R5 R6 K4 ["X"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["current"]
  SUB R4 R5 R6
  LOADN R5 0
  GETTABLEKS R8 R0 K3 ["Position"]
  GETTABLEKS R7 R8 K6 ["Y"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["current"]
  SUB R6 R7 R8
  CALL R2 4 -1
  CALL R1 -1 0
  GETUPVAL R1 3
  GETUPVAL R3 4
  NAMECALL R1 R1 K7 ["map"]
  CALL R1 2 1
  NAMECALL R1 R1 K8 ["getValue"]
  CALL R1 1 1
  GETUPVAL R2 5
  GETUPVAL R4 6
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K9 ["KeyCode"]
  MOVE R6 R1
  GETIMPORT R7 K12 [Vector3.zero]
  NAMECALL R2 R2 K13 ["SendGamepadEvent"]
  CALL R2 5 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R1 R2 [+46]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFEQKNIL R1 [+41]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFEQKNIL R1 [+36]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["current"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["current"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 2
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R1 3
  GETUPVAL R3 4
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K6 ["KeyCode"]
  GETIMPORT R5 K9 [Vector3.zero]
  GETIMPORT R6 K9 [Vector3.zero]
  NAMECALL R1 R1 K10 ["SendGamepadEvent"]
  CALL R1 5 0
  GETUPVAL R1 6
  GETUPVAL R2 7
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+69]
  GETUPVAL R2 1
  JUMPIFEQKNIL R2 [+66]
  GETUPVAL R2 2
  JUMPIFEQKNIL R2 [+63]
  GETTABLEKS R2 R1 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+57]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFEQKNIL R2 [+52]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFEQKNIL R2 [+47]
  GETUPVAL R2 3
  GETTABLEKS R4 R1 K5 ["Position"]
  GETTABLEKS R3 R4 K6 ["X"]
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 4
  GETTABLEKS R4 R1 K5 ["Position"]
  GETTABLEKS R3 R4 K7 ["Y"]
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 11
  GETUPVAL R3 2
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U11
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U5
  CAPTURE UPVAL U12
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["current"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useRef"]
  LOADNIL R3
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useRef"]
  LOADN R4 0
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["useRef"]
  LOADN R5 0
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["createBinding"]
  GETUPVAL R6 1
  CALL R5 1 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["useContext"]
  GETUPVAL R9 2
  CALL R8 1 1
  GETTABLEKS R7 R8 K3 ["InputChanged"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["useContext"]
  GETUPVAL R10 2
  CALL R9 1 1
  GETTABLEKS R8 R9 K4 ["InputEnded"]
  DUPCLOSURE R9 K5 [PROTO_0]
  CAPTURE UPVAL U3
  DUPCLOSURE R10 K6 [PROTO_1]
  CAPTURE UPVAL U3
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["createElement"]
  LOADK R12 K8 ["Frame"]
  NEWTABLE R13 4 0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["Tag"]
  LOADK R15 K10 ["Widget-Thumbstick X-Circle data-testid=Widget-Thumbstick"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R0 K11 ["Position"]
  SETTABLEKS R14 R13 K11 ["Position"]
  GETTABLEKS R14 R0 K12 ["Size"]
  SETTABLEKS R14 R13 K12 ["Size"]
  DUPTABLE R14 K14 [{"Stick"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K7 ["createElement"]
  LOADK R16 K8 ["Frame"]
  NEWTABLE R17 4 0
  MOVE R20 R9
  NAMECALL R18 R5 K15 ["map"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K11 ["Position"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K9 ["Tag"]
  LOADK R19 K16 ["Widget-Thumbstick-Stick X-Circle data-testid=Widget-Thumbstick-Stick"]
  SETTABLE R19 R17 R18
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K17 ["Event"]
  GETTABLEKS R18 R19 K18 ["InputBegan"]
  NEWCLOSURE R19 P2
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  SETTABLE R19 R17 R18
  CALL R15 2 1
  SETTABLEKS R15 R14 K13 ["Stick"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["MousePositionContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K10 ["MockableProxyServices"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K11 ["StudioDeviceEmulatorService"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K14 ["FAKE_CONNECTED_GAMEPAD_ID"]
  GETTABLEKS R6 R2 K15 ["THUMBSTICK_SIZE"]
  GETTABLEKS R7 R2 K16 ["THUMBSTICK_SOCKET_SIZE"]
  GETIMPORT R8 K19 [UDim2.new]
  LOADN R9 0
  DIVK R11 R7 K20 [2]
  SUB R10 R11 R6
  LOADN R11 0
  DIVK R13 R7 K20 [2]
  SUB R12 R13 R6
  CALL R8 4 1
  DUPCLOSURE R9 K21 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R9 1
