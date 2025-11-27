return {
  {
    'Youchunmaru/skb.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim', -- We need telescope for the search features
      'nvim-lua/plenary.nvim',
    },
    opts = {
      skb_path = '~/knowledge_base',
      extension = 'md',
      git = {
        enabled = true,
        remote = false,
      },
    },
    -- Lazy load this plugin when any of these keys are pressed
    keys = {
      {
        '<leader>ns',
        function()
          require('skb').search_notes()
        end,
        desc = '[N]otes [S]earch (Grep)',
      },
      {
        '<leader>nf',
        function()
          require('skb').find_notes()
        end,
        desc = '[N]otes [F]ind File',
      },
      {
        '<leader>nn',
        function()
          require('skb').new_note()
        end,
        desc = '[N]ew [N]ote',
      },
      {
        '<leader>ng',
        function()
          require('skb').git_sync()
        end,
        desc = '[N]otes [G]it Sync',
      },
      -- NEW: View history for the specific file you are in
      {
        '<leader>nh',
        function()
          require('skb').note_history()
        end,
        desc = '[N]ote [H]istory (File)',
      },
      -- NEW: View global history (all files)
      {
        '<leader>nH',
        function()
          require('skb').search_history()
        end,
        desc = '[N]ote [H]istory (Global)',
      },
      -- NEW: View what you have changed right now (Git Status)
      {
        '<leader>nc',
        function()
          require('skb').note_changes()
        end,
        desc = '[N]ote [C]hanges (Status)',
      },
      {
        '<leader>nt',
        function()
          require('skb').search_todos()
        end,
        desc = '[N]ote [S]earch (TODO)',
      },
    },
  },
}
