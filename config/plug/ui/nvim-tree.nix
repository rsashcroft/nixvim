{ config, libs, pkgs, ... }:
{
  plugins.nvim-tree = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action = "<CMD> NvimTreeToggle <CR>";
    }
  ];
}
