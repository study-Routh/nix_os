{ ... }:
{
services.libinput = {
	enable = true;
	
	touchpad = {
		tapping = true;
		naturalScrolling = true;
	};
};
}
