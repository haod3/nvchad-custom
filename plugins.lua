local plugins = {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
            config = function()
                require "custom.configs.null-ls"
            end
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        opts = {
            defaults = {
                prompt_prefix = "   "
            }
        }
    },
    {
        "phaazon/hop.nvim",
        branch = "v2",
        cmd = "HopWord",
        config = function()
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    },
    {
        "simrat39/symbols-outline.nvim",
        cmd = "SymbolsOutline",
        config = function()
            require "symbols-outline".setup()
        end
    },
    {
        "NvChad/ui",
        dependencies = {
            "lukas-reineke/virt-column.nvim",
            config = function()
                require("virt-column").setup { char = '│' }
            end
        }
    },
    {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", 'gomod' }
    }
}

return plugins