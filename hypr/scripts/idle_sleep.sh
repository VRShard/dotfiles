swayidle -w timeout 90 '~/.config/hypr/scripts/lock_screen.sh' \
            timeout 150 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on && brightnessctl -c backlight set 76' \
            timeout 360 'systemctl suspend' \
            before-sleep '~/.config/hypr/scripts/lock_screen.sh' \
            after-resume 'hyprctl dispatch dpms on && brightnessctl -c backlight set 76' &
