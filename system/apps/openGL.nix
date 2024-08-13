{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [ glew gcc glfw libGL gdb mesa cmake libglvnd libGLU meson rpi-imager ];

  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;

}
