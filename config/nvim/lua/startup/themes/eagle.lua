local user_bookmarks = vim.g.startup_bookmarks

local bookmark_texts = { "Bookmarks", "" }
local user_bookmark_mappings = {}

if not user_bookmarks then
    user_bookmarks = {}
    bookmark_texts = {}
end

for key, file in pairs(user_bookmarks) do
    bookmark_texts[#bookmark_texts + 1] = key .. " " .. file
end

for key, file in pairs(user_bookmarks) do
    user_bookmark_mappings[key] = "<cmd>e " .. file .. "<CR>"
end

local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = {
        [[                                                                               _____                    ]],
        [[ ____________           ____              _____     ______   _______      _____\    \  ___________       ]],
        [[ \           \      ____\_  \__      _____\    \_  |\     \  \      \    /    / |    | \          \      ]],
        [[  \           \    /     /     \    /     /|     |  \\     \  |     /|  /    /  /___/|  \    /\    \     ]],
        [[   |    /\     |  /     /\      |  /     / /____/|   \|     |/     //  |    |__ |___|/   |   \_\    |    ]],
        [[   |   |  |    | |     |  |     | |     | |____|/     |     |_____//   |       \         |      ___/     ]],
        [[   |    \/     | |     |  |     | |     |  _____      |     |\     \   |     __/ __      |      \  ____  ]],
        [[  /           /| |     | /     /| |\     \|\    \    /     /|\|     |  |\    \  /  \    /     /\ \/    \ ]],
        [[ /___________/ | |\     \_____/ | | \_____\|    |   /_____/ |/_____/|  | \____\/    |  /_____/ |\______| ]],
        [[|           | /  | \_____\   | /  | |     /____/|  |     | / |    | |  | |    |____/|  |     | | |     | ]],
        [[|___________|/    \ |    |___|/    \|_____|    ||  |_____|/  |____|/    \|____|   | |  |_____|/ \|_____| ]],
        [[                   \|____|                |____|/                             |___|/                     ]],
        },
        highlight = "Statement",
        default_color = "",
        oldfiles_amount = 0,
    },
    oldfiles = {
        type = "oldfiles",
        oldfiles_directory = true,
        align = "center",
        fold_section = false,
        title = "Bookmarks",
        margin = 5,
        content = "",
        highlight = "String",
        oldfiles_amount = 5,
    },
    bookmarks = {
        type = "text",
        align = "center",
        margin = 5,
        content = bookmark_texts,
        highlight = "String",
        title = "Bookmarks",
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = { "Time to grind" },
        highlight = "Number",
        default_color = "",
    },
    options = {
        after = function()
            require("startup").create_mappings(user_bookmark_mappings)
            require("startup.utils").oldfiles_mappings()
        end,
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 3 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },
    parts = { "header", "oldfiles", "bookmarks", "footer" },
}
return settings





