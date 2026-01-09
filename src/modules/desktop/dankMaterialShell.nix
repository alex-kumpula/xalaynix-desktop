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
        include optional=true "dms/alttab.kdl"
        include optional=true "dms/binds.kdl"
        include optional=true "dms/colors.kdl"
        include optional=true "dms/layout.kdl"
        include optional=true "dms/wpblur.kdl"
      '';
    };
  };
}