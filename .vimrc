" Pathogen load
filetype off

"let g:pathogen_disabled = ['pythonmode', 'pytest']

call pathogen#infect()
call pathogen#helptags()

" Followed tutorial on Mathieu Savy's blog:
" http://www.mathieusavy.com/year/05/21/setting-up-vim-for-python-and-django

syntax on "Enable the syntax coloration
set pastetoggle=<F2> "Toggle PASTE mode with F2 key
set cursorline "Highlight current line
" for C-like
"set ts=2 sw=2
" for python
"set ts=4 sw=4
"set number "Show line number
set showcmd "Show the commands you are typing
"set ignorecase "Ignore the case when search a pattern
"set mouse=a "Allow you to use the mouse on your terminal
set smartcase "If a pattern includes a high case, the search become case sensitive
"set incsearch "Complete the search by pressing enter
set nocompatible "Avoid some weird behaviors
"filetype plugin indent on
"filetype on "Detect the type of file you are editing
"set visualbell "Disable warning sound and replace it with a visual bell

"Indent and fold options
filetype plugin indent on " must have both plugin and indent on for python-mode
"set foldmethod=indent
"set foldlevel=99
"set smartindent
"set tabstop=4
"set shiftwidth=4
"set expandtab
"
""Moving from one window to another with Ctrl + mov
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Press \s to save only if needed
"noremap <Leader>s :update<CR>
"
""Press \q to quit VIM
map <leader>q :q<cr>

"
" NerdTree
"
" NerdTree is a really plugin providing a nice file browser.
" I use it when I don't really know which file I'm looking for.
" To make it easier to use, add map <silent> <C-n><CR> to your .vimrc file so
" hitting Ctrl-n will display nerdtree.
map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeDirArrows = 0
"let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'

"
" MiniBufferExplorer
"
" It is now possible to navigate through buffers by hitting gn to reach the
" next buffer, gp for the previous and gd to close the current buffer. Note
" that you can reach a specific buffer by typing :b42 where 42 is the number of
" the buffer.
"
" Moving between different buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

"
" Command T
"
" Command T provides a really fast mechanism to open files. I use it to open
" any file that I need, and also to navigate through my buffers when I work on
" many of them at the same time.
"
" In VIM, hit \t and type some letters of a file name and then press enter
" to open it. \b do the same but only with the current buffers.

"
" Gundo
"
" Gundo allows to visualize undo/redo tree. Have you never lost your last
" modifications by making many undo button many times and being unable to redo
" because you modified something ? Gundo works with branchs and allows to
" restore code from any point. I mapped it to \g :map <leader>g :GundoToggle<CR>
map <leader>g :GundoToggle<CR>

"
" Ack
"
" Ack is an easy way to look for a pattern through a project. It can be seen
" as a VIM embedded version of Grep. Where:grep, :grepadd, :lgrep, and
" :lgrepadd, are replaced by :Ack, :AckAdd, :LAck, and :LAckAdd.
