local db = require("alpha.themes.dashboard")
require('alpha').setup({
    layout = {
        {
            type = "text",
            val = {
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                               __                ]],
                [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
                [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
                [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
                [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
                [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
            },
            opts = {
                hl = "String",
                position = "center",
            }
        },
        {
            type = "padding",
            val = 1
        },
        {
            type = "group",
            val = {
                db.button('n', '  Recent Files', ':Telescope oldfiles<CR>'),
                db.button('p', '  Find Files', ':Telescope find_files<CR>'),
                db.button('c', '  Configuration', ':e ~/.config/nvim<CR>'),
                db.button('q', '  Close', ':qa<CR>')
            },
            opts = {
                spacing = 1
            }
        }
    }
})

