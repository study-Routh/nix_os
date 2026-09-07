{ ... }:
{
nixpkgs.config.allowUnfree = true;
hardware.graphics = {
enable = true;
enable32Bit = true;
};

services.xserver.videoDrivers = 
	[
		"amdgpu"
		"nvidia"
	];

hardware.nvidia = {
		open = true;
		modesetting.enable = true;

		prime = {
			offload = {
			enable = true;
			};
			
			amdgpuBusId = "PCI:6:0:0";
			nvidiaBusId = "PCI:1:0:0";
		};
	};
}
