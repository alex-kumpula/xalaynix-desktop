{ inputs, ... }:
{
  flake.modules.homeManager.xalaynixDesktop = 
  { lib, ... }: 
  {
    imports = [
      inputs.dms.homeModules.dankMaterialShell.default
    ];

    programs.dankMaterialShell = {
      enable = true;
    };

    home.file.".config/niri/config.kdl" = {
      text = lib.mkAfter ''
        include "dms/alttab.kdl"
        include "dms/colors.kdl"
        include "dms/layout.kdl"
        include "dms/wpblur.kdl"
      '';
    };
  };
}