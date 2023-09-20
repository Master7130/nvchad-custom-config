---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- Me --

    -- Utils
    ["<leader>q"] = { "<cmd> q <CR>", "Quit neovim" },

    ["<leader>ch"] = { "<cmd> Telescope keymaps <CR>", "Keymap search" },

    -- Code actions/utilities
    ["<leader>cn"] = { "<cmd> lua vim.lsp.buf.rename() <CR>", "Rename symbol" },

    ["<leader>cwd"] = { "<cmd> TroubleToggle workspace_diagnostics <CR>", "Show workspace diagnostics" },

    ["<leader>cd"] = { "<cmd> TroubleToggle document_diagnostics <CR>", "Show diagnostics for current buffer" },

    ["<leader>cr"] = { "<cmd> TroubleToggle lsp_references", "References of symbol under cursor" },

    ["<leader>cs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Show symbols in buffer" },

    -- LSP
    ["<leader>lr"] = { "<cmd> LspRestart <CR>", "Restart LSP" },

    ["gd"] = { "<cmd> lua vim.lsp.buf.definition() <CR>", "Go to definition" },

    ["gD"] = { "<cmd> lua vim.lsp.buf.declaration() <CR>", "Go to declaration" },

    ["K"] = { "<cmd> lua vim.lsp.buf.hover() <CR>", "Hover" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
