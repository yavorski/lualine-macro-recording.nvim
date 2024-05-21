# Lualine Macro Recording

Display macro recording in [lualine](https://github.com/nvim-lualine/lualine.nvim)

## Installation

With [lazy](https://github.com/folke/lazy.nvim)

Add `yavorski/lualine-macro-recording` as dependecy to `lualine` plugin definition

```lua
{
  "nvim-lualine/lualine.nvim",
  dependencies = {
    -- display macro recording
    { "yavorski/lualine-macro-recording.nvim" }
  },
  opts = {
    sections = {
      -- add to section of your choice
      lualine_c = { "macro_recording", "%S" },
    },
  }
}
```

## Screenshot

![lualine-macro-recording-plugin](https://gcdnb.pbrd.co/images/W1pixLjHWA5h.png?o=1)
