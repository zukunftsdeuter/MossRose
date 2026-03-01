# 🌹 Rosse.nvim

**Rosse** es un esquema de colores para Neovim moderno, elegante y oscuro, diseñado para ser fácil a la vista mientras mantiene un alto contraste para la programación.



## 🚀 Características
* Soporte nativo para **LSP**, **Treesitter** y **Telescope**.
* Modo transparente opcional.
* Altamente personalizable mediante configuraciones.
* Optimizado para sesiones de codificación largas.

## 📦 Instalación

Usando [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "Zukunftsdeuter/rosse",
  lazy = false,
  priority = 1000,
  config = function()
    require("rosse").setup({
      transparent_mode = true, -- Activa el modo transparente
    })
    vim.cmd([[colorscheme rosse]])
  end,
}
