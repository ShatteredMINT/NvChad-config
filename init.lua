-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--

vim.opt.conceallevel = 1

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "build.sh", "*.subpackage.sh", "PKGBUILD", "*.install",
    "makepkg.conf", "*.ebuild", "*.eclass", "color.map", "make.conf" },
  callback = function()
    vim.lsp.start({
      name = "termux",
      cmd = { "termux-language-server" }
    })
  end,
})
