-- vim:foldmethod=marker

-- Python
local dap_python = require('dap-python')
dap_python.setup(
  '~/miniconda3/bin/python',
  {
    pythonPath = function()
      -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
      local venv = os.getenv('CONDA_PREFIX')
      if venv ~= nil then
        return venv .. '/bin/python'
      else
        return '/usr/bin/python'
      end
    end,
  }
)
dap_python.test_runner = 'pytest'

-- dap.adapters.python = {
--   type = 'executable';
--   command = os.getenv('HOME') .. '/miniconda3/bin/python';
--   args = { '-m', 'debugpy.adapter' };
-- }

-- dap.configurations.python = {
--   {
--     type = 'python';
--     request = 'launch';
--     name = 'Launch file';

--     -- Options for debugpy
--     program = '${file}'; -- This configuration will launch the current file if used.
--   },
-- }
