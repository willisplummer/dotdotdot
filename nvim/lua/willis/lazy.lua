return require('lazy').setup({
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",

        },
        opts = {
            workspaces = {
                {
                    name = "personal",
                    path = "~/obsidian-vault",
                },
            },
        },
    },


    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function()
            require("neo-tree").setup({
                filesystem = {
                    filtered_items = {
                        visible = true,
                        hide_dotfiles = false,
                        hide_gitignored = true,
                    },
                    hijack_netrw_behavior = "open_current",
                    follow_current_file = {
                        enabled = true
                    },
                }
            })
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'nvim-telescope/telescope-media-files.nvim',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim', 'nvim-telescope/telescope.nvim' },
        -- config = function()
        --     require("telescope").load_extension("media_files")
        -- end
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

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    --  'nvim-treesitter/playground',
    'ThePrimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'simrat39/rust-tools.nvim',

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },



    {
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    'vim-pandoc/vim-pandoc',

    'vim-pandoc/vim-pandoc-syntax',

    'christoomey/vim-tmux-navigator',

    -- used to let mini.comment know how to comment out jsx for example
    'JoosepAlviste/nvim-ts-context-commentstring',
    'echasnovski/mini.comment',

    -- Error Reporting
    {
        'folke/trouble.nvim',
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },
    -- ColorScheme
    'folke/tokyonight.nvim',

    'nmac427/guess-indent.nvim',

    'stevearc/conform.nvim',
})
