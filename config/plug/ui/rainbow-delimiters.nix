{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    rainbow-delimiters-nvim
  ];

}
