local M = {}

M.config = {
    undercurl = true,
    transparent_mode = false,
}

function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.g.colors_name = "rosse"

    -- 1. Cargar la paleta (aquí irían tus colores HEX)
    local colors = require("rosse.palette") 
    
    -- 2. Aplicar transparencia si M.config.transparent_mode es true
    if M.config.transparent_mode then
        colors.bg0 = "NONE"
    end

    -- 3. Cargar y aplicar los grupos de resaltado (highlights)
    local groups = require("rosse.groups").setup(colors, M.config)
    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
