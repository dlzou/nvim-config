-- vim:foldmethod=marker

-- Python
-- local dap_python = require('dap-python')
-- dap_python.setup(
--   '~/miniconda3/bin/python',
--   {
--     pythonPath = function()
--       -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
--       local venv = os.getenv('CONDA_PREFIX')
--       if venv ~= nil then
--         return venv .. '/bin/python'
--       else
--         return '/usr/bin/python'
--       end
--     end,
--   }
-- )
-- dap_python.test_runner = 'pytest'

local dap = require('dap')

local is_windows = function()
  return vim.loop.os_uname().sysname:find("Windows", 1, true) and true
end

local get_base_path = function()
  local env_path = os.getenv('CONDA_PREFIX')
  if env_path == nil then
    return '/usr/bin/python3'
  end
  local i, j = string.find(env_path, '/env/')
  if i == nil then
    return env_path .. '/bin/python'
  end
  return string.sub(env_path, 1, i - 1) .. '/bin/python'
end

local get_python_path = function()
  local venv_path = os.getenv('VIRTUAL_ENV') or os.getenv('CONDA_PREFIX')
  if venv_path then
    if is_windows() then
      return venv_path .. '\\Scripts\\python.exe'
    end
    return venv_path .. '/bin/python'
  end
  return nil
end

dap.adapters.python = {
  type = 'executable',
  command = get_base_path(),
  args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = 'Launch file',

    -- Options for debugpy
    program = '${file}', -- This configuration will launch the current file if used.
    pythonPath = get_python_path(),
  },
}
