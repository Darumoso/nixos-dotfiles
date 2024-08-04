



let
  superBinds = builtins.map (x: "SUPER " + x) [
    # Changes active window size, Qtile like
    "CTRL, L, resizeactive, 30 0"
    "CTRL, H, resizeactive, -30 0"
    "CTRL, K, resizeactive, 0 -30"
    "CTRL, J, resizeactive, 0 30"
  ];
in
  superBinds
