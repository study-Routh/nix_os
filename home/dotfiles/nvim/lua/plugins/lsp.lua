return {
	"neovim/nvim-lspconfig",

	config = function()
		--------------------------------------------------
		-- Diagnostics
		--------------------------------------------------

		vim.diagnostic.config({
			virtual_text = false,
			signs = false,
			underline = false,
			update_in_insert = false,
			severity_sort = true,
		})

		vim.keymap.set("n", "<leader>dt", function()
			local config = vim.diagnostic.config()
			local enabled = not config.virtual_text

			vim.diagnostic.config({
				virtual_text = enabled,
				signs = enabled,
				underline = enabled,
			})
		end, {
			desc = "Toggle Diagnostics",
		})

		--------------------------------------------------
		-- Blink capabilities
		--------------------------------------------------

		local capabilities = require("blink.cmp").get_lsp_capabilities()

		--------------------------------------------------
		-- Lua
		--------------------------------------------------

		vim.lsp.config("lua_ls", {
			capabilities = capabilities,

			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},

					workspace = {
						library = {
							vim.env.VIMRUNTIME,
						},

						checkThirdParty = false,
					},

					telemetry = {
						enable = false,
					},
				},
			},
		})

		--------------------------------------------------
		-- Python
		--------------------------------------------------

		vim.lsp.config("pyright", {
			capabilities = capabilities,
		})

		--------------------------------------------------
		-- C / C++
		--------------------------------------------------

		vim.lsp.config("clangd", {
			capabilities = capabilities,
		})

		--------------------------------------------------
		-- Rust
		--------------------------------------------------

		vim.lsp.config("rust_analyzer", {
			capabilities = capabilities,
		})

		--------------------------------------------------
		-- CMake
		--------------------------------------------------

		vim.lsp.config("cmake", {
			capabilities = capabilities,
		})

		--------------------------------------------------
		-- Java
		--------------------------------------------------

		vim.lsp.config("jdtls", {
			capabilities = capabilities,
		})

		--------------------------------------------------
		-- Web
		--------------------------------------------------

		vim.lsp.config("vtsls", {
			capabilities = capabilities,
		})

		vim.lsp.config("eslint", {
			capabilities = capabilities,
		})

		--------------------------------------------------
		-- Enable servers
		--------------------------------------------------

		vim.lsp.enable({
			"lua_ls",
			"pyright",
			"clangd",
			"rust_analyzer",
			"cmake",
			"jdtls",
			"vtsls",
			"eslint",
		})
	end,
}
