-- Application Switcher
leader = "alt"

for key, name in pairs({
    ["1"] = "Spotify",
    ["2"] = "kitty",
    ["3"] = "Slack",
    ["4"] = "Linear",
    ["5"] = "Obsidian",
    ["6"] = "Zen Browser",
    ["7"] = "Proxyman",

}) do
    hs.hotkey.bind(leader, key, function()
        hs.alert.show("Switching to " .. name)  -- Alert to confirm the keybind is working
        hs.application.launchOrFocus(name)
    end)
end


hs.notify.show("Config Settings", "", "Config Initialized!")
