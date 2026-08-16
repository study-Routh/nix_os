{ ... }:
{
#users
 users.users.routh = {
   isNormalUser = true;
   extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
 initialPassword = "1770";
 };
}
