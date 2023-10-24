return {
  settings = {
    ["rust-analyzer"] = {
      lens = { enable = false },
      semanticHighlighting = {
        opeartor = {
          specialization = { enable = true },
        },
        punctuation = {
          enable = true,
          spearate = {
            macro = {
              bang = { enable = true },
            },
          },
          specialization = { enable = true },
        },
      },
    },
  },
}
