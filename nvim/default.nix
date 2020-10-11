{ pkgs, lib, ... }:

{
  home.sessionVariables.EDITOR = "nvim";

  programs.neovim = {
    enable = true;
    vimAlias = true;

    configure = {
      packages.myNeovimPackage = with pkgs.vimPlugins; {
        start = [
          # Language ##########################
          vim-nix
          vim-ruby # ruby
          vim-go # go
          vim-elixir # Elixir

          # Style #############################
          gruvbox
          oceanic-next
          vim-airline

          # Editor Features ####################################
          vim-airline-themes
          vim-easymotion
          neosnippet
          neosnippet-snippets

          vim-signify
          vim-fugitive

          fzf-vim
          fzfWrapper

          vim-surround # cs"'
          vim-repeat # cs"'...
          vim-commentary # gcap
          vim-indent-object # >aI
          vim-easy-align # vipga
          vim-eunuch # :Rename foo.rb
          vim-sneak
          supertab
          ale # linting
          nerdtree
        ];
        opt = [ ];
      };

      customRC = builtins.readFile ./vimrc;
    };
  };
}
