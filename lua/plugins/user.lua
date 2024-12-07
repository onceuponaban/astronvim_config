-- Misc setting changes

---@type LazySpec
return {
  -- Automatically set the working directory on launch through the Project Rooter
  -- (helpful when you run nvim to edit something from an unrelated directory)
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      set_working_directory = {
        {
          event = "VimEnter",
          callback = function() vim.cmd "AstroRoot" end,
        },
      },
    },
  },
}
