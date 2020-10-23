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
