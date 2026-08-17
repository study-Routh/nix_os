{
	description = "My nixos config after many pinkscreens of death";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager/";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, home-manager, ... }:
	{ 	
		nixosConfigurations.routh = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";

			modules = [
				./configuration.nix
				
				home-manager.nixosModules.home-manager
					{ 
						home-manager.users.routh = import ./home/routh.nix;
					}
			
			];
		};
	};
}
