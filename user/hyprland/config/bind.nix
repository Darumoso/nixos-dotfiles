



let
superBinds = builtins.map (x: "SUPER, " + x) [
  "Return, exec, kitty"
  "Escape, killactive,"
  "V, togglefloating,"
  "M, exec, rofi -show drun"
  "P, pseudo, # dwindle"
  "W, togglesplit, # dwindle"
  "S, togglespecialworkspace, magic"


# Move focus with mainMod + arrow keys
  "H, movefocus, l"
  "L, movefocus, r"
  "J, movefocus, d"
  "K, movefocus, u"

# Switch workspaces with mainMod + [0-9]
  "1, workspace, 1"
  "2, workspace, 2"
  "3, workspace, 3"
  "4, workspace, 4"
  "5, workspace, 5"
  "6, workspace, 6"
  "7, workspace, 7"
  "8, workspace, 8"
  "9, workspace, 9"
  "0, workspace, 10"



# Qtile max-like layout
  "Tab, fullscreen, 1"


# Scroll through existing workspaces with mainMod + scroll
  "mouse_down, workspace, e+1"
  "mouse_up, workspace, e-1"

# Fullscreen
  "F, fullscreen,"
  ];

superShiftBinds = builtins.map (x: "SUPER SHIFT, " + x) [
  # Move active window to a workspace with mainMod + SHIFT + [0-9]
  "1, movetoworkspace, 1"
  "2, movetoworkspace, 2"
  "3, movetoworkspace, 3"
  "4, movetoworkspace, 4"
  "5, movetoworkspace, 5"
  "6, movetoworkspace, 6"
  "7, movetoworkspace, 7"
  "8, movetoworkspace, 8"
  "9, movetoworkspace, 9"
  "0, movetoworkspace, 10"

# Move active window around the workspace, Qtile like
  "H, movewindow, l"
  "J, movewindow, d"
  "K, movewindow, u"
  "L, movewindow, r"

  "Q, exit,"

  # Example special workspace (scratchpad)
  "S, movetoworkspace, special:magic"
];

noSuperBinds = [
  #For screenshots
  ",Print, exec, grim -g \"$(slurp -d)\" - | wl-copy"
];

in
  superBinds ++ superShiftBinds ++ noSuperBinds
