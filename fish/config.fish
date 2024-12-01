# Remove the message when you make a new terminal instance
set -U fish_greeting

# Set a gruvbox colorscheme
source ~/.config/fish/conf.d/theme_gruvbox.fish
theme_gruvbox dark

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start hyprland at login
if status --is-login
    if test (tty) = /dev/tty1
        Hyprland
    end
end

