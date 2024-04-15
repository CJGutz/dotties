local user_bookmarks = vim.g.startup_bookmarks or {}

local bookmark_texts = { "Bookmarks", "" }
local user_bookmark_mappings = {}

local function getDir(str)
    return str:match("(.*[/\\])")
end

for key, file in pairs(user_bookmarks) do
    bookmark_texts[#bookmark_texts + 1] = key .. " " .. file
    user_bookmark_mappings[key] = "<cmd>e " .. file .. "<CR><cmd>cd " .. getDir(file) .. "<CR>"
end

local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        align = "center",
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
    },
    oldfiles = {
        type = "oldfiles",
        oldfiles_directory = true,
        align = "center",
        margin = 5,
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
        align = "center",
        title = "Footer",
        margin = 5,
        content = { "Time to grind" },
        highlight = "Number",
    },
    options = {
        after = function()
            require("startup").create_mappings(user_bookmark_mappings)
            require("startup.utils").oldfiles_mappings()
        end,
        mapping_keys = true,
        cursor_column = 0.5,
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





