lvim.plugins = {
  { 'mhartington/oceanic-next' },
  { 'APZelos/blamer.nvim' },
  { "karb94/neoscroll.nvim" },
  { 'DaikyXendo/nvim-material-icon' },
  { 'projekt0n/github-nvim-theme' },
  { 'chriskempson/base16-vim' },
  { 'jacoborus/tender.vim' },
  { 'tanvirtin/monokai.nvim' },
  { "rebelot/kanagawa.nvim" },
  { 'sonph/onehalf' },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    init = function(_)
      flavour = "mocha"
    end,
    integartions = {
      nvimtree = true,
      aerial = true
    },
    priority = 1000
  },
  {
    "sidebar-nvim/sidebar.nvim",
    config = function()
      local sidebar = require("sidebar-nvim")
      sidebar.setup({
        bindings = { ["<C-c>"] = function() require("sidebar-nvim").toggle() end },
        open = true,
        indent_width = 50,
        section_separator = { "---------------------------------------------------------" },
        sections = { "datetime", "files", "git", "symbols", "diagnostics" },
        datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
        todos = { ignored_paths = { "~" } },
      })
      vim.keymap.set('n', '<leader>e', sidebar.toggle)
    end,
  },
  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {
      -- Your setup opts here
    },
  },
  { "sindrets/diffview.nvim" },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()

    end
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup {}
    end
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'ayu-theme/ayu-vim',
  }
}
-- lvim.colorscheme = "base16-default-dark"
-- lvim.colorscheme = "tender"
lvim.colorscheme = "ayu"
-- lvim.colorscheme = "monokai"
-- lvim.colorscheme = "kanagawa"
-- lvim.colorscheme = "catppuccin"
lvim.builtin.terminal.open_mapping = "<C-e>"
lvim.format_on_save = true
lvim.transparent_window = false
vim.g.blamer_enabled = true
vim.g.blamer_delay = 500
vim.g.minimap_width = 10
lvim.builtin.nvimtree.active = false
vim.keymap.set('n', '<leader>e', ":SidebarNvimToggle")
vim.g.minimap_auto_start = 1
vim.g.minimap_auto_start_win_enter = 1
lvim.builtin.nvimtree.setup.view.width = 40
lvim.builtin.nvimtree.setup.renderer.indent_width = 1
lvim.builtin.nvimtree.setup.renderer.indent_markers.enable = true
lvim.builtin.nvimtree.setup.renderer.indent_markers.inline_arrows = false
lvim.builtin.nvimtree.setup.renderer.indent_markers.icons.edge = "|"
lvim.builtin.nvimtree.setup.renderer.indent_markers.icons.item = "|"
lvim.builtin.nvimtree.setup.renderer.icons.glyphs.folder.arrow_open = ""
lvim.builtin.nvimtree.setup.renderer.icons.glyphs.folder.arrow_closed = ""
