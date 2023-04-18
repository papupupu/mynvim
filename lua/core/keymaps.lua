vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
-- 失效 以后配置 此处是切换上面buffer快捷键
-- keymap.set("n", "<C-H>", ":bnext<CR>")
-- keymap.set("n", "<C-L>", ":bprevious<CR>")
keymap.set("n", "<C-n>", ":bnext<CR>")
keymap.set("n", " <leader>b", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- markdown_preview
keymap.set("n", "<leader>md", ":MarkdownPreview")

-- --leetcode
-- keymap.set("n", "<leader>ll", ":LeetCodeList<cr>")
-- keymap.set("n", "<leader>lt", ":LeetCodeTest<cr>")
-- keymap.set("n", "<leader>ls", ":LeetCodeSubmit<cr>")
-- keymap.set("n", "<leader>li", ":LeetCodeSignIn<cr>")
