return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    require("transparent").setup({
      enable = true,
      extra_groups = {
        "NormalFloat", -- フローティングウィンドウ
        "NvimTreeNormal", -- NvimTree の背景
        "StatusLine", -- ステータスライン
        "VertSplit", -- 垂直分割線
        "WinBar", -- ウィンドウバー
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeWinSeparator",
        "NeoTreeEndOfBuffer",
      },
      exclude = {}, -- 除外したい group を指定
    })

    -- 透過を有効化
    vim.cmd("TransparentEnable")
  end,
}
