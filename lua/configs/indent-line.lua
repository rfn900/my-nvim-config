local M = {}

function M.config()
  local status_ok, indent_blankline = pcall(require, "indent_blankline")
  if not status_ok then
    return
  end

  vim.g.indentLine_enabled = 1
  vim.g.indent_blankline_show_trailing_blankline_indent = false
  vim.g.indent_blankline_show_first_indent_level = true
  vim.g.indent_blankline_use_treesitter = true
  vim.g.indent_blankline_show_current_context = true
  vim.g.indent_blankline_char = "▏"
  vim.g.indent_blankline_buftype_exclude = {
    "nofile",
    "terminal",
    "lsp-installer",
    "lspinfo",
  }
  vim.g.indent_blankline_filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "neo-tree",
    "Trouble",
  }
  vim.g.indent_blankline_context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
  }

  vim.cmd [[highlight IndentBlanklineIndent1 guifg=#3e4044 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent2 guifg=#3e4044 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent3 guifg=#3e4044 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent4 guifg=#3e4044 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent5 guifg=#3e4044 gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent6 guifg=#3e4044 gui=nocombine]]

  indent_blankline.setup(require("core.utils").user_plugin_opts("indent_blankline", {
    show_current_context = false,
    show_current_context_start = false,
    space_char_blankline = " ",
    char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
    },
  }))
end

return M
