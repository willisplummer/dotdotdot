require('mini.comment').setup {
    options = {
        custom_commentstring = function()
            return require('ts_context_commentstring.internal').calculate_commentstring() or vim.bo.commentstring
        end,
    }
}
-- require('mini.hues').setup({ background = '#002734', foreground = '#c0c8cc', accent = 'blue' })
