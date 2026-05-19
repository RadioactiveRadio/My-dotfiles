-- =========================================================================
-- MODULE IMPORT CORE
-- =========================================================================
require("modules.decorations")
require("modules.autostart")
require("modules.general")
require("modules.monitors")
require("modules.animations")
require("modules.input")
require("modules.binds")
require("modules.env")
require("modules.gestures")
require("modules.rules")

-- =========================================================================
-- NVIDIA SPECIFIC PLATFORM FIXES (Fixed to use legal Lua API syntax)
-- =========================================================================
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
