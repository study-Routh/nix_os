{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    package = pkgs.yazi;

    flavors = {
      spider = ../dotfiles/yazi/flavors/spider.yazi;
    };

    theme = {
      flavor = {
        dark = "spider";
        light = "spider";
      };
    };
  };

  xdg.desktopEntries.yazi = {
    name = "Yazi";
    genericName = "File Manager";
    comment = "Terminal file manager";
    exec = "foot -e yazi %f";
    terminal = false;
    type = "Application";
    categories = [ "System" "FileManager" ];
    mimeType = [ "inode/directory" ];
  };
}
