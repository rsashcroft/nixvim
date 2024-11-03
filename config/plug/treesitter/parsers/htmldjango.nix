{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    nvim-treesitter-parsers.htmldjango
  ];
}
