{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.ctags
    pkgs.fzf
    pkgs.htop
    pkgs.tmux
    pkgs.tree
    pkgs.zsh
  ];

  imports = [
    ./nvim/default.nix
    ./tmux/default.nix
  ];
}
