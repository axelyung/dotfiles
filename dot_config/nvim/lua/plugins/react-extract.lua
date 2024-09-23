return {
  "napmn/react-extract.nvim",
  requires = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
  keys = {
    { "<leader>cx", "<cmd>ReactExtract<cr>", desc = "React Extract" },
  },
}
