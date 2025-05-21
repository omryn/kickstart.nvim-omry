return {
  'nvimtools/none-ls.nvim', -- or "jose-elias-alvarez/null-ls.nvim" for older setups
  opts = function(_, opts)
    local nls = require 'null-ls'
    opts.sources = opts.sources or {}

    -- Use uv-installed formatters if available
    local function get_uv_bin(bin_name)
      -- Try to find in uv's venv first
      local uv_venv = vim.fn.trim(vim.fn.system 'uv venv --path')
      if uv_venv ~= '' then
        local bin_path = uv_venv .. '/bin/' .. bin_name
        if vim.fn.executable(bin_path) == 1 then
          return bin_path
        end
      end
      -- Fallback to regular path
      return bin_name
    end

    table.insert(
      opts.sources,
      nls.builtins.formatting.black.with {
        command = get_uv_bin 'black',
      }
    )
    table.insert(
      opts.sources,
      nls.builtins.formatting.isort.with {
        command = get_uv_bin 'isort',
      }
    )
  end,
}
