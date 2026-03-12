return {
   {
      'nvim-telescope/telescope.nvim', version = '*',
      dependencies = {
         'nvim-lua/plenary.nvim',
         { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      },
      config = function()
         local telescope = require('telescope')
         local builtin = require('telescope.builtin')

         telescope.setup({
            pickers = {
               man_pages = {
                  sections = { "ALL" },
               }
            }
         })

         vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
         vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
         vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
         vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
         vim.keymap.set('n', '<leader>fm', builtin.man_pages, { desc = 'Telescope man pages' })
      end
   }
}
