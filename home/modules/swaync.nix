{ theme, ... }:

let
  config = {
    positionX = "right";
    positionY = "top";

    layer = "overlay";
    "control-center-layer" = "top";

    "control-center-width" = 420;
    "notification-window-width" = 420;

    "control-center-margin-top" = 10;
    "control-center-margin-right" = 10;
    "control-center-margin-bottom" = 10;
    "control-center-margin-left" = 10;

    timeout = 6;
    "timeout-low" = 4;
    "timeout-critical" = 0;

    "notification-grouping" = true;
    "relative-timestamps" = true;
    "hide-on-action" = true;

    widgets = [
      "title"
      "dnd"
      "notifications"
    ];

    "widget-config" = {
      title = {
        text = "Notifications";
        "clear-all-button" = true;
        "button-text" = "Clear";
      };

      dnd = {
        text = "Do Not Disturb";
      };
    };
  };

in
{
  xdg.configFile."swaync/config.json".text =
    builtins.toJSON config;

  xdg.configFile."swaync/style.css".text = ''
    * {
      font-family: "${theme.typography.ui}";
      font-size: 13px;
    }

    .notification-row {
      outline: none;
    }

    .notification {
      background: alpha(#${theme.colors.background}, 0.92);
      color: #${theme.colors.foreground};

      border: 1px solid #${theme.colors.border};
      border-radius: 8px;

      margin: 6px;
      padding: 8px;
    }

    .notification-content {
      background: transparent;
    }

    .summary {
      color: #${theme.colors.foreground};
      font-weight: 600;
    }

    .body,
    .time {
      color: #${theme.colors.muted};
    }

    .control-center {
      background: alpha(#${theme.colors.background}, 0.94);
      color: #${theme.colors.foreground};

      border: 1px solid #${theme.colors.border};
      border-radius: 10px;
    }

    .control-center-list {
      background: transparent;
    }

    .widget-title {
      color: #${theme.colors.foreground};
      margin: 12px;
    }

    .widget-title > button {
      background: #${theme.colors.surface};
      color: #${theme.colors.foreground};

      border: 1px solid #${theme.colors.border};
      border-radius: 6px;
      padding: 6px 10px;
    }

    .widget-dnd {
      color: #${theme.colors.foreground};
      margin: 8px 12px;
    }

    .widget-dnd > switch {
      background: #${theme.colors.surface};
      border-radius: 12px;
    }

    .widget-dnd > switch:checked {
      background: #${theme.colors.accent};
    }
  '';
}
