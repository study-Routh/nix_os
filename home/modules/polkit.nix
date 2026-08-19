{ ... }:
{
	wayland.systemd.target = "hyprland-session.target";
	services.hyprpolkitagent.enable = true;
}
