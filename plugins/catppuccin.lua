local black = "#000000"

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha",
    no_italic = true,
    term_colors = true,
    color_overrides = {
      mocha = {
        base = black,
        mantle = black,
        crust = black,
      },
    },
  },
}
