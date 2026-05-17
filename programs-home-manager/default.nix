{ config, pkgs, ... }:

{
  imports = [
    ./firefox.nix
    ./fastfetch.nix
    ./zsh.nix
    ./starship.nix
    ./vscode.nix
    ./git.nix
  ];
}
