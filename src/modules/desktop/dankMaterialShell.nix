{ inputs, ... }:
{
  flake.modules.homeManager.xalaynixDesktop = 
  { ... }: 
  {
    imports = [
      inputs.dms.homeModules.dankMaterialShell.default
      # inputs.dms.homeModules.dankMaterialShell.niri
    ];

    # programs.niri.enable = true;

    programs.dankMaterialShell = {
      enable = true;
      # niri = {
      #   enableKeybinds = true;   # Sets static preset keybinds
      #   enableSpawn = true;      # Auto-start DMS with niri and cliphist, if enabled
      # };
    };
  };
}