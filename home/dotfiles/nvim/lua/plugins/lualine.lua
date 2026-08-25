return {
	"nvim-lualine/lualine.nvim",

	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local function git_status()
			local status = vim.b.gitsigns_status_dict

			-- Not inside a git repository
			if not status or not status.head then
				return ""
			end

			local added = status.added or 0
			local removed = status.removed or 0
			local changed = status.changed or 0

			-- Clean / already committed
			if added == 0 and removed == 0 and changed == 0 then
				return "."
			end

			local parts = {}

			if added > 0 then
				table.insert(parts, "+" .. added)
			end

			if removed > 0 then
				table.insert(parts, "-" .. removed)
			end

			return table.concat(parts, " ")
		end

		require("lualine").setup({
			options = {
				theme = "kanagawa",
				icons_enabled = true,
				globalstatus = true,
			},

			sections = {
				lualine_a = {
					"mode",
				},

				lualine_b = {
					git_status,
				},

				lualine_c = {
					{
						"filename",
						path = 0,

						symbols = {
							modified = " ●",
							readonly = " ",
							unnamed = "[No Name]",
							newfile = "[New]",
						},
					},
				},

				lualine_x = {
					"encoding",
					"fileformat",
					"filetype",
				},

				lualine_y = {
					"progress",
				},

				lualine_z = {
					"location",
				},
			},
		})
	end,
}
