-- lazy.nvim
return {
    {
        "antonk52/markdowny.nvim",
        enabled = false,
        config = function()
            require('markdowny').setup()
        end
    },
    {
        'quarto-dev/quarto-nvim',
        sources = {name = 'otter'},
    },{
        'jmbuhr/otter.nvim',
    }
}
