-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
-- LunarVim full config for Java, Kotlin, Python, JS/TS/React, C#, Rust, Go, C/C++
-- Utility stuff
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.relativenumber = true

-- Ensure language servers installed
lvim.lsp.installer.setup.ensure_installed = {
  "jdtls",                  -- Java
  "kotlin_language_server", -- Kotlin
  "pyright",                -- Python
  "tsserver",               -- JavaScript / TypeScript
  "jsonls",                 -- JSON
  "rust_analyzer",          -- Rust
  "gopls",                  -- Go
  "omnisharp",              -- C#
  "clangd",                 -- C / C++
  "html",
  "cssls",
  "eslint",
  "yamlls",
}

-- Null-ls formatters setup
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup {
  { command = "black",        filetypes = { "python" } },
  { command = "prettier",     filetypes = { "javascript", "typescript", "json", "html", "css", "yaml" } },
  { command = "clang-format", filetypes = { "c", "cpp" } },
  { command = "gofmt",        filetypes = { "go" } },
  { command = "rustfmt",      filetypes = { "rust" } },
}

-- Null-ls linters setup
local linters = require("lvim.lsp.null-ls.linters")
linters.setup {
  { command = "flake8",   filetypes = { "python" } },
  { command = "eslint_d", filetypes = { "javascript", "typescript", "jsx", "tsx" } },
}

-- Plugins
lvim.plugins = {
  -- Themes
  {
    "shaunsingh/nord.nvim",
    config = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false
    end
  },

  -- Treesitter and language syntax
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Java
  { "mfussenegger/nvim-jdtls" },

  -- Kotlin
  { "udalov/kotlin-vim" },

  -- JavaScript/TypeScript/React
  { "mlaursen/vim-react-snippets" },
  { "dmmulroy/tsc.nvim",               config = function() require("tsc").setup() end },

  -- Rust
  {
    "saecki/crates.nvim",
    dependancies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup()
    end
  },

  -- Go
  { "fatih/vim-go" },

  -- C / C++
  { "p00f/clangd_extensions.nvim" },

  -- Debugging UI & core
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
  { "nvim-telescope/telescope-dap.nvim" },
  { "folke/trouble.nvim",               cmd = "TroubleToggle" },

  -- Completion plugins
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
}

-- Configure nvim-dap-ui
local dap, dapui = require("dap"), require("dapui")
dapui.setup()

-- Open dap-ui automatically when debugging starts
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- Key mappings for debugging
lvim.keys.normal_mode["<leader>db"] = ":lua require'dap'.toggle_breakpoint()<CR>"
lvim.keys.normal_mode["<leader>dc"] = ":lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<leader>do"] = ":lua require'dapui'.open()<CR>"
lvim.keys.normal_mode["<leader>dq"] = ":lua require'dapui'.close()<CR>"
lvim.keys.normal_mode["<leader>dr"] = ":lua require'dap'.repl.toggle()<CR>"

-- Treesitter languages to install
lvim.builtin.treesitter.ensure_installed = {
  "java",
  "kotlin",
  "python",
  "javascript",
  "typescript",
  "tsx",
  "json",
  "c",
  "cpp",
  "rust",
  "go",
  "html",
  "css",
  "yaml",
  "lua",
}

lvim.builtin.treesitter.highlight.enable = true
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "nord"
