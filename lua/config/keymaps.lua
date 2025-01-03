--
-- CONFIG --
--
-- Imports
local ng = require("ng")
local actions = require("actions-preview")
local builtin = require("telescope.builtin")

-- New keymap function
local function keymap(input, output, desc)
	local opts = {
		noremap = true,
		silent = true,
		desc = desc,
	}
	vim.keymap.set("n", input, output, opts)
end

--
-- GENERAL KEYMAPS --
--
-- Window navigation: CTRL-[hjkl]
keymap("<C-h>", "<cmd>wincmd h<CR>", "Window navigation: Navigate to left window")
keymap("<C-j>", "<cmd>wincmd j<CR>", "Window navigation: Navigate to lower window")
keymap("<C-k>", "<cmd>wincmd k<CR>", "Window navigation: Navigate to upper window")
keymap("<C-l>", "<cmd>wincmd l<CR>", "Window navigation: Navigate to right window")

-- Window arrangement: Leader->CTRL-[hjkl]
keymap("<leader><C-h>", "<C-W><S-h>", "Window arrangement: Move window left")
keymap("<leader><C-j>", "<C-W><S-j>", "Window arrangement: Move window down")
keymap("<leader><C-k>", "<C-W><S-k>", "Window arrangement: Move window up")
keymap("<leader><C-l>", "<C-W><S-l>", "Window arrangement: Move window right")

-- Window resize: Leader->[hjkl]
keymap("<leader>h", "<C-W><", "Window resize: Move window border left")
keymap("<leader>j", "<C-W>+", "Window resize: Move window border down")
keymap("<leader>k", "<C-W>-", "Window resize: Move window border up")
keymap("<leader>l", "<C-W>>", "Window resize: Move window border right")

-- Tab management: Leader->t...
keymap("<leader>tn", "<cmd>tabnew<cr>", "Tab management: Create new tab")
keymap("<leader>tc", "<cmd>tabclose<cr>", "Tab management: Close current tab")
keymap("<leader>t1", "<cmd>tabnext 1<cr>", "Tab management: Go to tab 1")
keymap("<leader>t2", "<cmd>tabnext 2<cr>", "Tab management: Go to tab 2")
keymap("<leader>t3", "<cmd>tabnext 3<cr>", "Tab management: Go to tab 3")
keymap("<leader>t4", "<cmd>tabnext 4<cr>", "Tab management: Go to tab 4")
keymap("<leader>t5", "<cmd>tabnext 5<cr>", "Tab management: Go to tab 5")
keymap("<leader>tm1", "<cmd>tabmove 1<cr>", "Tab management: Move tab to position 1")
keymap("<leader>tm2", "<cmd>tabmove 2<cr>", "Tab management: Move tab to position 2")
keymap("<leader>tm3", "<cmd>tabmove 3<cr>", "Tab management: Move tab to position 3")
keymap("<leader>tm4", "<cmd>tabmove 4<cr>", "Tab management: Move tab to position 4")
keymap("<leader>tm5", "<cmd>tabmove 5<cr>", "Tab management: Move tab to position 5")

-- Move line: JK
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")
--
-- PLUGIN KEYMAPS --
--
-- Oil: -
keymap("-", "<CMD>Oil --float<CR>", "Oil: Open Oil / Open parent directory")

-- Angular: Leader->n...
keymap("<leader>nt", ng.goto_template_for_component, "Ng: Go to template file")
keymap("<leader>nc", ng.goto_component_with_template_file, "Ng: Go to component file")
keymap("<leader>nT", ng.get_template_tcb, "Ng: Get template typecheck block")

-- Git: Leader->g...
keymap("<leader>gk", "<cmd>DiffviewOpen<cr>", "Diffview: Open diffview")
keymap("<leader>gj", "<cmd>DiffviewClose<cr>", "Diffview: Close diffview")
keymap("<leader>gb", "<cmd>Gitsigns blame<cr>", "Gitsigns: Show gitblame")

-- Actions: Leader->a...
keymap("<leader>aa", actions.code_actions, "Diagnostic: Show actions")
keymap("<leader>aj", "<cmd>lua vim.diagnostic.goto_next()<cr>l", "Diagnostic: Go to next")
keymap("<leader>ak", "<cmd>lua vim.diagnostic.goto_prev()<cr>l", "Diagnostic: Go to previous")

-- Telescope: Leader->f...
keymap("<leader>ff", builtin.find_files, "Telescope: Find files")
keymap("<leader>fg", builtin.live_grep, "Telescope: Live grep")
keymap("<leader>fb", builtin.buffers, "Telescope: Buffers")
keymap("<leader>fh", builtin.help_tags, "Telescope: Help tags")
keymap("<leader>fv", builtin.git_status, "Telescope: Git status")
keymap("<leader>fr", builtin.lsp_references, "Telescope: Function references")
keymap("gr", builtin.lsp_references, "Telescope: Function references")
keymap("<leader>fk", builtin.keymaps, "Telescope: Nvim keymaps")
keymap("<leader>fs", builtin.grep_string, "Telescope: Selected word")
