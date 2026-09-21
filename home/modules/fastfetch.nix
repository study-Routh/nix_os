{ ... }:

{
  xdg.configFile."fastfetch/config.jsonc".text = ''
    {
      "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",

      "logo": {
        "type": "builtin",
        "source": "nixos",

        "padding": {
          "top": 1,
          "right": 4
        },

        "color": {
          "1": "#E51C2A",
          "2": "#FF3344",
          "3": "#E51C2A",
          "4": "#FF3344",
          "5": "#E51C2A",
          "6": "#FF3344",
          "7": "#F2F2F2",
          "8": "#E51C2A",
          "9": "#FF3344"
        }
      },

      "display": {
        "separator": "  ",

        "color": {
          "keys": "#E51C2A",
          "title": "#F2F2F2",
          "output": "#F2F2F2",
          "separator": "#3A4046"
        },

        "key": {
          "type": "both-1",
          "width": 18,
          "paddingLeft": 0
        },

        "percent": {
          "type": 9,
          "color": {
            "green": "#65B97A",
            "yellow": "#E3A64A",
            "red": "#FF3344"
          }
        }
      },

      "modules": [
        "title",

        {
          "type": "separator",
          "string": "─",
          "outputColor": "#3A4046",
          "length": 34
        },

        {
          "type": "os",
          "key": "OS",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "host",
          "key": "Host",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "kernel",
          "key": "Kernel",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "uptime",
          "key": "Uptime",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "packages",
          "key": "Packages",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "shell",
          "key": "Shell",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "display",
          "key": "Display",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "wm",
          "key": "Window Manager",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "theme",
          "key": "Theme",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "icons",
          "key": "Icons",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "cursor",
          "key": "Cursor",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "terminal",
          "key": "Terminal",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "terminalfont",
          "key": "Terminal Font",
          "keyColor": "#E51C2A",
          "outputColor": "#F2F2F2"
        },

        "break",

        {
          "type": "separator",
          "string": "─",
          "outputColor": "#3A4046",
          "length": 34
        },

        {
          "type": "cpu",
          "key": "CPU",
          "keyColor": "#FF3344",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "gpu",
          "key": "GPU",
          "keyColor": "#FF3344",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "memory",
          "key": "Memory",
          "keyColor": "#FF3344",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "swap",
          "key": "Swap",
          "keyColor": "#FF3344",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "disk",
          "key": "Disk",
          "keyColor": "#FF3344",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "localip",
          "key": "Local IP",
          "keyColor": "#FF3344",
          "outputColor": "#F2F2F2"
        },

        {
          "type": "battery",
          "key": "Battery",
          "keyColor": "#65B97A",
          "outputColor": "#F2F2F2"
        }
      ]
    }
  '';
}
