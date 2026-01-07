{ ... }:
{
  flake.modules.nixos.xalaynixDesktop = 
  { ... }: 
  {
    programs.niri.enable = true;
  };
}