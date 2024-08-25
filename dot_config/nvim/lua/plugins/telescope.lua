return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader><space>", vim.NIL },
    { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files (cwd)" },
    { "<leader>/", vim.NIL },
    { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Grep (cwd)" },
  },
}
