return {
    'akinsho/bufferline.nvim',
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local bufferline = require("bufferline")

        bufferline.setup({
            options = {
                mode = "tabs",
                separator_style = "slant",
            },
        })

    local keymap = vim.keymap
    keymap.set("n", "<M-tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Goes to next buffer" })
    keymap.set("n", "<leader>pb", "<cmd>BufferLineCyclePrev<CR>", { desc = "Goes to previous buffer" })
    keymap.set("n", "<leader>bp", "<cmd>BufferLinePick<CR>", { desc = "Picks a buffer to go" })
    keymap.set("n", "<leader>mn", "<cmd>BufferLineMoveNext<CR>", { desc = "Moves buffer next" })
    keymap.set("n", "<leader>mp", "<cmd>BufferLineMovePrev<CR>", { desc = "Moves buffer to previuos" })
    keymap.set("n", "<leader>cb", "<cmd>BufferLinePickClose<CR>", { desc = "Closes a buffer" })
    keymap.set("n", "<M-1>", "<cmd>BufferLineGoToBuffer 1<cr>", { desc = "Goes to buffer 1" })
    keymap.set("n", "<M-2>", "<cmd>BufferLineGoToBuffer 2<cr>", { desc = "Goes to buffer 2" })
    keymap.set("n", "<M-3>", "<cmd>BufferLineGoToBuffer 3<cr>", { desc = "Goes to buffer 3" })
    keymap.set("n", "<M-4>", "<cmd>BufferLineGoToBuffer 4<cr>", { desc = "Goes to buffer 4" })
    keymap.set("n", "<M-5>", "<cmd>BufferLineGoToBuffer 5<cr>", { desc = "Goes to buffer 5" })
    keymap.set("n", "<M-6>", "<cmd>BufferLineGoToBuffer 6<cr>", { desc = "Goes to buffer 6" })
    keymap.set("n", "<M-7>", "<cmd>BufferLineGoToBuffer 7<cr>", { desc = "Goes to buffer 7" })
    keymap.set("n", "<M-8>", "<cmd>BufferLineGoToBuffer 8<cr>", { desc = "Goes to buffer 8" })
    keymap.set("n", "<M-9>", "<cmd>BufferLineGoToBuffer 9<cr>", { desc = "Goes to buffer 9" })

    end
}
