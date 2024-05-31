local map = vim.keymap.set

return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server",
        "stylua",
        "actionlint",
        "ansible-language-server",
        "ansible-lint",
        "awk-language-server",
        "bash-debug-adapter",
        "bash-language-server",
        "biome",
        "buf",
        "cspell",
        "css-lsp",
        "css-variables-language-server",
        "deno",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "doctoc",
        "firefox-debug-adapter",
        "gh",
        "gitleaks",
        "gitlint",
        "gradle-language-server",
        "grammarly-languageserver",
        "graphql-language-service-cli",
        "helm-ls",
        "html-lsp",
        "htmlhint",
        "java-debug-adapter",
        "java-language-server",
        "jq",
        "jq-lsp",
        "json-lsp",
        "kotlin-debug-adapter",
        "kotlin-language-server",
        "lua-language-server",
        "markdown-toc",
        "markdownlint",
        "markdownlint-cli2",
        "marksman",
        "prettier",
        "python-lsp-server",
        "shellcheck",
        "shfmt",
        "smithy-language-server",
        "some-sass-language-server",
        "sql-formatter",
        "sqlfluff",
        "sqlfmt",
        "sqlls",
        "stylua",
        "terraform-ls",
        "typescript-language-server",
        "vale",
        "vale-ls",
        "vim-language-server",
        "vscode-java-decompiler",
        "vue-language-server",
        -- "yaml-language-server",
        -- "yamlfix",
        -- "yamlfmt",
        -- "yamllint",

  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "awk",
        "bash",
        "c",
        "c_sharp",
        "clojure",
        "cpp",
        "css",
        "csv",
        "dhall",
        "diff",
        "dockerfile",
        "elixir",
        "elm",
        "elvish",
        "erlang",
        "fish",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "gpg",
        "graphql",
        "groovy",
        "haskell",
        "helm",
        "hocon",
        "html",
        "http",
        "java",
        "javascript",
        "jq",
        "jsdoc",
        "json",
        "just",
        "kotlin",
        "latex",
        "lua",
        "markdown",
        "markdown_inline",
        "mermaid",
        "nix",
        "norg",
        "printf",
        "properties",
        "proto",
        "python",
        "regex",
        "requirements",
        "ruby",
        "rust",
        "scala",
        "scss",
        "smithy",
        "solidity",
        "sql",
        "ssh_config",
        "strace",
        "svelte",
        "terraform",
        "tmux",
        "toml",
        "tsv",
        "typescript",
        "typoscript",
        "v",
        "vim",
        "vimdoc",
        "vue",
        "xml",
        "yaml",
      },
  	},
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/Notes/Obsidian",
        },
      },
      -- see below for full list of options 👇
      templates = {
        subdir = "files/templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        -- A map for custom variables, the key should be the variable and the value a function
        substitutions = {},
      },
      ui = {
        enable = true,  -- set to false to disable all additional syntax features
        update_debounce = 200,  -- update delay after a text change (in milliseconds)
        -- Define how various check-boxes are displayed
        checkboxes = {
          -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
          [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
          ["x"] = { char = "", hl_group = "ObsidianDone" },
          [">"] = { char = "", hl_group = "ObsidianRightArrow" },
          ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
          -- Replace the above with this if you don't have a patched font:
          -- [" "] = { char = "☐", hl_group = "ObsidianTodo" },
          -- ["x"] = { char = "✔", hl_group = "ObsidianDone" },

          -- You can also add more custom ones...
        },
        -- Use bullet marks for non-checkbox lists.
        bullets = { char = "•", hl_group = "ObsidianBullet" },
        external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
        -- Replace the above with this if you don't have a patched font:
        -- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
        reference_text = { hl_group = "ObsidianRefText" },
        highlight_text = { hl_group = "ObsidianHighlightText" },
        tags = { hl_group = "ObsidianTag" },
        block_ids = { hl_group = "ObsidianBlockID" },
        hl_groups = {
          -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
          ObsidianTodo = { bold = true, fg = "#f78c6c" },
          ObsidianDone = { bold = true, fg = "#89ddff" },
          ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
          ObsidianTilde = { bold = true, fg = "#ff5370" },
          ObsidianBullet = { bold = true, fg = "#89ddff" },
          ObsidianRefText = { underline = true, fg = "#c792ea" },
          ObsidianExtLinkIcon = { fg = "#c792ea" },
          ObsidianTag = { italic = true, fg = "#89ddff" },
          ObsidianBlockID = { italic = true, fg = "#89ddff" },
          ObsidianHighlightText = { bg = "#75662e" },
        },
      },
    },
    {
      "scalameta/nvim-metals",
      dependencies = {
        "nvim-lua/plenary.nvim",
        {
          "j-hui/fidget.nvim",
          opts = {},
        },
        {
          "mfussenegger/nvim-dap",
          config = function(self, opts)
            -- Debug settings if you're using nvim-dap
            local dap = require("dap")

            dap.configurations.scala = {
              {
                type = "scala",
                request = "launch",
                name = "RunOrTest",
                metals = {
                  runType = "runOrTestFile",
                  --args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
                },
              },
              {
                type = "scala",
                request = "launch",
                name = "Test Target",
                metals = {
                  runType = "testTarget",
                },
              },
            }
          end
        },
      },
      ft = { "scala", "sbt", "java" },
      opts = function()
        local metals_config = require("metals").bare_config()

        -- Example of settings
        metals_config.settings = {
          showImplicitArguments = true,
          excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
        }

        -- *READ THIS*
        -- I *highly* recommend setting statusBarProvider to either "off" or "on"
        --
        -- "off" will enable LSP progress notifications by Metals and you'll need
        -- to ensure you have a plugin like fidget.nvim installed to handle them.
        --
        -- "on" will enable the custom Metals status extension and you *have* to have
        -- a have settings to capture this in your statusline or else you'll not see
        -- any messages from metals. There is more info in the help docs about this
        metals_config.init_options.statusBarProvider = "off"

        -- Example if you are using cmp how to make sure the correct capabilities for snippets are set
        metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

        metals_config.on_attach = function(client, bufnr)
          require("metals").setup_dap()

          -- LSP mappings
          map("n", "gD", vim.lsp.buf.definition)
          map("n", "K", vim.lsp.buf.hover)
          map("n", "gi", vim.lsp.buf.implementation)
          map("n", "gr", vim.lsp.buf.references)
          map("n", "gds", vim.lsp.buf.document_symbol)
          map("n", "gws", vim.lsp.buf.workspace_symbol)
          map("n", "<leader>cl", vim.lsp.codelens.run)
          map("n", "<leader>sh", vim.lsp.buf.signature_help)
          map("n", "<leader>rn", vim.lsp.buf.rename)
          map("n", "<leader>f", vim.lsp.buf.format)
          map("n", "<leader>ca", vim.lsp.buf.code_action)

          map("n", "<leader>ws", function()
            require("metals").hover_worksheet()
          end)

          -- all workspace diagnostics
          map("n", "<leader>aa", vim.diagnostic.setqflist)

          -- all workspace errors
          map("n", "<leader>ae", function()
            vim.diagnostic.setqflist({ severity = "E" })
          end)

          -- all workspace warnings
          map("n", "<leader>aw", function()
            vim.diagnostic.setqflist({ severity = "W" })
          end)

          -- buffer diagnostics only
          map("n", "<leader>d", vim.diagnostic.setloclist)

          map("n", "[c", function()
            vim.diagnostic.goto_prev({ wrap = false })
          end)

          map("n", "]c", function()
            vim.diagnostic.goto_next({ wrap = false })
          end)

          -- Example mappings for usage with nvim-dap. If you don't use that, you can
          -- skip these
          map("n", "<leader>dc", function()
            require("dap").continue()
          end)

          map("n", "<leader>dr", function()
            require("dap").repl.toggle()
          end)

          map("n", "<leader>dK", function()
            require("dap.ui.widgets").hover()
          end)

          map("n", "<leader>dt", function()
            require("dap").toggle_breakpoint()
          end)

          map("n", "<leader>dso", function()
            require("dap").step_over()
          end)

          map("n", "<leader>dsi", function()
            require("dap").step_into()
          end)

          map("n", "<leader>dl", function()
            require("dap").run_last()
          end)
        end

        return metals_config
      end,
      config = function(self, metals_config)
        local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
        vim.api.nvim_create_autocmd("FileType", {
          pattern = self.ft,
          callback = function()
            require("metals").initialize_or_attach(metals_config)
          end,
          group = nvim_metals_group,
        })
      end

    },
    {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
      end
    },
    {
      'lucidph3nx/nvim-sops',
      event = { 'BufEnter' },
      opts = {
        enabled = true,
        debug = false,
        binPath = 'sops', -- assumes its on $PATH
        defaults = { -- overriding any env vars as needed
            ageKeyFile = '/Users/raphael.lemaitre/.config/ageKeys/backend-blockchain-services.txt',
        }        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      keys = {
        { '<leader>ef', vim.cmd.SopsEncrypt, desc = '[E]ncrypt [F]ile' },
        { '<leader>df', vim.cmd.SopsDecrypt, desc = '[D]ecrypt [F]ile' },
      },
    }
  }
}
