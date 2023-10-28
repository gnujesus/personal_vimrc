require'nvim-treesitter.configs'.setup {
  -- A LIST OF PARSER NAMES, OR "ALL" (THE FIVE LISTED PARSERS SHOULD ALWAYS BE INSTALLED)
  ensure_installed = { "rust", "python", "typescript", "c", "vimdoc", "lua", "java" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  -- sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
