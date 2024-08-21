{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    nvim-colorizer-lua
  ];

}
