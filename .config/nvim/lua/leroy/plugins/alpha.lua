return {
    "goolord/alpha-nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button("e", "new file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "find file", ":Telescope find_files<CR>"),
            dashboard.button("t", "open oil", ":Oil<CR>"),
            dashboard.button("r", "recent", ":Telescope oldfiles<CR>"),
            dashboard.button("p", "plugins", ":Oil ~/.config/nvim/lua/leroy/<CR>"),
            dashboard.button("q", "quit", ":qa<CR>"),
        }

        _Gopts = {
            position = "center",
            hl = "Type",
            -- wrap = "overflow";
        }

        local function footer()
            return "i hate cpp"
        end

        dashboard.section.footer.val = footer()

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
    end,
}
