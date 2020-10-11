{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # utils
    bat
    broot
    ctags
    fzf
    htop
    fd
    ytop
    ripgrep
    tmux
    tree
    zsh
  ];

  imports = [
    ./nvim/default.nix
    ./tmux/default.nix
  ];
}
