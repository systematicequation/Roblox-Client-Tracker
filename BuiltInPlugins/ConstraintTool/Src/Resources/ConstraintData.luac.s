MAIN:
  PREPVARARGS 0
  NEWTABLE R0 32 0
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K2 ["Attachment"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K3 ["WeldConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K4 ["HingeConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K5 ["BallSocketConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K6 ["RigidConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K7 ["PrismaticConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K8 ["CylindricalConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K9 ["UniversalConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K10 ["PlaneConstraint"]
  DUPTABLE R1 K12 [{"Attachments", "IgnoreSamePartCheck"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  LOADB R2 1
  SETTABLEKS R2 R1 K11 ["IgnoreSamePartCheck"]
  SETTABLEKS R1 R0 K13 ["RopeConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K14 ["RodConstraint"]
  DUPTABLE R1 K16 [{"Attachments", "Properties", "IgnoreSamePartCheck"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K19 [{"Stiffness", "Damping"}]
  LOADN R3 232
  SETTABLEKS R3 R2 K17 ["Stiffness"]
  LOADN R3 2
  SETTABLEKS R3 R2 K18 ["Damping"]
  SETTABLEKS R2 R1 K15 ["Properties"]
  LOADB R2 1
  SETTABLEKS R2 R1 K11 ["IgnoreSamePartCheck"]
  SETTABLEKS R1 R0 K20 ["SpringConstraint"]
  DUPTABLE R1 K21 [{"Attachments", "Properties"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K19 [{"Stiffness", "Damping"}]
  LOADN R3 232
  SETTABLEKS R3 R2 K17 ["Stiffness"]
  LOADN R3 2
  SETTABLEKS R3 R2 K18 ["Damping"]
  SETTABLEKS R2 R1 K15 ["Properties"]
  SETTABLEKS R1 R0 K22 ["TorsionSpringConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K23 ["NoCollisionConstraint"]
  DUPTABLE R1 K21 [{"Attachments", "Properties"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K25 [{"MaxTorque"}]
  LOADN R3 32
  SETTABLEKS R3 R2 K24 ["MaxTorque"]
  SETTABLEKS R2 R1 K15 ["Properties"]
  SETTABLEKS R1 R0 K26 ["AlignOrientation"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K27 ["AlignPosition"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K28 ["LineForce"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K29 ["VectorForce"]
  DUPTABLE R1 K21 [{"Attachments", "Properties"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K31 [{"Torque"}]
  LOADN R4 208
  LOADN R5 0
  LOADN R6 0
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K34 [Vector3.new]
  CALL R3 3 1
  SETTABLEKS R3 R2 K30 ["Torque"]
  SETTABLEKS R2 R1 K15 ["Properties"]
  SETTABLEKS R1 R0 K30 ["Torque"]
  DUPTABLE R1 K21 [{"Attachments", "Properties"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K36 [{"AngularVelocity", "MaxTorque"}]
  LOADN R4 0
  LOADN R5 1
  LOADN R6 0
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K34 [Vector3.new]
  CALL R3 3 1
  SETTABLEKS R3 R2 K35 ["AngularVelocity"]
  LOADN R3 32
  SETTABLEKS R3 R2 K24 ["MaxTorque"]
  SETTABLEKS R2 R1 K15 ["Properties"]
  SETTABLEKS R1 R0 K35 ["AngularVelocity"]
  DUPTABLE R1 K21 [{"Attachments", "Properties"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K39 [{"MaxForce", "VectorVelocity"}]
  LOADN R3 16
  SETTABLEKS R3 R2 K37 ["MaxForce"]
  LOADN R4 0
  LOADN R5 1
  LOADN R6 0
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K34 [Vector3.new]
  CALL R3 3 1
  SETTABLEKS R3 R2 K38 ["VectorVelocity"]
  SETTABLEKS R2 R1 K15 ["Properties"]
  SETTABLEKS R1 R0 K40 ["LinearVelocity"]
  RETURN R0 1
