MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"FAKE_CONNECTED_GAMEPAD_ID", "THUMBSTICK_SIZE", "THUMBSTICK_SOCKET_SIZE"}]
  LOADN R1 101
  SETTABLEKS R1 R0 K0 ["FAKE_CONNECTED_GAMEPAD_ID"]
  LOADN R1 36
  SETTABLEKS R1 R0 K1 ["THUMBSTICK_SIZE"]
  LOADN R1 72
  SETTABLEKS R1 R0 K2 ["THUMBSTICK_SOCKET_SIZE"]
  RETURN R0 1
