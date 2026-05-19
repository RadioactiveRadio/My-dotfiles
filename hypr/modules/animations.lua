-- Curves --
hl.curve("rubber", { type = "spring", mass = 1, stiffness = 20, dampening = 6 })
hl.curve("easeOutExpo", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })

-- Animations --
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, spring = "rubber", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, spring = "rubber", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 7, bezier = "easeOutExpo", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 20, bezier = "easeOutExpo", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 10, bezier = "easeOutExpo", style = "slide" })
