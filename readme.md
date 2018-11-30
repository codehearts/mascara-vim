# mascara.vim

Pump up the volume on your typesetting ✨

Mascara applies persistent italics to your colorschemes, and works great with fonts like [Operator Mono](https://www.typography.com/fonts/operator/styles/operatormonoscreensmart) or [Dank Mono](https://dank.sh)!

## Installation

- [pathogen](https://github.com/tpope/vim-pathogen): run `git clone git://github.com/codehearts/mascara-vim.git ~/.vim/bundle/mascara-vim`
- [vim-plug](https://github.com/junegunn/vim-plug): add `Plug 'codehearts/mascara-vim'` to `.vimrc` and run `:PlugInstall`
- [vundle](https://github.com/VundleVim/Vundle.vim): add `Plugin 'codehearts/mascara-vim'` to `.vimrc` and run `:PluginInstall`
- [dein](https://github.com/Shougo/dein.vim): add `call dein#add('codehearts/mascara-vim')` to `.vimrc`
- manually: copy  `plugin/*` and `doc/*` into `~/.vim/plugin/` and `~/.vim/doc/`

## Usage

By default, Mascara applies italics after `colorscheme` is called

To apply Mascara manually

    :MascaraApply

## Configuration

### `g:mascara_italic = [ ... ]`

Lists the highlight groups to italicize. The following highlight groups are the defaults:

    Comment, Conditional, Identifier, Repeat, Statement, Type, htmlItalic, markdownItalic

You can italicize whichever groups you want by setting `g:mascara_italic` in your `.vimrc`:

    let g:mascara_italic = [ 'Comment', 'ErrorMsg', 'LineNr' ] " Comments, error messages, line numbers

See `:help highlight-groups` for available groups

### `g:mascara_apply_at_startup = 1`

Applies Mascara when the plugin is loaded. Set to `0` in your `.vimrc` if you'd like to apply Mascara manually

    let g:mascara_apply_at_startup = 0

## FAQ

### Why are highlight groups outside `g:mascara_italic` still italic?

Mascara doesn't remove italics from your colorschemes, so some themes may display italics on groups outside your `g:mascara_italic`. Try using [vim-remove-decoration](https://github.com/rbtnn/vim-remove-decoration) to remove all styling and then reapply Mascara with `:MascaraApply`

## Future Ideas

- [ ] Add `doc/`
- [ ] Screenshot
- [ ] Flag for appending to the default groups
- [ ] Support cterm and term
- [ ] Support bold, underline, etc
- [ ] Add `:MascaraWipe` to remove Mascara formatting
- [ ] Flag to remove all italics not set by mascara?
