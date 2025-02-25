return {

  "ThePrimeagen/harpoon",
  enabled = true,
  event = {"InsertEnter", "CmdLineEnter"},
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },

  keys = function()
    local harpoon = require("harpoon")
    local conf = require("telescope.config").values

    -- Maybe rebind harpoon keybinds

    return {
      -- Harpoon marked files 1 through 4
      {"<leader>a1", function() harpoon:list():select(1) end, desc ="Harpoon buffer 1"},
      {"<leader>a2", function() harpoon:list():select(2) end, desc ="Harpoon buffer 2"},
      {"<leader>a3", function() harpoon:list():select(3) end, desc ="Harpoon buffer 3"},
      {"<leader>a4", function() harpoon:list():select(4) end, desc ="Harpoon buffer 4"},

      -- Harpoon next and previous.
      {"<leader>an", function() harpoon:list():next() end, desc ="Harpoon next buffer"},
      {"<leader>ap", function() harpoon:list():prev() end, desc ="Harpoon prev buffer"},

      -- Harpoon user interface.
      {"<leader>ao", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc ="Harpoon Toggle Menu"},
      {"<leader>aa", function() harpoon:list():add() end, desc ="Harpoon add file"},
    }
  end,

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Use Harpoon defaults or my customizations.

  opts = function(_, opts)
    opts.settings = {
      save_on_toggle = false,
      sync_on_ui_close = false,
      save_on_change = true,
      enter_on_sendcmd = false,
      tmux_autoclose_windows = false,
      excluded_filetypes = { "harpoon", "alpha", "dashboard", "gitcommit" },
      mark_branch = false,
      key = function()
        return vim.loop.cwd()
      end
    }
  end,

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Configure Harpoon.

  config = function(_, opts)
    require("harpoon").setup(opts)
  end,

  -- ----------------------------------------------------------------------- }}}
}
