return {
  -- Modify the formatting setup
  {
    "LazyVim/LazyVim",
    opts = {
      -- Disable autoformatting for specific file types
      autoformat = {
        -- Exclude specific filetypes from autoformatting
        exclude_ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      },
    },
  },
}
