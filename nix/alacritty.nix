{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Regular";
        };
        size = 12.0;
      };

      scrolling = {
        history = 10000;
      };

      window = {
        opacity = 0.85;
        padding = {
          x = 8;
          y = 8;
        };
      };

      shell = {
        program = "${pkgs.zsh}/bin/zsh";
        args = [
          "-l"
          "-c"
          "${pkgs.tmux}/bin/tmux attach || ${pkgs.tmux}/bin/tmux new-session"
        ];
      };

      env = {
        TERM = "alacritty";
      };
    };
  };
}

