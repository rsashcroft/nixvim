{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    vim-tmux-navigator
  ];

}
