function goblin-mode --on-event fish_postexec
    path is -rd /usr/share/fortune
    and read -lz all <(random choice (string match -v '*.dat' -- /usr/share/fortune/*))
    and random choice (string split \n%\n -- $all)

    for var in (set -n | string match 'fish_*color*' | string match -v fish_terminal_color_theme)
        set -g $var (random choice (set_color -c | string match -v black))
    end

    fish_config prompt choose (random choice (fish_config prompt list))
end
