MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K9 [{"StartKey", "EndKey", "CharacterLimit", "AttributeChunkNameBase", "AttributeChunkCountName", "InitialIssueCountName", "UnificationScriptAttributeName", "ScriptStatus", "ReferenceKey"}]
  LOADK R1 K10 ["start"]
  SETTABLEKS R1 R0 K0 ["StartKey"]
  LOADK R1 K11 ["end"]
  SETTABLEKS R1 R0 K1 ["EndKey"]
  LOADK R1 K12 [199987]
  SETTABLEKS R1 R0 K2 ["CharacterLimit"]
  LOADK R1 K13 ["ScriptBackupChunk"]
  SETTABLEKS R1 R0 K3 ["AttributeChunkNameBase"]
  LOADK R1 K14 ["ScriptBackupCount"]
  SETTABLEKS R1 R0 K4 ["AttributeChunkCountName"]
  LOADK R1 K15 ["InitialIssueCount"]
  SETTABLEKS R1 R0 K5 ["InitialIssueCountName"]
  LOADK R1 K16 ["UnificationScript"]
  SETTABLEKS R1 R0 K6 ["UnificationScriptAttributeName"]
  DUPTABLE R1 K23 [{"AutoConverted", "Complete", "Reverted", "Warning", "Error", "None"}]
  LOADK R2 K17 ["AutoConverted"]
  SETTABLEKS R2 R1 K17 ["AutoConverted"]
  LOADK R2 K18 ["Complete"]
  SETTABLEKS R2 R1 K18 ["Complete"]
  LOADK R2 K19 ["Reverted"]
  SETTABLEKS R2 R1 K19 ["Reverted"]
  LOADK R2 K20 ["Warning"]
  SETTABLEKS R2 R1 K20 ["Warning"]
  LOADK R2 K21 ["Error"]
  SETTABLEKS R2 R1 K21 ["Error"]
  LOADK R2 K22 ["None"]
  SETTABLEKS R2 R1 K22 ["None"]
  SETTABLEKS R1 R0 K7 ["ScriptStatus"]
  LOADK R1 K24 ["Reference"]
  SETTABLEKS R1 R0 K8 ["ReferenceKey"]
  RETURN R0 1
