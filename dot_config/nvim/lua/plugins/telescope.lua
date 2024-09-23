return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader><space>", vim.NIL },
    { "<leader><space>", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
    { "<leader>/", vim.NIL },
    { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Grep (cwd)" },
  },
  vimgrep_arguments = {
    "rg",
    "--no-heading",
    "--with-filename",
    "--line-number",
    "--column",
    "--smart-case",
  },
}
