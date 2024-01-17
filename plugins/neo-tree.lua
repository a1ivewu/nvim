return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    return require("astronvim.utils").extend_tbl(opts, {
      window = {
        position = "right",
        width = 30,
      },
      filesystem = {
        filtered_items = {
          always_show = { ".github", ".gitignore" },
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            ".git",
            -- "node_modules",
          },

          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
        },
      },
    })
  end,
}
