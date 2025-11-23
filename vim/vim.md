2. Install Vim-Plug (required for your plugins)

Run:

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


This installs the plugin manager you referenced in .vimrc.

3. Open Vim
vim

4. Install all plugins

Inside Vim, run:

:PlugInstall


This will download:

nerdtree

fzf

fzf.vim

undotree

vim-polyglot

lightline

vim-commentary

gruvbox

vim-fugitive

Wait until installation completes.

5. Reload your .vimrc (optional)

Inside Vim:

:source ~/.vimrc
