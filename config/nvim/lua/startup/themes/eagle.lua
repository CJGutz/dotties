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
user_bookmark_mappings["E"] = "<cmd>enew<CR>"

local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        align = "center",
        margin = 5,


        -- Title from https://patorjk.com/software/taag/
        -- Commented out with macro: I[[A]],j
        content = { 
[[.__     .__          .__                                                 ]],
[[|  |__  |__|   ____  |  |__                                              ]],
[[|  |  \ |  |  / ___\ |  |  \                                             ]],
[[|   Y  \|  | / /_/  >|   Y  \                                            ]],
[[|___|  /|__| \___  / |___|  /                                            ]],
     [[\/     /_____/       \/                                             ]],
                          [[_____                                          ]],
[[______    ____  _______ _/ ____\  ____  _______   _____    ____  _______ ]],
[[\____ \ _/ __ \ \_  __ \\   __\  /  _ \ \_  __ \ /     \ _/ __ \ \_  __ \]],
[[|  |_> >\  ___/  |  | \/ |  |   (  <_> ) |  | \/|  Y Y  \\  ___/  |  | \/]],
[[|   __/  \___  > |__|    |__|    \____/  |__|   |__|_|  / \___  > |__|   ]],
[[|__|         \/                                       \/      \/         ]],
        },
        highlight = "Statement",
    },
    new_buffer = {
        type = "text",
        align = "center",
        margin = 5,
        content = {
         "Press E to open a new empty buffer",
        },
        highlight = "Function",
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
    parts = { "header", "new_buffer", "bookmarks", "footer" },
}
return settings





