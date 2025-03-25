
-- lua/hxh-popups.lua

local M = {}

-- Theme-specific popup styles
local popup_highlights = {
  illumi = {
    border = "#55bf83",
    background = "#1c1e26",
  },
  hisoka = {
    border = "#a3dfff",
    background = "#1e1e1e",
  },
  kurapika = {
    border = "#f6e27f",
    background = "#1c2230",
  },
}

M.set_popup_style = function(theme)
  local hl = popup_highlights[theme] or popup_highlights.illumi

  vim.diagnostic.config({
    float = {
      border = "rounded",
      source = "always",
    },
  })

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover,
    { border = "rounded" }
  )

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help,
    { border = "rounded" }
  )

  vim.api.nvim_set_hl(0, "FloatBorder", { fg = hl.border, bg = hl.background })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = hl.background })
  vim.o.winblend = 0
  vim.o.pumblend = 10
end

return M
