return {
  "smoka7/hop.nvim",
  config = function()
    require("hop").setup({
      multi_windows = true,
    })
  end,
  keys = {
    { "s", "<cmd>HopChar2MW<cr>", desc = "HopChar2MW" },
    { "S", "<cmd>HopWordMW<cr>", desc = "HopWordMW" },
  },
}
