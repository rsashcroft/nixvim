{ config, ... }:
let
  colors = import ../../colors/${config.theme}.nix { };
in
{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
        section_separators = {
          left = "";
          right = "";
        };
        disabled_filetypes = {
          statusline = [
            "dashboard"
            "alpha"
            "starter"
          ];
        };
        theme = {
          normal = {
            a = {
              bg = "#nil";
            };
            b = {
              bg = "nil";
            };
            c = {
              bg = "nil";
            };
            z = {
              bg = "nil";
            };
            y = {
              bg = "nil";
            };
          };
        };
      };
      inactive_sections = {
        lualine_x = [
          "filename"
          "filetype"
        ];
      };
      sections = {
        lualine_a = [
          "mode"
        ];
        lualine_b = [
          "branch"
        ];
        lualine_c = [
          "filename"
          "diff"
        ];
        lualine_x = [
          "diagnostics"
          {
            __unkeyed-1 = {
              __raw = ''
                function()
                    local msg = ""
                    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                    local clients = vim.lsp.get_active_clients()
                    if next(clients) == nil then
                        return msg
                    end
                    for _, client in ipairs(clients) do
                        local filetypes = client.config.filetypes
                        if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                            return client.name
                        end
                    end
                    return msg
                end
              '';
            };
            color = {
              fg = "#ffffff";
            };
            icon = "";
          }
          "encoding"
          "fileformat"
          "filetype"
        ];
        lualine_y = [
          {
            __unkeyed-1 = "aerial";
            colored = true;
            cond = {
              __raw = ''
                function()
                  local buf_size_limit = 1024 * 1024
                  if vim.api.nvim_buf_get_offset(0, vim.api.nvim_buf_line_count(0)) > buf_size_limit then
                    return false
                  end
            
                  return true
                end
              '';
            };
            dense = false;
            dense_sep = ".";
            depth = {
              __raw = "nil";
            };
            sep = " ) ";
          }
        ];
        lualine_z = [
          {
            __unkeyed-1 = "location";
          }
        ];
      };

    };
  };
}
