" auto-install vim-plug
if empty(glob('~/.config/.nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim/plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
  " Themes
  Plug 'joshdick/onedark.vim'  
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}  
  " Treesitter
  "Plug 'nvim-treesitter/nvim-treesitter', { 'commit': '3c07232' }
  " Nerd tree
  Plug 'preservim/nerdtree'
call plug#end()
