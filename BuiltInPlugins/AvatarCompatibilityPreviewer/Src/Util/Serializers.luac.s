PROTO_0:
  LOADNIL R1
  GETTABLEKS R3 R0 K0 ["item"]
  GETTABLEKS R2 R3 K1 ["source"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["SOURCE_BUILTIN"]
  JUMPIFNOTEQ R2 R3 [+32]
  DUPTABLE R2 K4 [{"source", "builtinItem"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["SOURCE_BUILTIN"]
  SETTABLEKS R3 R2 K1 ["source"]
  GETTABLEKS R5 R0 K5 ["palette"]
  GETTABLEKS R4 R5 K6 ["Serializer"]
  JUMPIFNOT R4 [+12]
  GETTABLEKS R5 R0 K5 ["palette"]
  GETTABLEKS R4 R5 K6 ["Serializer"]
  GETTABLEKS R3 R4 K7 ["serialize"]
  GETTABLEKS R5 R0 K0 ["item"]
  GETTABLEKS R4 R5 K3 ["builtinItem"]
  CALL R3 1 1
  JUMP [+4]
  GETTABLEKS R4 R0 K0 ["item"]
  GETTABLEKS R3 R4 K3 ["builtinItem"]
  SETTABLEKS R3 R2 K3 ["builtinItem"]
  MOVE R1 R2
  JUMP [+37]
  GETTABLEKS R3 R0 K0 ["item"]
  GETTABLEKS R2 R3 K1 ["source"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["SOURCE_INSTANCE"]
  JUMPIFNOTEQ R2 R3 [+17]
  DUPTABLE R2 K10 [{"source", "key"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["SOURCE_INSTANCE"]
  SETTABLEKS R3 R2 K1 ["source"]
  GETTABLEKS R5 R0 K0 ["item"]
  GETTABLEKS R4 R5 K11 ["instance"]
  GETTABLEKS R3 R4 K12 ["Name"]
  SETTABLEKS R3 R2 K9 ["key"]
  MOVE R1 R2
  JUMP [+12]
  GETIMPORT R2 K14 [error]
  LOADK R4 K15 ["Unknown item source in serialization: %*"]
  GETTABLEKS R7 R0 K0 ["item"]
  GETTABLEKS R6 R7 K1 ["source"]
  NAMECALL R4 R4 K16 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  DUPTABLE R2 K17 [{"palette", "item"}]
  GETTABLEKS R4 R0 K5 ["palette"]
  GETTABLEKS R3 R4 K18 ["Key"]
  SETTABLEKS R3 R2 K5 ["palette"]
  SETTABLEKS R1 R2 K0 ["item"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["map"]
  MOVE R4 R0
  DUPCLOSURE R5 K1 [PROTO_0]
  CAPTURE UPVAL U2
  CALL R3 2 -1
  NAMECALL R1 R1 K2 ["JSONEncode"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["palette"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+11]
  GETIMPORT R3 K2 [error]
  LOADK R5 K3 ["Invalid palette for equipped item: %*"]
  GETTABLEKS R7 R1 K0 ["palette"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  LOADNIL R3
  GETTABLEKS R5 R1 K8 ["item"]
  GETTABLEKS R4 R5 K9 ["source"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["SOURCE_BUILTIN"]
  JUMPIFNOTEQ R4 R5 [+28]
  DUPTABLE R4 K12 [{"source", "builtinItem"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["SOURCE_BUILTIN"]
  SETTABLEKS R5 R4 K9 ["source"]
  GETTABLEKS R6 R2 K13 ["Serializer"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R2 K13 ["Serializer"]
  GETTABLEKS R5 R6 K14 ["deserialize"]
  GETTABLEKS R7 R1 K8 ["item"]
  GETTABLEKS R6 R7 K11 ["builtinItem"]
  CALL R5 1 1
  JUMP [+4]
  GETTABLEKS R6 R1 K8 ["item"]
  GETTABLEKS R5 R6 K11 ["builtinItem"]
  SETTABLEKS R5 R4 K11 ["builtinItem"]
  MOVE R3 R4
  JUMP [+43]
  GETTABLEKS R5 R1 K8 ["item"]
  GETTABLEKS R4 R5 K9 ["source"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["SOURCE_INSTANCE"]
  JUMPIFNOTEQ R4 R5 [+23]
  GETUPVAL R4 2
  GETTABLEKS R7 R1 K8 ["item"]
  GETTABLEKS R6 R7 K16 ["key"]
  NAMECALL R4 R4 K17 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOTEQKNIL R4 [+3]
  LOADNIL R5
  RETURN R5 1
  DUPTABLE R5 K19 [{"source", "instance"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["SOURCE_INSTANCE"]
  SETTABLEKS R6 R5 K9 ["source"]
  SETTABLEKS R4 R5 K18 ["instance"]
  MOVE R3 R5
  JUMP [+12]
  GETIMPORT R4 K2 [error]
  LOADK R6 K20 ["Unknown item source in deserialization: %*"]
  GETTABLEKS R9 R1 K8 ["item"]
  GETTABLEKS R8 R9 K9 ["source"]
  NAMECALL R6 R6 K4 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  DUPTABLE R4 K21 [{"palette", "item"}]
  SETTABLEKS R2 R4 K0 ["palette"]
  SETTABLEKS R3 R4 K8 ["item"]
  RETURN R4 1

PROTO_3:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["collectArray"]
  MOVE R3 R1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["equippedItems_DEPRECATED"]
  CALL R1 1 -1
  RETURN R1 -1
  DUPTABLE R1 K6 [{"serialize", "deserialize"}]
  DUPCLOSURE R2 K7 [PROTO_1]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K4 ["serialize"]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K5 ["deserialize"]
  RETURN R1 1

PROTO_5:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETTABLEKS R3 R0 K3 ["palette"]
  GETTABLEKS R2 R3 K4 ["Key"]
  SETTABLEKS R2 R1 K3 ["palette"]
  GETTABLEKS R3 R0 K5 ["item"]
  GETTABLEKS R2 R3 K6 ["source"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["SOURCE_BUILTIN"]
  JUMPIFNOTEQ R2 R3 [+26]
  GETTABLEKS R3 R0 K3 ["palette"]
  GETTABLEKS R2 R3 K8 ["Serializer"]
  JUMPIFEQKNIL R2 [+58]
  GETIMPORT R2 K2 [table.clone]
  GETTABLEKS R3 R1 K5 ["item"]
  CALL R2 1 1
  GETTABLEKS R5 R0 K3 ["palette"]
  GETTABLEKS R4 R5 K8 ["Serializer"]
  GETTABLEKS R3 R4 K9 ["serialize"]
  GETTABLEKS R4 R2 K10 ["builtinItem"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["builtinItem"]
  SETTABLEKS R2 R1 K5 ["item"]
  RETURN R1 1
  GETTABLEKS R3 R0 K5 ["item"]
  GETTABLEKS R2 R3 K6 ["source"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["SOURCE_INSTANCE"]
  JUMPIFNOTEQ R2 R3 [+18]
  DUPTABLE R2 K13 [{"source", "key"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["SOURCE_INSTANCE"]
  SETTABLEKS R3 R2 K6 ["source"]
  GETTABLEKS R5 R0 K5 ["item"]
  GETTABLEKS R4 R5 K14 ["instance"]
  GETTABLEKS R3 R4 K15 ["Name"]
  SETTABLEKS R3 R2 K12 ["key"]
  SETTABLEKS R2 R1 K5 ["item"]
  RETURN R1 1
  GETIMPORT R2 K17 [error]
  LOADK R4 K18 ["Unknown item source in serialization: %*"]
  GETTABLEKS R7 R0 K5 ["item"]
  GETTABLEKS R6 R7 K6 ["source"]
  NAMECALL R4 R4 K19 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["map"]
  MOVE R4 R0
  DUPCLOSURE R5 K1 [PROTO_5]
  CAPTURE UPVAL U2
  CALL R3 2 -1
  NAMECALL R1 R1 K2 ["JSONEncode"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["palette"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+11]
  GETIMPORT R3 K2 [error]
  LOADK R5 K3 ["Invalid palette for equipped item: %*"]
  GETTABLEKS R7 R1 K0 ["palette"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  SETTABLEKS R2 R1 K0 ["palette"]
  GETTABLEKS R4 R1 K8 ["item"]
  GETTABLEKS R3 R4 K9 ["source"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["SOURCE_BUILTIN"]
  JUMPIFNOTEQ R3 R4 [+19]
  GETTABLEKS R3 R2 K11 ["Serializer"]
  JUMPIFEQKNIL R3 [+59]
  GETTABLEKS R3 R1 K8 ["item"]
  GETTABLEKS R5 R2 K11 ["Serializer"]
  GETTABLEKS R4 R5 K12 ["deserialize"]
  GETTABLEKS R6 R1 K8 ["item"]
  GETTABLEKS R5 R6 K13 ["builtinItem"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["builtinItem"]
  RETURN R1 1
  GETTABLEKS R4 R1 K8 ["item"]
  GETTABLEKS R3 R4 K9 ["source"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["SOURCE_INSTANCE"]
  JUMPIFNOTEQ R3 R4 [+24]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K15 ["getItemById"]
  GETTABLEKS R5 R1 K8 ["item"]
  GETTABLEKS R4 R5 K16 ["key"]
  CALL R3 1 1
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R4
  RETURN R4 1
  DUPTABLE R4 K18 [{"source", "instance"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K14 ["SOURCE_INSTANCE"]
  SETTABLEKS R5 R4 K9 ["source"]
  SETTABLEKS R3 R4 K17 ["instance"]
  SETTABLEKS R4 R1 K8 ["item"]
  RETURN R1 1
  GETIMPORT R3 K2 [error]
  LOADK R5 K19 ["Unknown item source in deserialization: %*"]
  GETTABLEKS R8 R1 K8 ["item"]
  GETTABLEKS R7 R8 K9 ["source"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["collectArray"]
  MOVE R3 R1
  DUPCLOSURE R4 K2 [PROTO_7]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K12 ["Src"]
  GETTABLEKS R5 R6 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Util"]
  GETTABLEKS R5 R6 K15 ["UserCatalog_DEPRECATED"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K12 ["Src"]
  GETTABLEKS R6 R7 K16 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K17 ["getPaletteFromKey"]
  CALL R6 1 1
  NEWTABLE R7 0 0
  DUPCLOSURE R8 K18 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K19 ["createEquippedItemsSerializer"]
  DUPTABLE R8 K22 [{"serialize", "deserialize"}]
  DUPCLOSURE R9 K23 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K20 ["serialize"]
  DUPCLOSURE R9 K24 [PROTO_8]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K21 ["deserialize"]
  SETTABLEKS R8 R7 K25 ["equippedItems_DEPRECATED"]
  RETURN R7 1
