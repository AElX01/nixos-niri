{ config, pkgs, ... }:

{
	imports = [
		./programs-home-manager
	];

	home.username = "weissbier";
	home.homeDirectory = "/home/weissbier";

	home.file.".config/kitty".source = ./dotfiles/kitty;
	home.file.".config/niri".source = ./dotfiles/niri;
	home.file.".config/cosmic".source = ./dotfiles/cosmic;
	home.file.".config/DankMaterialShell".source = ./dotfiles/DankMaterialShell;

	home.stateVersion = "25.11";
	programs.home-manager.enable = true;

}
