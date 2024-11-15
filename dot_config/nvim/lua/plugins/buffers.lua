return {
  {
    "echasnovski/mini.bufremove",
    -- Make sure it's loaded before we use it
    lazy = false,
    config = function()
      require("mini.bufremove").setup({})
    end,
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      -- Auto-close buffers configuration
      local augroup = vim.api.nvim_create_augroup("buffer_autoclose", { clear = true })

      vim.api.nvim_create_autocmd("BufLeave", {
        group = augroup,
        callback = function()
          local current_buf = vim.api.nvim_get_current_buf()
          local all_bufs = vim.api.nvim_list_bufs()

          for _, buf in ipairs(all_bufs) do
            -- Skip current buffer and special buffers
            if
              buf ~= current_buf
              and vim.api.nvim_buf_is_valid(buf)
              and vim.bo[buf].buflisted
              and not vim.bo[buf].modified
              and vim.bo[buf].buftype == ""
            then
              -- Get buffer name
              local bufname = vim.api.nvim_buf_get_name(buf)
              -- Check last access time
              local last_accessed = vim.fn.getbufinfo(buf)[1].lastused

              -- Close buffer if it hasn't been accessed in the last 30 minutes
              if vim.fn.localtime() - last_accessed > 1800 then -- 1800 seconds = 30 minutes
                require("mini.bufremove").delete(buf, false)
              end
            end
          end
        end,
        desc = "Auto-close inactive buffers",
      })
    end,
  },
}
