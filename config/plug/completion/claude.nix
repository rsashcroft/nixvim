{ pkgs, ... }:

{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "claude";
      src = pkgs.fetchFromGitHub {
        owner = "pasky";
        repo = "claude.vim";
        rev = "dd7b332c1ecd700abb31d651e4ffbce56c90338f";
        hash = "04vvscrbdjskc3rkz1n6yqal8az34cbzlinx90iwlzzqwxwqwr7j";
      };
    })
  ];

  extraConfigVim = ''
    " Read environment variable into a Vim variable
    let g:claude_api_key = $CLAUDE_API_KEY

    " Key mappings
    let g:claude_map_implement = "<Leader>ci"
    let g:claude_map_open_chat = "<Leader>cc"
    let g:claude_map_send_chat_message = "<C-]>"
  '';
}
