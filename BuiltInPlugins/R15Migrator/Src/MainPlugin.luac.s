PROTO_0:
  GETTABLEKS R3 R1 K0 ["PluginLoaderContext"]
  GETTABLEKS R2 R3 K1 ["toolbar"]
  SETTABLEKS R2 R0 K1 ["toolbar"]
  GETTABLEKS R3 R1 K0 ["PluginLoaderContext"]
  GETTABLEKS R2 R3 K2 ["mainButton"]
  SETTABLEKS R2 R0 K2 ["mainButton"]
  GETTABLEKS R2 R0 K2 ["mainButton"]
  GETTABLEKS R5 R0 K3 ["state"]
  GETTABLEKS R4 R5 K4 ["enabled"]
  NAMECALL R2 R2 K5 ["SetActive"]
  CALL R2 2 0
  GETTABLEKS R3 R1 K0 ["PluginLoaderContext"]
  GETTABLEKS R2 R3 K6 ["mainButtonClickedSignal"]
  GETTABLEKS R4 R0 K7 ["toggleEnabled"]
  NAMECALL R2 R2 K8 ["Connect"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["scanComplete"]
  JUMPIFNOT R0 [+53]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K2 ["enabled"]
  JUMPIFNOT R0 [+29]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["setScriptAnalysisEnabled"]
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["store"]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  CALL R2 1 -1
  NAMECALL R0 R0 K5 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["store"]
  GETUPVAL R2 2
  CALL R2 0 -1
  NAMECALL R0 R0 K5 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["setScriptAnalysisEnabled"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["store"]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  CALL R2 1 -1
  NAMECALL R0 R0 K5 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["store"]
  GETUPVAL R2 2
  CALL R2 0 -1
  NAMECALL R0 R0 K5 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["BindableEvent"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["finalizedEvent"]
  GETTABLEKS R1 R0 K4 ["finalizedEvent"]
  GETTABLEKS R4 R0 K5 ["props"]
  GETTABLEKS R3 R4 K6 ["PluginLoaderContext"]
  GETTABLEKS R2 R3 K7 ["mainDockWidget"]
  SETTABLEKS R2 R1 K8 ["Parent"]
  GETTABLEKS R1 R0 K4 ["finalizedEvent"]
  LOADK R2 K9 ["ConversionFinalized"]
  SETTABLEKS R2 R1 K10 ["Name"]
  GETTABLEKS R2 R0 K4 ["finalizedEvent"]
  GETTABLEKS R1 R2 K11 ["Event"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K12 ["Connect"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["R15Migrator"]
  LOADN R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["onScriptAnalysisCallback"]
  NAMECALL R0 R0 K2 ["RegisterScriptAnalysisCallback"]
  CALL R0 4 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADK R2 K0 ["R15Migrator"]
  NAMECALL R0 R0 K1 ["DeregisterScriptAnalysisCallback"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  LOADNIL R1
  LOADNIL R2
  JUMPIFNOT R0 [+9]
  GETIMPORT R3 K1 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R3 1 2
  MOVE R1 R3
  MOVE R2 R4
  JUMP [+7]
  GETIMPORT R3 K1 [pcall]
  DUPCLOSURE R4 K2 [PROTO_4]
  CAPTURE UPVAL U0
  CALL R3 1 2
  MOVE R1 R3
  MOVE R2 R4
  JUMPIF R1 [+4]
  GETIMPORT R3 K4 [warn]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["isRescan"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["setScriptAnalysisEnabled"]
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["setScriptAnalysisEnabled"]
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R0 0
  DUPTABLE R2 K4 [{"scanComplete"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["scanComplete"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  GETIMPORT R0 K7 [game]
  LOADK R2 K8 ["Workspace"]
  NAMECALL R0 R0 K9 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K13 [Enum.AvatarUnificationMode.Enabled]
  NAMECALL R0 R0 K14 ["SetAvatarUnificationMode"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["store"]
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["analytics"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["networkInterface"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CALL R2 3 -1
  NAMECALL R0 R0 K3 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"isRescan", "scanComplete"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isRescan"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["scanComplete"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["store"]
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K5 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_9]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["state"]
  GETTABLEKS R0 R1 K3 ["enabled"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  GETIMPORT R1 K6 [os.time]
  CALL R1 0 1
  SETTABLEKS R1 R0 K7 ["StartTime"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["state"]
  GETTABLEKS R0 R1 K8 ["scanComplete"]
  JUMPIF R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["state"]
  GETTABLEKS R0 R1 K3 ["enabled"]
  JUMPIF R0 [+9]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K9 ["setScriptAnalysisEnabled"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["enabled"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["enabled"]
  JUMPIF R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["toggleEnabled"]
  CALL R0 0 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["setScriptAnalysisEnabled"]
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["analytics"]
  LOADK R2 K5 ["onPluginClosed"]
  NAMECALL R0 R0 K6 ["getHandler"]
  CALL R0 2 1
  CALL R0 0 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K4 ["scanComplete"]
  JUMPIF R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K0 ["enabled"]
  JUMPIF R1 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["setScriptAnalysisEnabled"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K0 ["enabled"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["script"]
  GETUPVAL R3 0
  NAMECALL R1 R1 K1 ["IsDescendantOf"]
  CALL R1 2 1
  JUMPIF R1 [+7]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["isDescendantOfSaveFolder"]
  GETTABLEKS R2 R0 K0 ["script"]
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  DUPTABLE R1 K4 [{"diagnostics"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K3 ["diagnostics"]
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["script"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["UnificationScriptAttributeName"]
  NAMECALL R1 R1 K6 ["GetAttribute"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  DUPTABLE R1 K4 [{"diagnostics"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K3 ["diagnostics"]
  RETURN R1 1
  GETUPVAL R1 3
  GETTABLEKS R3 R0 K0 ["script"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K7 ["localization"]
  NAMECALL R1 R1 K8 ["ScanScript"]
  CALL R1 3 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K9 ["store"]
  GETUPVAL R4 5
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K10 ["scriptConversionContext"]
  GETTABLEKS R6 R0 K0 ["script"]
  MOVE R7 R1
  CALL R4 3 -1
  NAMECALL R2 R2 K11 ["dispatch"]
  CALL R2 -1 0
  NAMECALL R2 R1 K12 ["GetSize"]
  CALL R2 1 1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+8]
  DUPTABLE R2 K4 [{"diagnostics"}]
  NAMECALL R3 R1 K13 ["GetDataForLinter"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["diagnostics"]
  RETURN R2 1
  DUPTABLE R2 K4 [{"diagnostics"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K3 ["diagnostics"]
  RETURN R2 1

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["store"]
  GETUPVAL R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["scriptConversionContext"]
  MOVE R5 R0
  CALL R3 2 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["state"]
  GETTABLEKS R1 R2 K5 ["scanComplete"]
  JUMPIF R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["state"]
  GETTABLEKS R1 R2 K0 ["enabled"]
  JUMPIF R1 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["setScriptAnalysisEnabled"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["state"]
  GETTABLEKS R2 R3 K0 ["enabled"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["enabled"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["setScriptAnalysisEnabled"]
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["analytics"]
  LOADK R2 K4 ["onPluginClosed"]
  NAMECALL R0 R0 K5 ["getHandler"]
  CALL R0 2 1
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K6 ["communication"]
  NAMECALL R0 R0 K7 ["cleanup"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  DUPTABLE R2 K3 [{"enabled", "scanComplete", "isRescan"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["scanComplete"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["isRescan"]
  SETTABLEKS R2 R0 K4 ["state"]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+3]
  NAMECALL R2 R0 K5 ["setupFinalizedEvent"]
  CALL R2 1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["setScriptAnalysisEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K7 ["startScan"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K8 ["resetPlugin"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K9 ["toggleEnabled"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K10 ["new"]
  LOADK R3 K11 ["R15Migrator"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K12 ["communication"]
  GETTABLEKS R2 R0 K12 ["communication"]
  LOADK R4 K13 ["Open"]
  NEWCLOSURE R5 P4
  CAPTURE VAL R0
  NAMECALL R2 R2 K14 ["Connect"]
  CALL R2 3 0
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K15 ["onClose"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K16 ["onRestore"]
  NEWCLOSURE R2 P7
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  SETTABLEKS R2 R0 K17 ["onScriptAnalysisCallback"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  SETTABLEKS R2 R0 K18 ["onScriptDestroyingCallback"]
  NEWCLOSURE R2 P9
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K19 ["onWidgetEnabledChanged"]
  GETUPVAL R4 11
  GETTABLEKS R3 R4 K20 ["Store"]
  GETTABLEKS R2 R3 K10 ["new"]
  GETUPVAL R3 12
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 11
  GETTABLEKS R6 R7 K21 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K22 ["store"]
  GETUPVAL R4 13
  GETTABLEKS R3 R4 K23 ["Localization"]
  GETTABLEKS R2 R3 K10 ["new"]
  DUPTABLE R3 K27 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 14
  SETTABLEKS R4 R3 K24 ["stringResourceTable"]
  GETUPVAL R4 15
  SETTABLEKS R4 R3 K25 ["translationResourceTable"]
  LOADK R4 K11 ["R15Migrator"]
  SETTABLEKS R4 R3 K26 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K28 ["localization"]
  GETUPVAL R4 13
  GETTABLEKS R3 R4 K29 ["Analytics"]
  GETTABLEKS R2 R3 K10 ["new"]
  GETUPVAL R3 16
  CALL R2 1 1
  SETTABLEKS R2 R0 K30 ["analytics"]
  GETUPVAL R3 17
  GETTABLEKS R2 R3 K10 ["new"]
  GETTABLEKS R3 R0 K18 ["onScriptDestroyingCallback"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K31 ["scriptConversionContext"]
  GETUPVAL R3 18
  GETTABLEKS R2 R3 K10 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K32 ["networkInterface"]
  GETTABLEKS R3 R1 K33 ["Plugin"]
  GETTABLEKS R2 R3 K34 ["Unloading"]
  NEWCLOSURE R4 P10
  CAPTURE VAL R0
  NAMECALL R2 R2 K14 ["Connect"]
  CALL R2 2 0
  GETUPVAL R2 0
  JUMPIFNOT R2 [+4]
  MOVE R4 R1
  NAMECALL R2 R0 K35 ["initToolbarAndButton"]
  CALL R2 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R4 0
  NOT R3 R4
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 1 0
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["enabled"]
  DUPTABLE R3 K5 [{"Toggle"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K15 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
  SETTABLEKS R1 R6 K7 ["Toolbar"]
  SETTABLEKS R2 R6 K8 ["Active"]
  LOADK R7 K16 ["r15_migration_button"]
  SETTABLEKS R7 R6 K9 ["Id"]
  GETTABLEKS R7 R0 K17 ["localization"]
  LOADK R9 K18 ["Plugin"]
  LOADK R10 K19 ["Button"]
  NAMECALL R7 R7 K20 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K10 ["Title"]
  GETTABLEKS R7 R0 K17 ["localization"]
  LOADK R9 K18 ["Plugin"]
  LOADK R10 K21 ["Description"]
  NAMECALL R7 R7 K20 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["Tooltip"]
  LOADK R7 K22 ["http://www.roblox.com/asset/?id=12399871436"]
  SETTABLEKS R7 R6 K12 ["Icon"]
  GETTABLEKS R7 R0 K23 ["toggleEnabled"]
  SETTABLEKS R7 R6 K13 ["OnClick"]
  LOADB R7 1
  SETTABLEKS R7 R6 K14 ["ClickableWhenViewportHidden"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["Toggle"]
  RETURN R3 1

PROTO_20:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETTABLEKS R5 R2 K4 ["scanComplete"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["provide"]
  NEWTABLE R7 0 8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["new"]
  MOVE R9 R3
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["new"]
  GETTABLEKS R10 R0 K7 ["store"]
  CALL R9 1 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K6 ["new"]
  NAMECALL R11 R3 K8 ["getMouse"]
  CALL R11 1 -1
  CALL R10 -1 1
  GETUPVAL R11 4
  CALL R11 0 1
  GETTABLEKS R12 R0 K9 ["localization"]
  GETTABLEKS R13 R0 K10 ["analytics"]
  GETTABLEKS R14 R0 K11 ["scriptConversionContext"]
  GETTABLEKS R15 R0 K12 ["networkInterface"]
  SETLIST R7 R8 8 [1]
  DUPTABLE R8 K15 [{"Toolbar", "MainWidget"}]
  GETUPVAL R10 5
  JUMPIF R10 [+14]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R10 7
  DUPTABLE R11 K19 [{"Title", "RenderButtons"}]
  LOADK R12 K20 ["AvatarUnification"]
  SETTABLEKS R12 R11 K17 ["Title"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K18 ["RenderButtons"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K13 ["Toolbar"]
  GETUPVAL R10 5
  JUMPIFNOT R10 [+104]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R10 8
  NEWTABLE R11 16 0
  GETUPVAL R13 9
  JUMPIFNOT R13 [+2]
  LOADK R12 K21 ["R15Migrator"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K22 ["Id"]
  SETTABLEKS R4 R11 K23 ["Enabled"]
  GETTABLEKS R12 R0 K9 ["localization"]
  LOADK R14 K2 ["Plugin"]
  LOADK R15 K24 ["Name"]
  NAMECALL R12 R12 K25 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K17 ["Title"]
  GETIMPORT R12 K29 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K27 ["ZIndexBehavior"]
  GETTABLEKS R12 R0 K30 ["onClose"]
  SETTABLEKS R12 R11 K31 ["OnClose"]
  LOADB R12 1
  SETTABLEKS R12 R11 K32 ["ShouldRestore"]
  GETTABLEKS R13 R1 K33 ["PluginLoaderContext"]
  GETTABLEKS R12 R13 K34 ["mainDockWidget"]
  SETTABLEKS R12 R11 K35 ["Widget"]
  GETTABLEKS R12 R0 K36 ["onRestore"]
  SETTABLEKS R12 R11 K37 ["OnWidgetRestored"]
  GETIMPORT R12 K39 [Vector2.new]
  LOADN R13 252
  LOADN R14 128
  CALL R12 2 1
  SETTABLEKS R12 R11 K40 ["Size"]
  GETIMPORT R12 K43 [Enum.InitialDockState.Left]
  SETTABLEKS R12 R11 K41 ["InitialDockState"]
  GETIMPORT R12 K39 [Vector2.new]
  LOADN R13 252
  LOADN R14 128
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["MinSize"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K45 ["Change"]
  GETTABLEKS R12 R13 K23 ["Enabled"]
  GETTABLEKS R13 R0 K46 ["onWidgetEnabledChanged"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K49 [{"MainView", "LoadingScreenPrompt"}]
  JUMPIFNOT R5 [+11]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 10
  DUPTABLE R15 K51 [{"OnResetPlugin"}]
  GETTABLEKS R16 R0 K52 ["resetPlugin"]
  SETTABLEKS R16 R15 K50 ["OnResetPlugin"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K47 ["MainView"]
  JUMPIF R5 [+11]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 11
  DUPTABLE R15 K54 [{"OnClick"}]
  GETTABLEKS R16 R0 K55 ["startScan"]
  SETTABLEKS R16 R15 K53 ["OnClick"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K48 ["LoadingScreenPrompt"]
  CALL R9 3 1
  JUMP [+92]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R10 8
  NEWTABLE R11 16 0
  GETUPVAL R13 9
  JUMPIFNOT R13 [+2]
  LOADK R12 K21 ["R15Migrator"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K22 ["Id"]
  SETTABLEKS R4 R11 K23 ["Enabled"]
  GETTABLEKS R12 R0 K9 ["localization"]
  LOADK R14 K2 ["Plugin"]
  LOADK R15 K24 ["Name"]
  NAMECALL R12 R12 K25 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K17 ["Title"]
  GETIMPORT R12 K29 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K27 ["ZIndexBehavior"]
  GETIMPORT R12 K43 [Enum.InitialDockState.Left]
  SETTABLEKS R12 R11 K41 ["InitialDockState"]
  GETIMPORT R12 K39 [Vector2.new]
  LOADN R13 252
  LOADN R14 128
  CALL R12 2 1
  SETTABLEKS R12 R11 K40 ["Size"]
  GETIMPORT R12 K39 [Vector2.new]
  LOADN R13 252
  LOADN R14 128
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["MinSize"]
  GETTABLEKS R12 R0 K30 ["onClose"]
  SETTABLEKS R12 R11 K31 ["OnClose"]
  LOADB R12 1
  SETTABLEKS R12 R11 K32 ["ShouldRestore"]
  GETTABLEKS R12 R0 K36 ["onRestore"]
  SETTABLEKS R12 R11 K37 ["OnWidgetRestored"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K45 ["Change"]
  GETTABLEKS R12 R13 K23 ["Enabled"]
  GETTABLEKS R13 R0 K46 ["onWidgetEnabledChanged"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K49 [{"MainView", "LoadingScreenPrompt"}]
  JUMPIFNOT R5 [+6]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 10
  CALL R13 1 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K47 ["MainView"]
  JUMPIF R5 [+11]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 11
  DUPTABLE R15 K54 [{"OnClick"}]
  GETTABLEKS R16 R0 K55 ["startScan"]
  SETTABLEKS R16 R15 K53 ["OnClick"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K48 ["LoadingScreenPrompt"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["MainWidget"]
  CALL R6 2 -1
  RETURN R6 -1

PROTO_22:
  GETTABLEKS R1 R0 K0 ["mainButton"]
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R3 R4 K2 ["enabled"]
  NAMECALL R1 R1 K3 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_R15Migrator"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ScriptEditorService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["PluginDebugService"]
  NAMECALL R3 R3 K6 ["GetService"]
  CALL R3 2 1
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R4 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R4 K15 ["Packages"]
  GETTABLEKS R7 R8 K16 ["Roact"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R4 K15 ["Packages"]
  GETTABLEKS R8 R9 K17 ["Rodux"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R10 R4 K15 ["Packages"]
  GETTABLEKS R9 R10 K18 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K19 ["UI"]
  GETTABLEKS R10 R9 K20 ["DockWidget"]
  GETTABLEKS R11 R9 K21 ["PluginButton"]
  GETTABLEKS R12 R9 K22 ["PluginToolbar"]
  GETTABLEKS R13 R8 K23 ["ContextServices"]
  GETTABLEKS R14 R13 K24 ["Plugin"]
  GETTABLEKS R15 R13 K25 ["Mouse"]
  GETTABLEKS R16 R13 K26 ["Store"]
  GETTABLEKS R18 R8 K27 ["Util"]
  GETTABLEKS R17 R18 K28 ["CrossPluginCommunication"]
  GETIMPORT R18 K12 [require]
  GETTABLEKS R21 R4 K13 ["Src"]
  GETTABLEKS R20 R21 K29 ["Actions"]
  GETTABLEKS R19 R20 K30 ["SetDiagnostics"]
  CALL R18 1 1
  GETIMPORT R19 K12 [require]
  GETTABLEKS R22 R4 K13 ["Src"]
  GETTABLEKS R21 R22 K29 ["Actions"]
  GETTABLEKS R20 R21 K31 ["ResetConvertedCharacters"]
  CALL R19 1 1
  GETIMPORT R20 K12 [require]
  GETTABLEKS R23 R4 K13 ["Src"]
  GETTABLEKS R22 R23 K32 ["Components"]
  GETTABLEKS R21 R22 K33 ["MainView"]
  CALL R20 1 1
  GETIMPORT R21 K12 [require]
  GETTABLEKS R24 R4 K13 ["Src"]
  GETTABLEKS R23 R24 K32 ["Components"]
  GETTABLEKS R22 R23 K34 ["LoadingScreenPrompt"]
  CALL R21 1 1
  GETTABLEKS R23 R4 K13 ["Src"]
  GETTABLEKS R22 R23 K35 ["Contexts"]
  GETIMPORT R23 K12 [require]
  GETTABLEKS R24 R22 K36 ["ScriptConversionContext"]
  CALL R23 1 1
  GETIMPORT R24 K12 [require]
  GETTABLEKS R25 R22 K37 ["NetworkInterface"]
  CALL R24 1 1
  GETTABLEKS R26 R4 K13 ["Src"]
  GETTABLEKS R25 R26 K38 ["Thunks"]
  GETIMPORT R26 K12 [require]
  GETTABLEKS R27 R25 K39 ["OnDiagnosticsUpdated"]
  CALL R26 1 1
  GETIMPORT R27 K12 [require]
  GETTABLEKS R28 R25 K40 ["ScanAllAnimations"]
  CALL R27 1 1
  GETIMPORT R28 K12 [require]
  GETTABLEKS R29 R25 K41 ["ResetAll"]
  CALL R28 1 1
  GETIMPORT R29 K12 [require]
  GETTABLEKS R33 R4 K13 ["Src"]
  GETTABLEKS R32 R33 K27 ["Util"]
  GETTABLEKS R31 R32 K42 ["ScriptAnalysis"]
  GETTABLEKS R30 R31 K43 ["ScriptScanner"]
  CALL R29 1 1
  GETIMPORT R30 K12 [require]
  GETTABLEKS R34 R4 K13 ["Src"]
  GETTABLEKS R33 R34 K27 ["Util"]
  GETTABLEKS R32 R33 K42 ["ScriptAnalysis"]
  GETTABLEKS R31 R32 K44 ["Constants"]
  CALL R30 1 1
  GETIMPORT R31 K12 [require]
  GETTABLEKS R34 R4 K13 ["Src"]
  GETTABLEKS R33 R34 K27 ["Util"]
  GETTABLEKS R32 R33 K45 ["AnalyticsGlobals"]
  CALL R31 1 1
  GETIMPORT R32 K12 [require]
  GETTABLEKS R35 R4 K13 ["Src"]
  GETTABLEKS R34 R35 K46 ["Reducers"]
  GETTABLEKS R33 R34 K47 ["MainReducer"]
  CALL R32 1 1
  GETIMPORT R33 K12 [require]
  GETTABLEKS R36 R4 K13 ["Src"]
  GETTABLEKS R35 R36 K48 ["Resources"]
  GETTABLEKS R34 R35 K49 ["MakeTheme"]
  CALL R33 1 1
  GETIMPORT R34 K12 [require]
  GETTABLEKS R37 R4 K13 ["Src"]
  GETTABLEKS R36 R37 K48 ["Resources"]
  GETTABLEKS R35 R36 K50 ["createAnalyticsHandlers"]
  CALL R34 1 1
  GETIMPORT R35 K12 [require]
  GETTABLEKS R38 R4 K13 ["Src"]
  GETTABLEKS R37 R38 K27 ["Util"]
  GETTABLEKS R36 R37 K51 ["SaveInterface"]
  CALL R35 1 1
  GETTABLEKS R39 R4 K13 ["Src"]
  GETTABLEKS R38 R39 K48 ["Resources"]
  GETTABLEKS R37 R38 K52 ["Localization"]
  GETTABLEKS R36 R37 K53 ["SourceStrings"]
  GETTABLEKS R40 R4 K13 ["Src"]
  GETTABLEKS R39 R40 K48 ["Resources"]
  GETTABLEKS R38 R39 K52 ["Localization"]
  GETTABLEKS R37 R38 K54 ["LocalizedStrings"]
  GETTABLEKS R38 R6 K55 ["PureComponent"]
  LOADK R40 K56 ["MainPlugin"]
  NAMECALL R38 R38 K57 ["extend"]
  CALL R38 2 1
  DUPCLOSURE R39 K58 [PROTO_0]
  SETTABLEKS R39 R38 K59 ["initToolbarAndButton"]
  DUPCLOSURE R39 K60 [PROTO_2]
  CAPTURE VAL R18
  CAPTURE VAL R19
  SETTABLEKS R39 R38 K61 ["setupFinalizedEvent"]
  DUPCLOSURE R39 K62 [PROTO_18]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R31
  CAPTURE VAL R17
  CAPTURE VAL R3
  CAPTURE VAL R35
  CAPTURE VAL R30
  CAPTURE VAL R29
  CAPTURE VAL R26
  CAPTURE VAL R7
  CAPTURE VAL R32
  CAPTURE VAL R13
  CAPTURE VAL R36
  CAPTURE VAL R37
  CAPTURE VAL R34
  CAPTURE VAL R23
  CAPTURE VAL R24
  SETTABLEKS R39 R38 K63 ["init"]
  DUPCLOSURE R39 K64 [PROTO_19]
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R11
  SETTABLEKS R39 R38 K65 ["renderButtons"]
  DUPCLOSURE R39 K66 [PROTO_21]
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R33
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R20
  CAPTURE VAL R21
  SETTABLEKS R39 R38 K67 ["render"]
  JUMPIFNOT R0 [+3]
  DUPCLOSURE R39 K68 [PROTO_22]
  SETTABLEKS R39 R38 K69 ["didUpdate"]
  RETURN R38 1
