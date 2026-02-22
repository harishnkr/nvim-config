# Neovim Config

Personal Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Stack

| Category | Plugin |
|---|---|
| Plugin Manager | lazy.nvim |
| Colorscheme | tokyonight (moon) |
| LSP | nvim-lspconfig + mason |
| Completion | blink.cmp |
| Fuzzy Finder | Telescope |
| Syntax | nvim-treesitter |
| Debugging | nvim-dap + nvim-dap-ui + nvim-dap-python |
| Git | gitsigns + vim-fugitive + lazygit |
| File Explorer | netrw + netrw.nvim |
| Bufferline | bufferline.nvim |
| Dashboard | alpha-nvim |
| Diagnostics | trouble.nvim |
| Tmux Integration | vim-tmux-navigator |

---

## Keymaps

> `<leader>` is `Space`

### Navigation

| Key | Action |
|---|---|
| `<C-h/j/k/l>` | Move between splits / tmux panes |
| `<Tab>` | Next buffer |
| `<S-Tab>` | Previous buffer |
| `<leader>n` | Toggle Netrw file explorer |
| `k / j` | Move by visual line (respects word wrap) |

### LSP

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gI` | Go to implementation |
| `gr` | Go to references (Telescope) |
| `K` | Hover documentation |
| `<C-k>` | Signature help (normal + insert) |
| `<leader>rn` | Rename symbol (undo with `u`) |
| `<leader>ca` | Code action |
| `<leader>f` | Format buffer |
| `<leader>D` | Type definition |
| `<leader>ss` | Document symbols |
| `<leader>ws` | Workspace symbols |
| `<leader>wa` | Add workspace folder |
| `<leader>wr` | Remove workspace folder |
| `<leader>wl` | List workspace folders |

### Diagnostics

| Key | Action |
|---|---|
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>e` | Floating diagnostic message |
| `<leader>q` | Diagnostics loclist |
| `<leader>xx` | Trouble — all diagnostics |
| `<leader>xX` | Trouble — buffer diagnostics |
| `<leader>xL` | Trouble — location list |
| `<leader>xQ` | Trouble — quickfix list |
| `<leader>cs` | Trouble — symbols panel |
| `<leader>cl` | Trouble — LSP panel |

### Telescope

| Key | Action |
|---|---|
| `<leader>sf` | Find files |
| `<leader>sg` | Live grep |
| `<leader>sw` | Grep word under cursor |
| `<leader>sh` | Search help tags |
| `<leader>sd` | Search diagnostics |
| `<leader>sk` | Search keymaps |
| `<leader>/` | Recent files |
| `<leader><space>` | Open buffers |
| `<leader>?` | Fuzzy search current buffer |

**Inside Telescope:**

| Key | Action |
|---|---|
| `<C-j/k>` | Navigate results |
| `<CR>` | Open |
| `<C-v>` | Open in vertical split |
| `<C-x>` | Open in horizontal split |
| `<C-t>` | Open in new tab |

### Treesitter Text Objects

| Key | Action |
|---|---|
| `af / if` | Around / inside function |
| `ac / ic` | Around / inside class |
| `aa / ia` | Around / inside parameter |
| `]m / [m` | Next / previous function start |
| `]M / [M` | Next / previous function end |
| `]] / [[` | Next / previous class start |
| `<leader>a` | Swap parameter with next |
| `<leader>A` | Swap parameter with previous |
| `<C-space>` | Expand selection incrementally |
| `<M-space>` | Shrink selection |

### Git

| Key | Action |
|---|---|
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `<leader>gp` | Preview hunk |
| `:Git` | Fugitive git interface |
| `:LazyGit` | LazyGit TUI |

### Debugging (DAP)

| Key | Action |
|---|---|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue / start debugger |
| `<leader>do` | Step over |
| `<leader>di` | Step into |
| `<leader>dt` | Terminate |
| `<leader>du` | Toggle DAP UI |
| `<leader>dpr` | Run Python test method under cursor |

### Misc

| Key | Action |
|---|---|
| `<M-a>` | Select all |
| `gcc` | Toggle comment (line) |
| `gc` | Toggle comment (visual block) |
| `q` | Close help / quickfix / loclist windows |

---

## LSP Servers

Managed via Mason (`:Mason` to open, `:MasonInstall <server>` to add more).

| Server | Language |
|---|---|
| `basedpyright` | Python |
| `lua_ls` | Lua (with Neovim globals) |
| `ltex` | LaTeX, Markdown, Org (grammar + spellcheck, en-GB) |

---

## Python Workflow

### General

- Always activate your virtualenv before opening Neovim so `basedpyright` picks up installed packages
- Use `<leader>xx` to view all type errors and diagnostics via Trouble
- Use `<leader>f` to format with the configured formatter

### Debugging

1. Set a breakpoint with `<leader>db`
2. Start the debugger with `<leader>dc` — DAP UI opens automatically
3. Step through code with `<leader>do` (over) and `<leader>di` (into)
4. Terminate with `<leader>dt` — DAP UI closes automatically

### Running Tests

`<leader>dpr` runs the test method under the cursor via debugpy. Requirements:
- File must be named `test_*.py` or `*_test.py`
- Function must start with `test_`
- Cursor must be **inside** the function body, not on the `def` line

---

## Completion (blink.cmp)

Completion triggers automatically in insert mode.

| Key | Action |
|---|---|
| `<C-space>` | Trigger manually |
| `<C-n> / <C-p>` | Navigate items |
| `<CR>` | Confirm |
| `<C-e>` | Close |
| `<Tab> / <S-Tab>` | Next / previous item or jump snippet |

---

## Tips

- Reopening a file returns cursor to where you left off automatically
- Yanking briefly highlights the yanked region so you can confirm what was copied
- `which-key` shows pending keybind hints — hold `<leader>` and wait
- `:Format` command available in any LSP-attached buffer
- Treesitter parsers installed via pacman/AUR (`tree-sitter-*`)
- `u` undoes LSP renames in the current buffer; check other affected files manually
