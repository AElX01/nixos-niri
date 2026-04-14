{ config, pkgs, ... }:

{
	home.username = "weissbier";
	home.homeDirectory = "/home/weissbier";
	
	programs.firefox = {
		enable = true;
		policies = {
			ExtensionSettings = let 
				moz = short: "https://addons.mozilla.org/firefox/downloads/latest/${short}/latest.xpi";
			in {
				"*".installation_mode = "allowed";
				
				"uBlock0@raymondhill.net" = {
					install_url = moz "ublock-origin";
					installation_mode = "force_installed";
					updates_disabled = true;
				};
				
				"{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
					install_url = moz "bitwarden-password-manager";
					installation_mode = "force_installed";
					updates_disabled = true;
				};

				"{9b84b6b4-07c4-4b4b-ba21-394d86f6e9ee}" = {
					install_url = moz "black21";
					installation_mode = "force_installed";
					updates_disabled = true;
				};

				"definer@lumetrium.com" = {
					install_url = moz "lumetrium-definer";
					installation_mode = "force_installed";
					updates_disabled = true;
				};
			};
		};
	};

	programs.fastfetch = {
		enable = true;
	};

	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;

		history.size = 1000;
		history.path = "$HOME/.zsh_history";
		history.ignoreAllDups = true;

		oh-my-zsh = {
			enable = true;
			plugins = [
				"git"
			];
		};

	};

	programs.starship = {
		enable = true;
	};

	programs.vscode = {
		enable = true;	
	};

	programs.git = {
		enable = true;
		settings.user = {
			name = "AElX01";
			email = "daniel.canul@iteso.mx";
		};	
	};

	home.file.".config/kitty".source = ./dotfiles/kitty;
	home.file.".config/niri".source = ./dotfiles/niri;
	home.file.".config/cosmic".source = ./dotfiles/cosmic;
	home.file.".config/DankMaterialShell".source = ./dotfiles/DankMaterialShell;

	home.stateVersion = "25.11";
	programs.home-manager.enable = true;

}
