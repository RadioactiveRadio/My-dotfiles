hl.on("hyprland.start", function()
    -- Start your desktop shell
    hl.exec_cmd("qs -c noctalia-shell")

    -- Background daemons
    hl.exec_cmd("syncthing serve --no-browser")
    hl.exec_cmd("otd-daemon")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")

    -- Trash management
    hl.exec_cmd("trash-empty 30")
end)
