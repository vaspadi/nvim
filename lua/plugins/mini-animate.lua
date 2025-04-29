return {
  "echasnovski/mini.animate",
  config = function ()
    local animate = require('mini.animate')
    animate.setup({
      scroll = { enable = true },
      cursor = {
        enable = true,
        timing = animate.gen_timing.cubic({
          duration = 50,
          unit = 'total'
        })
      },
    })
  end
}
