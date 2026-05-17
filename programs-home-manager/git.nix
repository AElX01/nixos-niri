{ config, pkgs, ... }:

{
	programs.git = {
		enable = true;
		settings.user = {
			name = "AElX01";
			email = "daniel.canul@iteso.mx";
		};	
	};
}
