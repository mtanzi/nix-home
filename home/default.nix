{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # utils
    bat
    broot
    ctags
    gitAndTools.diff-so-fancy
    fzf
    htop
    fd
    ripgrep
    tmux
    tree
    zsh

    # MacOS utils
    coreutils
  ];

  imports = [
    ./nvim/default.nix
    ./tmux/default.nix
    ./git/default.nix
  ];
}
