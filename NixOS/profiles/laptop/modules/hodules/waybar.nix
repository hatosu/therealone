{ config, pkgs, ... }: {

  #setup waybar
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    settings = {
      mainBar = {
        output = [
          "eDP-2"
        ];
        layer = "top";
        position = "bottom";
        margin = "5px";
        height = 32;
        modules-left = [ "user" "battery" ];
        modules-center = [ "privacy" "wlr/taskbar" "tray" ];
        modules-right = [ "cpu" "temperature" "memory" "disk" "language" "clock" ];
      };
    };
    style = ''
      * {
        border: none;
        border-radius: 5px;
        font-family: "JetBrainsMono Nerd Font";
        font-weight: bold;
        font-size: 11px;
        min-height: 11px;
      }
      window#waybar {
        background: transparent;
      }
      tooltip {
        background: #865A7B;
        color: #865A7B;
        border-radius: 7px;
        border-width: 3px;
      }
      #privacy,
      #window,
      #taskbar,
      #tray,
      #clock,
      #user,
      #temperature,
      #pulseaudio,
      #memory,
      #disk,
      #cpu,
      #battery,
      #language,
      #workspaces button {
          box-shadow: none;
	        text-shadow: none;
          padding: 0px;
          border-radius: 9px;
          margin-top: 3px;
          margin-bottom: 3px;
          margin-left: 0px;
          padding-left: 3px;
          padding-right: 3px;
          margin-right: 0px;
          color: #cdd6f4;
          animation: ws_normal 20s ease-in-out 1;
      }
      #workspaces button.active {
          background: #a6adc8;
          color: #313244;
          margin-left: 3px;
          padding-left: 12px;
          padding-right: 12px;
          margin-right: 3px;
          animation: ws_active 20s ease-in-out 1;
          transition: all 0.4s cubic-bezier(.55,-0.68,.48,1.682);
      }
      #workspaces button:hover {
          background: #f5c2e7;
          color: #313244;
          animation: ws_hover 20s ease-in-out 1;
          transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
      }
      #taskbar button {
          box-shadow: none;
	        text-shadow: none;
          padding: 0px;
          border-radius: 9px;
          margin-top: 3px;
          margin-bottom: 3px;
          margin-left: 0px;
          padding-left: 3px;
          padding-right: 3px;
          margin-right: 0px;
          color: @wb-color;
          animation: tb_normal 20s ease-in-out 1;
      }
      #taskbar button.active {
          background: #a6adc8;
          color: @wb-act-color;
          margin-left: 3px;
          padding-left: 12px;
          padding-right: 12px;
          margin-right: 3px;
          animation: tb_active 20s ease-in-out 1;
          transition: all 0.4s cubic-bezier(.55,-0.68,.48,1.682);
      }
      #taskbar button:hover {
          background: #f5c2e7;
          color: @wb-hvr-color;
          animation: tb_hover 20s ease-in-out 1;
          transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
      }
      #tray menu * {
          min-height: 16px
      }
      #tray menu separator {
          min-height: 10px
      }
    '';
  };

}
