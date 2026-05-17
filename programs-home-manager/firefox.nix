{ config, pkgs, ... }:

{
	programs.firefox = {
		enable = true;
		configPath = "${config.xdg.configHome}/mozilla/firefox";
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
}
