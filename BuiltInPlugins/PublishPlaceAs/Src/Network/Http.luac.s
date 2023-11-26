PROTO_0:
  GETTABLEKS R1 R0 K0 ["Params"]
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["Params"]
  JUMPIFNOT R1 [+40]
  NEWTABLE R2 0 0
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R12 0
  MOVE R14 R6
  NAMECALL R12 R12 K3 ["UrlEncode"]
  CALL R12 2 1
  MOVE R9 R12
  LOADK R10 K4 ["="]
  GETUPVAL R11 0
  MOVE R13 R7
  NAMECALL R11 R11 K3 ["UrlEncode"]
  CALL R11 2 1
  CONCAT R8 R9 R11
  FASTCALL2 TABLE_INSERT R2 R8 [+5]
  MOVE R10 R2
  MOVE R11 R8
  GETIMPORT R9 K7 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [-21]
  GETTABLEKS R4 R0 K8 ["Url"]
  LOADK R5 K9 ["?"]
  GETIMPORT R6 K11 [table.concat]
  MOVE R7 R2
  LOADK R8 K12 ["&"]
  CALL R6 2 1
  CONCAT R3 R4 R6
  SETTABLEKS R3 R0 K8 ["Url"]
  RETURN R0 0

PROTO_1:
  PREPVARARGS 2
  LOADK R3 K0 ["https://"]
  MOVE R4 R0
  LOADK R5 K1 ["."]
  GETUPVAL R6 0
  GETIMPORT R8 K5 [string.format]
  MOVE R9 R1
  GETVARARGS R10 4294967295
  CALL R8 -1 1
  ORK R7 R8 K2 [""]
  CONCAT R2 R3 R7
  RETURN R2 1

PROTO_2:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["RequestAsync"]
  GETUPVAL R2 0
  GETUPVAL R3 1
  CALL R0 3 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  JUMPIFNOT R0 [+21]
  GETTABLEKS R2 R1 K0 ["StatusCode"]
  LOADN R3 144
  JUMPIFNOTLE R3 R2 [+12]
  GETUPVAL R2 0
  LOADK R4 K1 ["HTTP error: "]
  GETTABLEKS R6 R1 K0 ["StatusCode"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K3 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K4 ["Body"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 0
  LOADK R4 K1 ["HTTP error: "]
  GETTABLEKS R6 R1 K5 ["HttpError"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K3 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["RequestInternal"]
  CALL R0 2 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R0 R0 K1 ["Start"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpRbxApiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ContentProvider"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R3 K11 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["Promise"]
  GETTABLEKS R5 R2 K15 ["BaseUrl"]
  LOADK R8 K16 ["https://www."]
  NAMECALL R6 R5 K17 ["find"]
  CALL R6 2 1
  JUMPIFNOTEQKN R6 K18 [1] [+7]
  LOADN R8 13
  NAMECALL R6 R5 K19 ["sub"]
  CALL R6 2 1
  MOVE R5 R6
  JUMP [+11]
  LOADK R8 K20 ["http://www."]
  NAMECALL R6 R5 K17 ["find"]
  CALL R6 2 1
  JUMPIFNOTEQKN R6 K18 [1] [+6]
  LOADN R8 12
  NAMECALL R6 R5 K19 ["sub"]
  CALL R6 2 1
  MOVE R5 R6
  DUPCLOSURE R6 K21 [PROTO_0]
  CAPTURE VAL R1
  NEWTABLE R7 4 0
  NEWCLOSURE R8 P1
  CAPTURE REF R5
  SETTABLEKS R8 R7 K22 ["BuildRobloxUrl"]
  DUPCLOSURE R8 K23 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K24 ["Request"]
  DUPCLOSURE R8 K25 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K26 ["RequestInternal"]
  CLOSEUPVALS R5
  RETURN R7 1
