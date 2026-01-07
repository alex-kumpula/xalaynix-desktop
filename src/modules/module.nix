{ inputs, ... }:
{
  flake.modules.generic.xalaynixDesktop = 
  { lib, ... }: 
  {
    options.xalaynixDesktop = lib.mkOption {
      type = lib.types.submodule {
        options = { };
      }; 
      
      description = ''
        Options for the xalaynixDesktop module and its sub-modules.
      '';
      default = {};
    };
  };

  flake.modules.nixos.xalaynixDesktop = {
    imports = [
      inputs.self.modules.generic.xalaynixDesktop
    ];
  };

  flake.modules.homeManager.xalaynix = {
    imports = [
      inputs.self.modules.generic.xalaynixDesktop
    ];
  };
}