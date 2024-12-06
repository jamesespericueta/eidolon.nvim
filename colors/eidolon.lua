vim.opt.background = 'dark'
vim.g.colors_name = 'eidolon'

package.loaded['lush_theme.eidolon'] = nil
require('lush')(require('lush_theme.eidolon'))
