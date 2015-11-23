--------------------
--- App focusing ---
--------------------

-- modified from 
-- https://github.com/gibiansky/dotfiles/blob/master/hammerspoon/init.lua

focus_binding = {"ctrl", "shift"}

-- Windows with letter bindings
apps = {
 ["MacVim"] = "x",
 ["Google Chrome"] = "c",
 ["Spotify"] = "s",
 ["iTerm"] = "z",
 ["HipChat"] = "p",
 ["Preview"] = "a",
 ["Microsoft Outlook"] = "o",
 ["IntelliJ IDEA"] = "i",
}

function focus_app(name)
    -- Get the app however we can.
    local app = hs.appfinder.appFromName(name)
    if app == nil then
        app = hs.appfinder.appFromWindowTitle(name)
    end
    if app == nil then
        app = hs.appfinder.appFromWindowTitlePattern(name)
    end

    if app == nil then
        hs.alert.show("Could not find " .. name, 1)
    else
        app:activate(true)
    end
    return app
end

-- Bind windows to hotkeys
for name, key in pairs(apps) do
    hs.hotkey.bind(focus_binding, key, function() focus_app(name) end)
end

--------------------
--------------------
--------------------

-----------------------
--- Window Movement ---
-----------------------

movement_binding = {"ctrl", "cmd"}

-- Movement bindings
movements = {
  ["h"] = { x = 0,   y = 0,   w = 1,   h = 1   },
  ["j"] = { x = 0,   y = 0,   w = 1/2, h = 1   },
  ["l"] = { x = 1/2, y = 0,   w = 1/2, h = 1   },
  ["i"] = { x = 0,   y = 0,   w = 1,   h = 1/2 },
  ["k"] = { x = 0,   y = 1/2, w = 1,   h = 1/2 },
  ["u"] = { x = 0,   y = 0,   w = 1/2, h = 1/2 },
  ["o"] = { x = 1/2, y = 0,   w = 1/2, h = 1/2 },
  ["n"] = { x = 0,   y = 1/2, w = 1/2, h = 1/2 },
  ["m"] = { x = 1/2, y = 1/2, w = 1/2, h = 1/2 },
}

function move_focused_win(loc)
  local win = hs.window.focusedWindow()
  local max = win:screen():frame()
  local frame = { x = max.x + (loc.x * max.w),
                  y = max.y + (loc.y * max.h),
                  w = max.w * loc.w,
                  h = max.h * loc.h }
  win:setFrame(frame, 0)
end

for key, loc in pairs(movements) do
  hs.hotkey.bind(movement_binding, key, function() move_focused_win(loc) end)
end

-----------------------
-----------------------
-----------------------
