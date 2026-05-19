--4 Fingers--
hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
hl.gesture({
    fingers = 4,
    direction = "down",
    action = function()
        hl.exec_cmd(
            "qs -c noctalia-shell ipc call lockScreen lock")
    end
})

--3 Fingers--
hl.gesture({ fingers = 3, direction = "horizontal", action = "scroll_move" })
