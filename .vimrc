runtime bundle/vim-pathogen/autoload/pathogen.vim

" Pathogen load
filetype off

"let g:pathogen_disabled = ['nerdtree']
"let g:pathogen_disabled = ['minibufexpl']
"let g:pathogen_disabled = ['commandt']
"let g:pathogen_disabled = ['gundo']
"let g:pathogen_disabled = ['ack']
"let g:pathogen_disabled = ['pytest']
"let g:pathogen_disabled = ['pythonmode']
"let g:pathogen_disabled = ['vim-markdown']
"let g:pathogen_disabled = ['vim-pencil']

call pathogen#infect()
call pathogen#helptags()

" Followed tutorial on Mathieu Savy's blog:
" http://www.mathieusavy.com/year/05/21/setting-up-vim-for-python-and-django

syntax on "Enable the syntax coloration
set pastetoggle=<F3> "Toggle PASTE mode with F3 key
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
set tabstop=4
set shiftwidth=4
set expandtab
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

" Python-mode
"
" python-mode is a plugin providing all the features needed to code in python.
" At first, I installed it because I couldn’t find a good auto-completion
" plugin for python, but slowly I noticed that it could replace all others
" plugins I was using to code in python.
"
" With python-mode, VIM is now able to:
"
" Show your syntax errors and unused imports: Every time the code is saved,
" pylint is called and check syntax errors and unused imports. It is also
" possible to run others linter like pyflake. By pressing Ctrl+c+ro, rope
" automatically organizes imports.
"
" Complete automatically your code: Press Ctrl+Space to display completions.
" Thanks to rope-vim, python-mode can browse in the project and is able to
" display any functions and attributes of any external classes. It is the most
" accurate python auto-completion I have seen so far. \b set a breakpoint.
"
" Refactor your code: Pressing Ctrl+c+rr refactors any class, function or
" method. The changes affects all files of your project.
"
" Quickly display the Pydoc: Pressing K when the cursor is on a word displays
" its python documentation.
"
" Run your script without leaving VIM: Press \r to launch scripts on a split
" window.
"
" Navigate quickly through your code: Python-mode includes many commands to
" navigate through python source code, for instance, by pressing ]] the cursor
" jump to the next function or method. See the documention of rope-vim for the
" complete motions list. Press Ctrl+c+g to jump to the definition of any class
" or function.
"
" And of course, plenty other amazing stuffs that can be discovered by reading
" the documentation of this plugin.

" Python-mode
" settings from:
" http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/
"
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
"let g:pymode_rope = 1
" Re-disabled rope b/c still annoying
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0


"
" vim-markdown
"

" ## Options

" ### Enable / Disable Folding
" Disable the vim-markdown specific folding configuration:
let g:vim_markdown_folding_disabled = 1

" To enable/disable folding use Vim's standard folding configuration.
"set foldenable
"set [no]foldenable

" ### Disable Default Key Mappings
" Disable default key mappings:
"let g:vim_markdown_no_default_key_mappings = 1

" You can also map them by yourself with `<Plug>` mappings.

" ### Syntax extensions
" The following options control which syntax extensions will be turned on.
" They are off by default.

" #### LaTeX math
" Used as `$x^2$`, `$$x^2$$`, escapable as `\$x\$` and `\$\$x\$\$`.
"let g:vim_markdown_math = 1

" #### YAML frontmatter
" Highlight YAML frontmatter as used by Jekyll:
"let g:vim_markdown_frontmatter = 1

" ## Mappings
" The following work on normal and visual modes:
" -   `gx`: open the link under the cursor in the same browser as the standard `gx` command. `<Plug>Markdown_OpenUrlUnderCursor`
"      The standard `gx` is extended by allowing you to put your cursor anywhere inside a link.
"      For example, all the following cursor positions will work:
"   
"          [Example](http://example.com)
"          ^  ^    ^^   ^       ^
"          1  2    34   5       6
"   
"          <http://example.com>
"          ^  ^               ^
"          1  2               3
"
"    Known limitation: does not work for links that span multiple lines.
" -   `]]`: go to next header. `<Plug>Markdown_MoveToNextHeader`
" -   `[[`: go to previous header. Contrast with `]c`. `<Plug>Markdown_MoveToPreviousHeader`
" -   `][`: go to next sibling header if any. `<Plug>Markdown_MoveToNextSiblingHeader`
" -   `[]`: go to previous sibling header if any. `<Plug>Markdown_MoveToPreviousSiblingHeader`
" -   `]c`: go to Current header. `<Plug>Markdown_MoveToCurHeader`
" -   `]u`: go to parent header (Up). `<Plug>Markdown_MoveToParentHeader`

" This plugin follows the recommended Vim plugin mapping interface, so to change the map `]u` to `asdf`, add to your `.vimrc`:
"    map asdf <Plug>Markdown_MoveToParentHeader

" To disable a map use:
"    map <Plug> <Plug>Markdown_MoveToParentHeader

" ## Commands
" -   `:HeaderDecrease`:
"      Decrease level of all headers in buffer: `h2` to `h1`, `h3` to `h2`, etc.
"      If range is given, only operate in the range.
"      If an `h1` would be decreased, abort.
"      For simplicity of implementation, Setex headers are converted to Atx.

" -   `:HeaderIncrease`: Analogous to `:HeaderDecrease`, but increase levels instead.

" -   `:SetexToAtx`:
"      Convert all Setex style headers in buffer to Atx.
"      If a range is given, e.g. hit `:` from visual mode, only operate on the range.

" -   `:TableFormat`: Format the table under the cursor [like this](http://www.cirosantilli.com/markdown-styleguide/#tables).
"      Requires [Tabular](https://github.com/godlygeek/tabular).
"      The input table *must* already have a separator line as the second line of the table.
"      That line only needs to contain the correct pipes `|`, nothing else is required.

" -   `:Toc`: create a quickfix vertical window navigable table of contents with the headers.
"      Hit `<Enter>` on a line to jump to the corresponding line of the markdown file.

" -   `:Toch`: Same as `:Toc` but in an horizontal window.
" -   `:Toct`: Same as `:Toc` but in a new tab.
" -   `:Tocv`: Same as `:Toc` for symmetry with `:Toch` and `Tocv`.
