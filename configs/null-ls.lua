local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- Rust
  -- Have to add extra_args because rustfmt defaults to 2015 which is causing errors and resulting in code not formatting
  b.formatting.rustfmt.with { extra_args = { "--edition", "2021" } },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
