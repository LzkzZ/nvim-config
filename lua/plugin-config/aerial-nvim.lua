-- https://github.com/stevearc/aerial.nvim#options
require('aerial').setup({
    -- Priority list of preferred backends for aerial.
    -- This can be a filetype map (see :help aerial-filetype-map)
    backends = { "treesitter", "lsp", "markdown", "man" },

    layout = {
        -- These control the width of the aerial window.
        -- They can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
        -- min_width and max_width can be a list of mixed types.
        -- max_width = {40, 0.2} means "the lesser of 40 columns or 20% of total"
        max_width = { 40, 0.2 },
        width = nil,
        min_width = 10,

        -- key-value pairs of window-local options for aerial window (e.g. winhl)
        win_opts = {},

        -- Determines the default direction to open the aerial window. The 'prefer'
        -- options will open the window in the other direction *if* there is a
        -- different buffer in the way of the preferred direction
        -- Enum: prefer_right, prefer_left, right, left, float
        default_direction = "prefer_right",

        -- Determines where the aerial window will be opened
        --   edge   - open aerial at the far right/left of the editor
        --   window - open aerial to the right/left of the current window
        placement = "window",

        -- Preserve window size equality with (:help CTRL-W_=)
        preserve_equality = false
    },

    -- When true, don't load aerial until a command or function is called
    -- Defaults to true, unless `on_attach` is provided, then it defaults to false
    lazy_load = true,

    -- Disable aerial on files with this many lines
    disable_max_lines = 10000,

    -- Disable aerial on files this size or larger (in bytes)
    disable_max_size = 2000000, -- Default 2MB

    -- A list of all symbols to display. Set to false to display all symbols.
    -- This can be a filetype map (see :help aerial-filetype-map)
    -- To see all available values, see :help SymbolKind
    filter_kind = {
        'Class',
        'Constructor',
        'Enum',
        'Function',
        'Interface',
        'Module',
        'Method',
        'Struct',
        'Field'
    },

    -- Define symbol icons.
    -- Default in aerial.nvim/lua/aerial/config.lua nerd_icons
    icons = {
        Class = 'class',
        Enum = 'enum',
        Function = '󰡱',
        Interface = 'interface'
    },

    -- When jumping to a symbol, highlight the line for this many ms.
    -- Set to false to disable
    highlight_on_jump = 3000

})
