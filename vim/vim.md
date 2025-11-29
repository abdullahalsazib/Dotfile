```markdown
# Vim — Setup and Install Plugins

Prerequisites
- Vim must be installed.
- curl or wget should be available to download the installer.

1. Install Vim-Plug (required for managing plugins)

Run (using curl):

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Or, if you prefer wget:

    wget -O ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

This installs the plugin manager referenced in your .vimrc.

2. (Optional) Ensure your .vimrc references vim-plug

A minimal example in your ~/.vimrc:

    call plug#begin('~/.vim/plugged')

    " Examples of plugins you might add:
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'mbbill/undotree'
    Plug 'sheerun/vim-polyglot'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-commentary'
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'

    call plug#end()

3. Open Vim

    vim

4. Install all plugins (interactive)

Inside Vim, run:

    :PlugInstall

Wait until the installation completes and watch the messages at the bottom of the screen.

4b. Install plugins non-interactively (from the shell)

You can also install plugins without opening the interactive UI:

    vim +PlugInstall +qall

5. Reload your .vimrc (optional)

Inside Vim, run:

    :source ~/.vimrc

Or simply restart Vim.

6. Updating and removing plugins

- Update all plugins inside Vim:

    :PlugUpdate

- Remove unused plugins (after removing the Plug line from .vimrc):

    :PlugClean

- To update vim-plug itself, run:

    :PlugUpgrade

Notes
- If you see errors during plugin installation, read the error messages — they often indicate missing system dependencies or build steps (for example, fzf may require additional steps depending on the platform).
- If you use Neovim, vim-plug should be installed to ~/.local/share/nvim/site/autoload/plug.vim and your init.vim should be configured similarly.
```
