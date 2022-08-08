local fn = vim.fn
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local DetectGoTemplate = augroup("hugo-nvim-DetectGoTemplate", { clear = true })

autocmd({ "BufNewFile", "BufRead" }, {
    group = DetectGoTemplate,
    pattern = "*.html",
    callback = function()
        local curdir = fn.getcwd()

        -- verify by checking if the current directory has the archetypes folder
        local is_hugo = fn.empty(fn.glob(curdir .. "/archetypes")) == 0

        if is_hugo then
            vim.opt_local.filetype = "gohtmltmpl"
        end
    end
})
