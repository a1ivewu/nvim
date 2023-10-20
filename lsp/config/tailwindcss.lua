local util = require "lspconfig.util"

return {
  root_dir = function(fname) return util.root_pattern("tailwind.config.js", "tailwind.config.ts")(fname) end,
  settings = {
    tailwindCSS = {
      classAttributes = {
        "class",
        "className",
        "ngClass",
      },
      experimental = {
        classRegex = {
          "cva\\(([^)]*)\\)",
          "[\"'`]([^\"'`]*).*?[\"'`]",
        },
      },
      emmetCompletions = false,
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning",
      },
      validate = true,
    },
  },
}
