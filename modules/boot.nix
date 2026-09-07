{ ... }:

{ 
	boot.loader.systemd-boot.enable = false;
	boot.loader.grub = {
		enable = true;
		efiSupport = true;
		device = "nodev";
		useOSProber = true;
};
	boot.loader.efi.canTouchEfiVariables = true;
	boot.loader.systemd-boot.configurationLimit = 5;
	boot.loader.timeout = 30;
}
