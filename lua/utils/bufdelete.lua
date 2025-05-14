local M = {}

---@param buf?   integer  -- номер буфера (по‑умолчанию текущий)
---@param force? boolean  -- true = удалять даже modified
M.bufdelete = function(buf, force)
	buf = buf or vim.api.nvim_get_current_buf()

	-- 1. Обработка модифицированных буферов
	if vim.bo[buf].modified and not force then
		local choice = vim.fn.confirm("Буфер изменён – сохранить?", "&Yes\n&No\n&Cancel", 1)
		if choice <= 0 or choice == 3 then
			return
		end -- Cancel/ESC
		if choice == 1 then
			vim.cmd("write")
		end -- Yes → :write
	end

	-- 2. Для каждого окна, где открыт buf, подставляем другой буфер
	for _, win in ipairs(vim.fn.win_findbuf(buf)) do
		local repl = vim.fn.bufnr("#") -- «предыдущий» буфер
		if repl == -1 or not vim.api.nvim_buf_is_valid(repl) or repl == buf then
			vim.cmd("enew") -- создаём пустой [No Name]
			repl = vim.api.nvim_get_current_buf()
		end
		vim.api.nvim_win_set_buf(win, repl)
	end

	-- 3. Удаляем буфер
	vim.api.nvim_buf_delete(buf, { force = force })
end

return M
