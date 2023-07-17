return {
  "jose-elias-alvarez/null-ls.nvim",
  ft = { "python" },
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.black,
        nls.builtins.diagnostics.mypy,
        nls.builtins.diagnostics.ruff,
        nls.builtins.code_actions.gitsigns,
      },
    }
  end,
}
