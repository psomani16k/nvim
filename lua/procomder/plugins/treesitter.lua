return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
 
 
 
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      
      highlight = {
        enable = true,
      },
      
      -- enable indentation
      indent = { enable = true },
      
      -- ensure these language parsers are installed
      ensure_installed = {
        "bash",
        "c",
				"cpp",
				"dart",
        "gitignore",
				"java",
        "javascript",
        "json",
				"kotlin",
        "lua",
        "markdown",
        "markdown_inline",
				"python", 
				"rust",
				"toml",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
