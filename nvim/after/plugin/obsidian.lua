require("obsidian").setup({
  workspaces = {
    {
      name = "personal",
      path = "~/obsidian-vault",
    },
  },

  disable_frontmatter = true,

  mappings = {
    ["<leader>zd"] = {
      action = function()
        return require('obsidian').util.toggle_checkbox()
      end,
      opts = { buffer = true },
    }
  },
  ui = {
    checkboxes = {
      [" "] = { char = "☐", hl_group = "ObsidianTodo" },
      ["x"] = { char = "✔", hl_group = "ObsidianDone" },
    }
  },

  notes_subdir = "Inbox",
  new_notes_location = "notes_subdir",

  templates = {
    folder = "Templates"
  }
})
