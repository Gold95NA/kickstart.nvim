
-- lua/hxh-themes.lua

local M = {}

-- Define all 3 Hunter x Hunter character themes
M.themes = {
  illumi = {
    normal = {
      a = { fg = "#2e322f", bg = "#55bf83", gui = "bold" },
      b = { fg = "#2e322f", bg = "#ffec33" },
      c = { fg = "#2e322f", bg = "#b5e1c6" },
      z = { fg = "#b5e1c6", bg = "#55bf83", gui = "bold" },
    },
    insert = { a = { fg = "#2e322f", bg = "#a3be8c", gui = "bold" } },
    visual = { a = { fg = "#2e322f", bg = "#c678dd", gui = "bold" } },
    replace = { a = { fg = "#2e322f", bg = "#ff5c5c", gui = "bold" } },
    inactive = {
      a = { fg = "#2e322f", bg = "#b5e1c6" },
      b = { fg = "#2e322f", bg = "#b5e1c6" },
      c = { fg = "#2e322f", bg = "#b5e1c6" },
    },
  },

  hisoka = {
    normal = {
      a = { fg = "#3a3a3a", bg = "#a3dfff", gui = "bold" },
      b = { fg = "#3a3a3a", bg = "#ffb6d9" },
      c = { fg = "#3a3a3a", bg = "#e6e6e6" },
      z = { fg = "#e6e6e6", bg = "#ffb6d9", gui = "bold" },
    },
    insert = { a = { fg = "#3a3a3a", bg = "#b0f2c2", gui = "bold" } },
    visual = { a = { fg = "#3a3a3a", bg = "#ffb6d9", gui = "bold" } },
    replace = { a = { fg = "#3a3a3a", bg = "#ff6b81", gui = "bold" } },
    inactive = {
      a = { fg = "#3a3a3a", bg = "#e6e6e6" },
      b = { fg = "#3a3a3a", bg = "#e6e6e6" },
      c = { fg = "#3a3a3a", bg = "#e6e6e6" },
    },
  },

  kurapika = {
    normal = {
      a = { fg = "#f6e27f", bg = "#383cb8", gui = "bold" },
      b = { fg = "#f6e27f", bg = "#c0c0c0" },
      c = { fg = "#f6e27f", bg = "#1c2230" },
      z = { fg = "#c0c0c0", bg = "#b91c1c", gui = "bold" },
    },
    insert = { a = { fg = "#f6e27f", bg = "#9cc69b", gui = "bold" } },
    visual = { a = { fg = "#f6e27f", bg = "#e84545", gui = "bold" } },
    replace = { a = { fg = "#f6e27f", bg = "#e03e36", gui = "bold" } },
    inactive = {
      a = { fg = "#f6e27f", bg = "#1c2230" },
      b = { fg = "#f6e27f", bg = "#1c2230" },
      c = { fg = "#f6e27f", bg = "#1c2230" },
    },
  },
}

-- Function to apply theme
M.set_theme = function(name)
  local ok, lualine = pcall(require, 'lualine')
  if not ok then return end
  lualine.setup({
    options = {
      theme = M.themes[name],
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
      globalstatus = true,
    }
  })
end

return M
