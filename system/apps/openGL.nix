{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [ glew gcc glfw libGL gdb mesa cmake libglvnd libGLU meson rpi-imager quartus-prime-lite unzip cifs-utils ];

  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;

}
