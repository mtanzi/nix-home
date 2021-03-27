{ pkgs, lib, ... }:

{
  programs.git = {
    enable = true;

    userName = "mtanzi";
    userEmail = "tanzi.marco@gmail.com";
  
   signing.signByDefault = true;
   signing.key = "5D3E5DEA471E4F58";

    aliases = {
      unstage = "reset HEAD --";
      pr = "pull --rebase";
      co = "checkout";
      c = "commit";
      p = "push";
      d = "diff";
      a = "add";
      st = "status";
      f = "fetch";
      br = "branch";
      rf = "reflog";
      l = "log --graph --pretty='%Cred%h%Creset - %C(bold blue)<%an>%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)' --abbrev-commit --date=relative";
      pp = "!git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)";
      recent-branches = "branch --sort=-committerdate";
    };
  
    extraConfig = {
      core.editor = "vim";
      merge.conflictstyle = "diff3";
    };
  };
}

