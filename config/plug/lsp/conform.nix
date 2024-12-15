{ pkgs, lib, ... }:
{
  plugins.conform-nvim =
    {
      enable = true;
      settings = {
        formatters_by_ft = {
          liquidsoap = [ "liquidsoap-prettier" ];
          html = [
            [
              "prettierd"
              "prettier"
            ]
          ];
          css = [
            [
              "prettierd"
              "prettier"
            ]
          ];
          javascript = [
            [
              "prettierd"
              "prettier"
            ]
          ];
          javascriptreact = [
            [
              "prettierd"
              "prettier"
            ]
          ];
          typescript = [
            [
              "prettierd"
              "prettier"
            ]
          ];
          typescriptreact = [
            [
              "prettierd"
              "prettier"
            ]
          ];
          python = [ "black" ];
          lua = [ "stylua" ];
          nix = [ "nixfmt" ];
          markdown = [
            [
              "prettierd"
              "prettier"
            ]
          ];
          yaml = [
            "yamllint"
            "yamlfmt"
          ];
        };
        format_on_save = {
          timeout_ms = 500;
          lsp_format = "fallback";
        };
        # format_after_save = {
        #   lsp_format = "fallback";
        # };
        log_level = "warn";
        notify_on_error = false;
        notify_no_formatters = false;
        formatters = {
          shellcheck = {
            command = lib.getExe pkgs.shellcheck;
          };
          shfmt = {
            command = lib.getExe pkgs.shfmt;
          };
          shellharden = {
            command = lib.getExe pkgs.shellharden;
          };
          squeeze_blanks = {
            command = lib.getExe' pkgs.coreutils "cat";
          };
        };
      };
    };
}
