{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "mtanzi";
  home.homeDirectory = "/Users/mtanzi";

  home.packages = [
    pkgs.ctags
    pkgs.fzf
    pkgs.zsh
    pkgs.tree
  ];

  programs.neovim = {
    enable = true;
    vimAlias = true;
    extraConfig = builtins.readFile ~/.config/nvim/init.vim;
    # extraConfig = "colorscheme gruvbox";
    plugins = with pkgs.vimPlugins; [
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
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.09";
}
