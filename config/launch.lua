local platform = require('utils.platform')()

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  options.default_prog = { 'ssh', 'xxx@xxx' }
  options.launch_menu = {
    { label = 'PowerShell Core',    args = { 'powershell' } },
    { label = 'PowerShell Desktop', args = { 'powershell' } },
    { label = 'Command Prompt',     args = { 'cmd' } },
    { label = 'Nushell',            args = { 'nu' } },
    {
      label = 'Git Bash',
      args = { 'C:\\Users\\kevin\\scoop\\apps\\git\\current\\bin\\bash.exe' },
    },
    {
      label = 'Ubuntu',
      args = { 'ssh', 'xxx@xxx' },
    },
  }
elseif platform.is_mac then
  options.default_prog = { '/opt/homebrew/bin/fish' }
  options.launch_menu = {
    { label = 'Bash',    args = { 'bash' } },
    { label = 'Fish',    args = { '/opt/homebrew/bin/fish' } },
    { label = 'Nushell', args = { '/opt/homebrew/bin/nu' } },
    { label = 'Zsh',     args = { 'zsh' } },
  }
elseif platform.is_linux then
  options.default_prog = { 'fish' }
  options.launch_menu = {
    { label = 'Bash', args = { 'bash' } },
    { label = 'Fish', args = { 'fish' } },
    { label = 'Zsh',  args = { 'zsh' } },
  }
end

return options
