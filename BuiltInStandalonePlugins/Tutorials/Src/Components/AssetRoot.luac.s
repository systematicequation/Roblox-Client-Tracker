PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TutorialService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["GetSessionId"]
  CALL R2 1 1
  GETUPVAL R3 0
  NAMECALL R3 R3 K1 ["GetClientId"]
  CALL R3 1 1
  GETUPVAL R4 1
  NAMECALL R4 R4 K2 ["GetMainViewSessionId"]
  CALL R4 1 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["tutorial"]
  NAMECALL R5 R5 K4 ["getCurrentStep"]
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["telemetry"]
  MOVE R8 R0
  LOADNIL R9
  GETUPVAL R10 3
  DUPTABLE R11 K12 [{"tutorialId", "currentStep", "stepId", "studioSid", "clientId", "mainViewSessionId"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K3 ["tutorial"]
  GETTABLEKS R13 R14 K13 ["data"]
  GETTABLEKS R12 R13 K14 ["id"]
  SETTABLEKS R12 R11 K6 ["tutorialId"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K3 ["tutorial"]
  GETTABLEKS R12 R13 K7 ["currentStep"]
  SETTABLEKS R12 R11 K7 ["currentStep"]
  GETTABLEKS R13 R5 K13 ["data"]
  GETTABLEKS R12 R13 K14 ["id"]
  SETTABLEKS R12 R11 K8 ["stepId"]
  SETTABLEKS R2 R11 K9 ["studioSid"]
  SETTABLEKS R3 R11 K10 ["clientId"]
  SETTABLEKS R4 R11 K11 ["mainViewSessionId"]
  MOVE R12 R1
  CALL R10 2 -1
  NAMECALL R6 R6 K15 ["logRobloxTelemetryEvent"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["tutorial"]
  NAMECALL R0 R0 K1 ["back"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["tutorial"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["state"]
  GETTABLEKS R4 R5 K2 ["tutorialData"]
  GETTABLEKS R3 R4 K3 ["showNext"]
  NOT R2 R3
  NAMECALL R0 R0 K4 ["increment"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["PromptClosePlace"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["tutorial"]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["selectTopic"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R2 K6 [{"tutorialData", "tutorialDialogEnabled", "completed", "completedDialogEnabled", "pressedKeys", "widget"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["tutorialData"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["tutorialDialogEnabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["completed"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["completedDialogEnabled"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K4 ["pressedKeys"]
  LOADNIL R3
  SETTABLEKS R3 R2 K5 ["widget"]
  SETTABLEKS R2 R0 K7 ["state"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Store"]
  GETTABLEKS R2 R3 K9 ["new"]
  GETUPVAL R3 1
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K11 ["store"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K12 ["telemetry"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K13 ["Localization"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPTABLE R3 K18 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K14 ["stringResourceTable"]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K15 ["translationResourceTable"]
  LOADK R4 K19 ["Tutorials"]
  SETTABLEKS R4 R3 K16 ["pluginName"]
  NEWTABLE R4 1 0
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K20 ["Resources"]
  GETTABLEKS R5 R6 K21 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R6 K22 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K20 ["Resources"]
  GETTABLEKS R7 R8 K23 ["SourceStrings"]
  SETTABLEKS R7 R6 K14 ["stringResourceTable"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K20 ["Resources"]
  GETTABLEKS R7 R8 K24 ["LocalizedStrings"]
  SETTABLEKS R7 R6 K15 ["translationResourceTable"]
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K17 ["libraries"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K25 ["localization"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K26 ["Analytics"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPCLOSURE R3 K27 [PROTO_1]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K28 ["analytics"]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  SETTABLEKS R2 R0 K29 ["log"]
  GETUPVAL R3 10
  GETTABLEKS R2 R3 K9 ["new"]
  LOADK R3 K30 ["Toolbox"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K31 ["toolboxConnection"]
  GETUPVAL R2 8
  NAMECALL R2 R2 K32 ["GetTutorialIDToLaunch"]
  CALL R2 1 1
  GETUPVAL R5 11
  GETTABLEKS R4 R5 K33 ["Src"]
  GETTABLEKS R3 R4 K19 ["Tutorials"]
  MOVE R5 R2
  NAMECALL R3 R3 K34 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+27]
  LOADK R6 K35 ["ModuleScript"]
  NAMECALL R4 R3 K36 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+22]
  GETIMPORT R4 K38 [require]
  MOVE R5 R3
  CALL R4 1 1
  GETUPVAL R6 12
  GETTABLEKS R5 R6 K9 ["new"]
  GETIMPORT R6 K40 [game]
  MOVE R7 R4
  GETTABLEKS R8 R0 K25 ["localization"]
  GETTABLEKS R9 R0 K31 ["toolboxConnection"]
  CALL R5 4 1
  SETTABLEKS R5 R0 K41 ["tutorial"]
  GETTABLEKS R7 R0 K41 ["tutorial"]
  NAMECALL R5 R0 K42 ["loadTutorial"]
  CALL R5 2 0
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K43 ["onBack"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K44 ["onNext"]
  DUPCLOSURE R4 K45 [PROTO_5]
  CAPTURE UPVAL U8
  SETTABLEKS R4 R0 K46 ["onQuit"]
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K47 ["onSelectTopic"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  LOADK R2 K0 ["SendPlayStep"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["state"]
  GETTABLEKS R3 R4 K2 ["tutorialData"]
  NAMECALL R0 R0 K3 ["Invoke"]
  CALL R0 3 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["tutorial"]
  GETTABLEKS R2 R3 K1 ["data"]
  GETTABLEKS R1 R2 K2 ["id"]
  JUMPIFEQKS R1 K3 ["StudioTour"] [+21]
  GETTABLEKS R2 R0 K4 ["state"]
  GETTABLEKS R1 R2 K5 ["widget"]
  JUMPIF R1 [+15]
  NAMECALL R1 R0 K6 ["createWidget"]
  CALL R1 1 1
  DUPTABLE R4 K7 [{"widget"}]
  SETTABLEKS R1 R4 K5 ["widget"]
  NAMECALL R2 R0 K8 ["setState"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K0 ["tutorial"]
  MOVE R4 R1
  NAMECALL R2 R2 K9 ["setWidget"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K10 ["props"]
  GETTABLEKS R1 R2 K11 ["Plugin"]
  LOADK R4 K12 ["GetPlayStep"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R2 R1 K13 ["OnInvoke"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K14 ["connection"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  LOADK R3 K2 ["TourWidget"]
  DUPTABLE R4 K9 [{"Callout", "MinSize", "Modal", "InitialEnabled", "Size", "Title"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["Callout"]
  GETIMPORT R5 K12 [Vector2.new]
  LOADN R6 19
  LOADN R7 94
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["MinSize"]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["Modal"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["InitialEnabled"]
  GETIMPORT R5 K12 [Vector2.new]
  LOADN R6 19
  LOADN R7 94
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Size"]
  LOADK R5 K2 ["TourWidget"]
  SETTABLEKS R5 R4 K8 ["Title"]
  NAMECALL R1 R1 K13 ["CreateQWidgetPluginGui"]
  CALL R1 3 1
  LOADK R2 K2 ["TourWidget"]
  SETTABLEKS R2 R1 K14 ["Name"]
  RETURN R1 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["connection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["connection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"completed", "completedDialogEnabled"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["completed"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["completedDialogEnabled"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R1 K0 ["Name"]
  DUPTABLE R3 K4 [{"key", "index", "pressed"}]
  GETTABLEKS R4 R1 K0 ["Name"]
  SETTABLEKS R4 R3 K1 ["key"]
  SETTABLEKS R0 R3 K2 ["index"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["pressed"]
  RETURN R2 2

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["None"]
  GETTABLEKS R3 R0 K1 ["step"]
  GETTABLEKS R2 R3 K2 ["kind"]
  JUMPIFNOTEQKS R2 K3 ["Focus"] [+17]
  NEWTABLE R2 0 1
  DUPTABLE R3 K7 [{"key", "index", "pressed"}]
  LOADK R4 K8 ["F"]
  SETTABLEKS R4 R3 K4 ["key"]
  LOADN R4 1
  SETTABLEKS R4 R3 K5 ["index"]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["pressed"]
  SETLIST R2 R3 1 [1]
  MOVE R1 R2
  JUMP [+13]
  GETTABLEKS R3 R0 K1 ["step"]
  GETTABLEKS R2 R3 K9 ["keys"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R2 1
  GETTABLEKS R4 R0 K1 ["step"]
  GETTABLEKS R3 R4 K9 ["keys"]
  DUPCLOSURE R4 K10 [PROTO_13]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R2 2
  DUPTABLE R4 K13 [{"tutorialData", "pressedKeys"}]
  SETTABLEKS R0 R4 K11 ["tutorialData"]
  SETTABLEKS R1 R4 K12 ["pressedKeys"]
  NAMECALL R2 R2 K14 ["setState"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K1 ["step"]
  GETTABLEKS R2 R3 K2 ["kind"]
  JUMPIFNOTEQKS R2 K15 ["Skipped"] [+7]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K16 ["log"]
  GETUPVAL R3 3
  CALL R2 1 0
  JUMP [+17]
  GETTABLEKS R3 R0 K1 ["step"]
  GETTABLEKS R2 R3 K2 ["kind"]
  JUMPIFNOTEQKS R2 K17 ["Completed"] [+7]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K16 ["log"]
  GETUPVAL R3 4
  CALL R2 1 0
  JUMP [+5]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K16 ["log"]
  GETUPVAL R3 5
  CALL R2 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K18 ["props"]
  GETTABLEKS R2 R3 K19 ["Plugin"]
  LOADK R5 K20 ["SendPlayStep"]
  MOVE R6 R0
  NAMECALL R3 R2 K21 ["Invoke"]
  CALL R3 3 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["pressedKeys"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  DUPTABLE R2 K1 [{"pressedKeys"}]
  GETUPVAL R3 0
  MOVE R4 R1
  NEWTABLE R5 1 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["Name"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["Name"]
  GETTABLE R8 R1 R9
  JUMPIFNOT R8 [+11]
  GETUPVAL R7 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["Name"]
  GETTABLE R8 R1 R9
  DUPTABLE R9 K4 [{"pressed"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K3 ["pressed"]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLE R7 R5 R6
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["pressedKeys"]
  RETURN R2 1

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["log"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"action", "actionKeyCode"}]
  LOADK R4 K4 ["KeyPress"]
  SETTABLEKS R4 R3 K1 ["action"]
  GETTABLEKS R4 R0 K5 ["Name"]
  SETTABLEKS R4 R3 K2 ["actionKeyCode"]
  CALL R1 2 0
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CurrentDataModelType"]
  GETIMPORT R1 K4 [Enum.StudioDataModelType.PlayClient]
  JUMPIFNOTEQ R0 R1 [+19]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K5 ["startPlaying"]
  JUMPIFNOT R0 [+14]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K5 ["startPlaying"]
  CALL R0 0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K6 ["log"]
  GETUPVAL R1 3
  DUPTABLE R2 K8 [{"action"}]
  LOADK R3 K9 ["StartPlaytest"]
  SETTABLEKS R3 R2 K7 ["action"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CurrentDataModelType"]
  GETIMPORT R1 K11 [Enum.StudioDataModelType.Edit]
  JUMPIFNOTEQ R0 R1 [+18]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K12 ["stopPlaying"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K12 ["stopPlaying"]
  CALL R0 0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K6 ["log"]
  GETUPVAL R1 3
  DUPTABLE R2 K8 [{"action"}]
  LOADK R3 K13 ["StopPlaytest"]
  SETTABLEKS R3 R2 K7 ["action"]
  CALL R0 2 0
  RETURN R0 0

PROTO_18:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K2 ["callouts"]
  CALL R0 1 3
  FORGPREP_NEXT R0
  NAMECALL R5 R3 K3 ["Destroy"]
  CALL R5 1 0
  FORGLOOP R0 1 [-4]
  RETURN R0 0

PROTO_19:
  JUMPIFEQKS R0 K0 ["Color"] [+3]
  JUMPIFNOTEQKS R0 K1 ["Material"] [+12]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["log"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"action", "actionKeyCode"}]
  LOADK R4 K6 ["ChangeProperty"]
  SETTABLEKS R4 R3 K3 ["action"]
  SETTABLEKS R0 R3 K4 ["actionKeyCode"]
  CALL R1 2 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["log"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"action", "actionKeyCode"}]
  LOADK R4 K4 ["InsertObject"]
  SETTABLEKS R4 R3 K1 ["action"]
  GETTABLEKS R4 R0 K5 ["ClassName"]
  SETTABLEKS R4 R3 K2 ["actionKeyCode"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K6 ["Changed"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K7 ["Connect"]
  CALL R1 2 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R2 R0 K0 ["props"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  SETTABLEKS R3 R1 K1 ["onCompleted"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R3 R1 K2 ["onStepChanged"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R3 R1 K3 ["onKeyPressed"]
  GETTABLEKS R4 R2 K4 ["Plugin"]
  GETTABLEKS R3 R4 K5 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R4 R3 K6 ["FocusedDataModelSession"]
  GETTABLEKS R5 R4 K7 ["CurrentDataModelTypeChanged"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K9 ["connection"]
  GETTABLEKS R6 R2 K4 ["Plugin"]
  GETTABLEKS R5 R6 K10 ["Unloading"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R1
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 0
  NAMECALL R5 R1 K11 ["start"]
  CALL R5 1 0
  GETTABLEKS R6 R0 K12 ["tutorial"]
  GETTABLEKS R5 R6 K13 ["dataModel"]
  LOADK R8 K14 ["Workspace"]
  NAMECALL R6 R5 K15 ["GetService"]
  CALL R6 2 1
  GETTABLEKS R7 R6 K16 ["ChildAdded"]
  NEWCLOSURE R9 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  NAMECALL R7 R7 K8 ["Connect"]
  CALL R7 2 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["tutorial"]
  NAMECALL R0 R0 K1 ["increment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["tutorial"]
  LOADB R2 1
  NAMECALL R0 R0 K1 ["increment"]
  CALL R0 2 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"completedDialogEnabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["completedDialogEnabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"completedDialogEnabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["completedDialogEnabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"completedDialogEnabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["completedDialogEnabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K3 ["PromptClosePlace"]
  CALL R0 1 0
  RETURN R0 0

PROTO_27:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["completed"]
  GETTABLEKS R5 R2 K4 ["completedDialogEnabled"]
  GETTABLEKS R6 R0 K5 ["localization"]
  GETTABLEKS R10 R0 K6 ["tutorial"]
  GETTABLEKS R9 R10 K7 ["data"]
  GETTABLEKS R8 R9 K8 ["id"]
  LOADK R9 K9 ["Title"]
  NAMECALL R6 R6 K10 ["getText"]
  CALL R6 3 1
  GETTABLEKS R10 R0 K6 ["tutorial"]
  GETTABLEKS R9 R10 K7 ["data"]
  GETTABLEKS R8 R9 K8 ["id"]
  JUMPIFEQKS R8 K11 ["StudioTour"] [+41]
  GETTABLEKS R8 R2 K12 ["widget"]
  JUMPIFNOT R8 [+35]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K21 [{"OnBack", "OnNext", "OnQuit", "OnSelectTopic", "PressedKeys", "StepData", "Widget"}]
  GETTABLEKS R10 R0 K22 ["onBack"]
  SETTABLEKS R10 R9 K14 ["OnBack"]
  GETTABLEKS R10 R0 K23 ["onNext"]
  SETTABLEKS R10 R9 K15 ["OnNext"]
  GETTABLEKS R10 R0 K24 ["onQuit"]
  SETTABLEKS R10 R9 K16 ["OnQuit"]
  GETTABLEKS R10 R0 K25 ["onSelectTopic"]
  SETTABLEKS R10 R9 K17 ["OnSelectTopic"]
  GETTABLEKS R10 R2 K26 ["pressedKeys"]
  SETTABLEKS R10 R9 K18 ["PressedKeys"]
  GETTABLEKS R10 R2 K27 ["tutorialData"]
  SETTABLEKS R10 R9 K19 ["StepData"]
  GETTABLEKS R10 R2 K12 ["widget"]
  SETTABLEKS R10 R9 K20 ["Widget"]
  CALL R7 2 1
  JUMP [+26]
  LOADNIL R7
  JUMP [+24]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K30 [{"PressedKeys", "TutorialData", "Title", "OnNext", "OnSkip"}]
  GETTABLEKS R10 R2 K26 ["pressedKeys"]
  SETTABLEKS R10 R9 K18 ["PressedKeys"]
  GETTABLEKS R10 R2 K27 ["tutorialData"]
  SETTABLEKS R10 R9 K28 ["TutorialData"]
  SETTABLEKS R6 R9 K9 ["Title"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K15 ["OnNext"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K29 ["OnSkip"]
  CALL R7 2 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K31 ["provide"]
  NEWTABLE R9 0 6
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K2 ["Plugin"]
  GETTABLEKS R10 R11 K32 ["new"]
  MOVE R11 R3
  CALL R10 1 1
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K32 ["new"]
  GETTABLEKS R12 R0 K33 ["store"]
  CALL R11 1 1
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K32 ["new"]
  NAMECALL R13 R3 K34 ["getMouse"]
  CALL R13 1 -1
  CALL R12 -1 1
  GETUPVAL R13 6
  CALL R13 0 1
  GETTABLEKS R14 R0 K5 ["localization"]
  GETTABLEKS R15 R0 K35 ["analytics"]
  SETLIST R9 R10 6 [1]
  DUPTABLE R10 K37 [{"View"}]
  JUMPIFNOT R5 [+52]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 7
  DUPTABLE R13 K42 [{"Title", "Enabled", "Modal", "Size", "OnClose"}]
  GETTABLEKS R14 R0 K5 ["localization"]
  LOADK R16 K43 ["Completed"]
  LOADK R17 K9 ["Title"]
  NAMECALL R14 R14 K10 ["getText"]
  CALL R14 3 1
  MOVE R16 R6
  NAMECALL R14 R14 K44 ["format"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K9 ["Title"]
  SETTABLEKS R5 R13 K38 ["Enabled"]
  LOADB R14 1
  SETTABLEKS R14 R13 K39 ["Modal"]
  GETUPVAL R14 8
  SETTABLEKS R14 R13 K40 ["Size"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K41 ["OnClose"]
  DUPTABLE R14 K46 [{"Content"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 9
  DUPTABLE R17 K49 [{"Name", "OnClose", "OnReturn"}]
  SETTABLEKS R6 R17 K47 ["Name"]
  NEWCLOSURE R18 P3
  CAPTURE VAL R0
  SETTABLEKS R18 R17 K41 ["OnClose"]
  NEWCLOSURE R18 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  SETTABLEKS R18 R17 K48 ["OnReturn"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["Content"]
  CALL R11 3 1
  JUMP [+4]
  JUMPIF R4 [+2]
  MOVE R11 R7
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K36 ["View"]
  CALL R8 2 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K9 [pcall]
  DUPCLOSURE R4 K10 [PROTO_0]
  CALL R3 1 2
  JUMPIFNOT R3 [+2]
  MOVE R5 R4
  JUMP [+1]
  LOADNIL R5
  GETIMPORT R6 K12 [game]
  LOADK R8 K13 ["RbxAnalyticsService"]
  NAMECALL R6 R6 K14 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K5 ["Packages"]
  GETTABLEKS R8 R9 K15 ["Dash"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K16 ["join"]
  GETTABLEKS R9 R7 K17 ["collect"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K5 ["Packages"]
  GETTABLEKS R11 R12 K18 ["Framework"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K19 ["UI"]
  GETTABLEKS R12 R11 K20 ["Dialog"]
  GETTABLEKS R14 R10 K21 ["Util"]
  GETTABLEKS R13 R14 K22 ["CrossPluginCommunication"]
  GETTABLEKS R14 R10 K23 ["ContextServices"]
  GETTABLEKS R15 R14 K24 ["Mouse"]
  GETTABLEKS R16 R14 K25 ["Store"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R21 R0 K26 ["Src"]
  GETTABLEKS R20 R21 K21 ["Util"]
  GETTABLEKS R19 R20 K27 ["Telemetry"]
  GETTABLEKS R18 R19 K28 ["TelemetryProtocol"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R22 R0 K26 ["Src"]
  GETTABLEKS R21 R22 K21 ["Util"]
  GETTABLEKS R20 R21 K27 ["Telemetry"]
  GETTABLEKS R19 R20 K29 ["SkipStep"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R23 R0 K26 ["Src"]
  GETTABLEKS R22 R23 K21 ["Util"]
  GETTABLEKS R21 R22 K27 ["Telemetry"]
  GETTABLEKS R20 R21 K30 ["StartStep"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R24 R0 K26 ["Src"]
  GETTABLEKS R23 R24 K21 ["Util"]
  GETTABLEKS R22 R23 K27 ["Telemetry"]
  GETTABLEKS R21 R22 K31 ["CompleteStep"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R25 R0 K26 ["Src"]
  GETTABLEKS R24 R25 K21 ["Util"]
  GETTABLEKS R23 R24 K27 ["Telemetry"]
  GETTABLEKS R22 R23 K32 ["IntermediateStep"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R26 R0 K26 ["Src"]
  GETTABLEKS R25 R26 K21 ["Util"]
  GETTABLEKS R24 R25 K27 ["Telemetry"]
  GETTABLEKS R23 R24 K33 ["ExtraAction"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R27 R0 K26 ["Src"]
  GETTABLEKS R26 R27 K21 ["Util"]
  GETTABLEKS R25 R26 K27 ["Telemetry"]
  GETTABLEKS R24 R25 K34 ["TelemetryProtocolTypes"]
  CALL R23 1 1
  GETIMPORT R24 K37 [Vector2.new]
  LOADN R25 204
  LOADN R26 44
  CALL R24 2 1
  GETTABLEKS R28 R0 K26 ["Src"]
  GETTABLEKS R27 R28 K38 ["Resources"]
  GETTABLEKS R26 R27 K39 ["Localization"]
  GETTABLEKS R25 R26 K40 ["SourceStrings"]
  GETTABLEKS R29 R0 K26 ["Src"]
  GETTABLEKS R28 R29 K38 ["Resources"]
  GETTABLEKS R27 R28 K39 ["Localization"]
  GETTABLEKS R26 R27 K41 ["LocalizedStrings"]
  GETIMPORT R27 K4 [require]
  GETTABLEKS R30 R0 K26 ["Src"]
  GETTABLEKS R29 R30 K42 ["Reducers"]
  GETTABLEKS R28 R29 K43 ["MainReducer"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R31 R0 K26 ["Src"]
  GETTABLEKS R30 R31 K38 ["Resources"]
  GETTABLEKS R29 R30 K44 ["MakeTheme"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R32 R0 K26 ["Src"]
  GETTABLEKS R31 R32 K21 ["Util"]
  GETTABLEKS R30 R31 K45 ["Tutorial"]
  CALL R29 1 1
  GETTABLEKS R31 R0 K26 ["Src"]
  GETTABLEKS R30 R31 K46 ["Components"]
  GETIMPORT R31 K4 [require]
  GETTABLEKS R32 R30 K47 ["CompletedTutorialDialog"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R33 R30 K48 ["HintBar"]
  CALL R32 1 1
  GETIMPORT R33 K4 [require]
  GETTABLEKS R34 R30 K49 ["TourWidget"]
  CALL R33 1 1
  GETTABLEKS R34 R1 K50 ["PureComponent"]
  LOADK R36 K51 ["AssetRoot"]
  NAMECALL R34 R34 K52 ["extend"]
  CALL R34 2 1
  DUPCLOSURE R35 K53 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R27
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R0
  CAPTURE VAL R29
  SETTABLEKS R35 R34 K54 ["init"]
  DUPCLOSURE R35 K55 [PROTO_9]
  SETTABLEKS R35 R34 K56 ["didMount"]
  DUPCLOSURE R35 K57 [PROTO_10]
  SETTABLEKS R35 R34 K58 ["createWidget"]
  DUPCLOSURE R35 K59 [PROTO_11]
  SETTABLEKS R35 R34 K60 ["willUnmount"]
  DUPCLOSURE R35 K61 [PROTO_21]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R35 R34 K62 ["loadTutorial"]
  DUPCLOSURE R35 K63 [PROTO_27]
  CAPTURE VAL R1
  CAPTURE VAL R33
  CAPTURE VAL R32
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R28
  CAPTURE VAL R12
  CAPTURE VAL R24
  CAPTURE VAL R31
  CAPTURE VAL R5
  SETTABLEKS R35 R34 K64 ["render"]
  RETURN R34 1
