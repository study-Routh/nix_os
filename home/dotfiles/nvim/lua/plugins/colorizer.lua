return {
	"NvChad/nvim-colorizer.lua",

	lazy = false,

	config = function()
		local colorizer = require("colorizer")

		colorizer.setup({
			filetypes = { "*" },

			buftypes = {
				"*",
				"!prompt",
				"!popup",
			},

			user_default_options = {
				RGB = true,
				RRGGBB = true,
				RRGGBBAA = true,

				names = false,
				rgb_fn = true,
				hsl_fn = true,

				css = true,
				css_fn = true,

				-- Show a colored square instead of coloring the hex itself
				mode = "virtualtext",

				-- The glyph used for the swatch
				virtualtext = "■",

				-- Put the square after the color value
				virtualtext_inline = "after",

				-- Color the glyph itself
				virtualtext_mode = "foreground",

				always_update = true,
			},
		})

		-- Attach to the buffer that was already open when Neovim started.
		local bufnr = vim.api.nvim_get_current_buf()

		if bufnr and not colorizer.is_buffer_attached(bufnr) then
			colorizer.attach_to_buffer(bufnr)
		end
	end,
}
