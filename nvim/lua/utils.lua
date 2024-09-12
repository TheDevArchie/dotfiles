-- https://nanotipsforvim.prose.sh/using-pcall-to-make-your-config-more-stable
local H = {}

H.safe_require = function(module)
    local success, err_message = pcall(require, module)
    if not success then
	local msg = ('Error hit loading %q: %s'):format(module, err_message)
	vim.defer_fn(function()
		vim.notify(msg, vim.log.levels.ERROR)
		end, 1000)
	end
end

return H


