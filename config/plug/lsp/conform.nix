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
        # format_on_save = # Lua
        #   ''
        #     function(bufnr)
        #       if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        #         return
        #       end
        #
        #       if slow_format_filetypes[vim.bo[bufnr].filetype] then
        #         return
        #       end
        #
        #       local function on_format(err)
        #         if err and err:match("timeout$") then
        #           slow_format_filetypes[vim.bo[bufnr].filetype] = true
        #         end
        #       end
        #
        #       return { timeout_ms = 200, lsp_fallback = true }, on_format
        #      end
        #   '';
        # format_after_save = # Lua
        #   ''
        #     function(bufnr)
        #       if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        #         return
        #       end
        #
        #       if not slow_format_filetypes[vim.bo[bufnr].filetype] then
        #         return
        #       end
        #
        #       return { lsp_fallback = true }
        #     end
        #   '';
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

      # formatOnSave = {
      #   lspFallback = true;
      #   timeoutMs = 500;
      # };
      # notifyOnError = true;
      # formattersByFt = {
      #   liquidsoap = [ "liquidsoap-prettier" ];
      #   html = [
      #     [
      #       "prettierd"
      #       "prettier"
      #     ]
      #   ];
      #   css = [
      #     [
      #       "prettierd"
      #       "prettier"
      #     ]
      #   ];
      #   javascript = [
      #     [
      #       "prettierd"
      #       "prettier"
      #     ]
      #   ];
      #   javascriptreact = [
      #     [
      #       "prettierd"
      #       "prettier"
      #     ]
      #   ];
      #   typescript = [
      #     [
      #       "prettierd"
      #       "prettier"
      #     ]
      #   ];
      #   typescriptreact = [
      #     [
      #       "prettierd"
      #       "prettier"
      #     ]
      #   ];
      #   python = [ "black" ];
      #   lua = [ "stylua" ];
      #   nix = [ "nixfmt" ];
      #   markdown = [
      #     [
      #       "prettierd"
      #       "prettier"
      #     ]
      #   ];
      #   yaml = [
      #     "yamllint"
      #     "yamlfmt"
      #   ];
      # };
    };
}
