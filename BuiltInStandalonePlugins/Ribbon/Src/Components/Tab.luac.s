PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Uri"]
  NAMECALL R0 R0 K1 ["deregister"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIF R0 [+1]
  RETURN R0 0
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R2 R0
  LOADK R3 K1 ["roblox-cli analyze w/o --project does not refine after early return"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["Uri"]
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Uri"]
  MOVE R4 R0
  NAMECALL R1 R1 K5 ["register"]
  CALL R1 3 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnTabSelected"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Uri"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  LOADNIL R2
  CALL R1 1 1
  GETTABLEKS R2 R0 K0 ["ForwardRef"]
  OR R1 R2 R1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  NEWCLOSURE R4 P0
  CAPTURE REF R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K1 ["Uri"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 0
  GETUPVAL R3 3
  DUPTABLE R4 K4 [{"Uri", "Title", "Text"}]
  GETTABLEKS R5 R0 K1 ["Uri"]
  SETTABLEKS R5 R4 K1 ["Uri"]
  GETTABLEKS R5 R0 K3 ["Text"]
  SETTABLEKS R5 R4 K2 ["Title"]
  GETTABLEKS R5 R0 K5 ["Tooltip"]
  SETTABLEKS R5 R4 K3 ["Text"]
  CALL R3 1 2
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K6 ["createElement"]
  LOADK R6 K7 ["TextButton"]
  NEWTABLE R7 8 0
  SETTABLEKS R1 R7 K8 ["ref"]
  GETTABLEKS R8 R0 K9 ["LayoutOrder"]
  SETTABLEKS R8 R7 K9 ["LayoutOrder"]
  GETTABLEKS R9 R0 K10 ["AltText"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R8 R0 K10 ["AltText"]
  JUMP [+2]
  GETTABLEKS R8 R0 K3 ["Text"]
  SETTABLEKS R8 R7 K3 ["Text"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K11 ["Event"]
  GETTABLEKS R8 R9 K12 ["MouseEnter"]
  SETTABLE R3 R7 R8
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K11 ["Event"]
  GETTABLEKS R8 R9 K13 ["MouseLeave"]
  SETTABLE R4 R7 R8
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K11 ["Event"]
  GETTABLEKS R8 R9 K14 ["Activated"]
  GETTABLEKS R10 R0 K15 ["Enabled"]
  JUMPIFNOT R10 [+3]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  JUMP [+1]
  LOADNIL R9
  SETTABLE R9 R7 R8
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K16 ["Tag"]
  GETUPVAL R9 5
  LOADK R10 K17 ["Component-Tab X-CornerM X-Fit X-PadTab"]
  GETTABLEKS R12 R0 K15 ["Enabled"]
  JUMPIFNOTEQKB R12 FALSE [+3]
  LOADK R11 K18 ["State-Disabled"]
  JUMP [+6]
  GETTABLEKS R12 R0 K19 ["Selected"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K20 ["State-Selected"]
  JUMP [+1]
  LOADK R11 K21 ["State-Default"]
  CALL R9 2 1
  SETTABLE R9 R7 R8
  CALL R5 2 -1
  CLOSEUPVALS R1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useRef"]
  GETTABLEKS R3 R1 K9 ["useEffect"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K13 ["Styling"]
  GETTABLEKS R7 R6 K14 ["joinTags"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K15 ["Hooks"]
  GETTABLEKS R9 R10 K16 ["useTooltip"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K15 ["Hooks"]
  GETTABLEKS R10 R11 K17 ["useWidgets"]
  CALL R9 1 1
  DUPCLOSURE R10 K18 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R7
  RETURN R10 1
