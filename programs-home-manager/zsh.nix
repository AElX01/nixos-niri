{ config, pkgs, ... }:

{
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
}
