    local dashboard = require("alpha.themes.dashboard")
    local logo = "Snoretown Welcomes You!"

    local header = dashboard.section.header
    header.val = logo
    header.opts = {
        position = "center",
        width = 20
    }

    local footer = dashboard.section.footer
    footer.val = [[
    "I feel the need, the need for tweed"
    ]]
    footer.opts = {
        position = "center"
    }
    dashboard.config.layout = {
        { type = "padding", val = 5 },
        header,
        { type = "padding", val = 4 },
        footer
    }

require("alpha").setup(dashboard.config)
