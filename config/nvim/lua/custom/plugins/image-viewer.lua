-- Show images and gifs
return {
  "samodostal/image.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "m00qek/baleia.nvim",
  },
  config = function()
    require('image').setup {
      render = {
        min_padding = 2,
        show_label = true,
        use_dither = true,
        show_image_dimensions = true,
        foreground_color = true,
        background_color = true
      },
      events = {
        update_on_nvim_resize = true,
      },
    }
  end,
}
