local M = require("lualine.component"):extend()

M.init = function(self, options)
  M.super.init(self, options)
  M.autocmd()
end

M.macro_recording = function()
  local recording_register = vim.fn.reg_recording()

  if recording_register == "" then
    return ""
  else
    return "Recording @" .. recording_register
  end
end

M.autocmd = function()
  vim.api.nvim_create_autocmd("RecordingEnter", { callback = M.refresh })
  vim.api.nvim_create_autocmd("RecordingLeave", {
    callback = function()
      local timer = vim.loop.new_timer()
      timer:start(50, 0, vim.schedule_wrap(M.refresh))
    end
  })
end

M.refresh = function()
  require("lualine").refresh({
    place = { "statusline" }
  })
end

M.update_status = function(self)
  return self.macro_recording()
end

return M
