{ ... }:
{
	security.polkit.enable = true;
	security.polkit.enablePkexecWrapper = true;
	
	services.gnome.gnome-keyring.enable = true;
}
