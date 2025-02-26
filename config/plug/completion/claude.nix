{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "claude";
      src = pkgs.fetchFromGitHub {
        owner = "pasky";
        repo = "claude.vim";
        rev = "dd7b332c1ecd700abb31d651e4ffbce56c90338f";
        hash = "sha256-IwxyUwL10pop+Aod7BFM67JFXVY37z2Ly4EnlGPwfls=";
      };
    })
  ];
  vimConfig.customRC = ''
    let g:claude_api_key = $CLAUDE_API_KEY  
    let g:claude_map_implement = "<Leader>ci"
    let g:claude_map_open_chat = "<Leader>cc"
    let g:claude_map_send_chat_message = "<C-]>"
    let g:claude_map_cancel_response = "<Leader>cx"
  '';
}
