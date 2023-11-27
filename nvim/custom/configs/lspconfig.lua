local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
capabilities.offsetEncoding = { "utf-8" }

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table

lspconfig.cmake.setup({
  cmd = { "cmake-language-server" },
  filetypes = { "cmake" },
  init_options = {
  buildDirectory = "build"
  },
  root_dir = lspconfig.util.root_pattern('CMakePresets.json', 'CTestConfig.cmake', '.git', 'build', 'cmake')
})
-- lspconfig.pyright.setup { blabla}
--
-- tooling: https://github.com/cpp-best-practices/cppbestpractices/blob/master/02-Use_the_Tools_Available.md
lspconfig.clangd.setup({
    cmd = { "clangd", "--background-index" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cc", "h", "hh", "hpp", "hxx", "cxx" },
    root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
    settings = {
        clangd = {
            fileStatus = {
                semanticHighlighting = true,
            },
        },
    },
})

