" SETTINGS
" Pymode (Linting, Docs, Virtualenv, Refactoring, etc.

" Features to turn off
let g:pymode_folding = 0  " don't enable autofolding
let g:pymode_trim_whitespaces = 0  " Do not autoremove unused whitespaces
let g:pymode_run = 0
let g:pymode_indent = 0
let g:pymode_rope_completion = 0

" Key bindings to turn off
let g:pymode_run_bind = ''
let g:pymode_rope_completion_bind = ''
let g:pymode_rope_show_doc_bind = ''
let g:pymode_rope_goto_definition_bind = ''
let g:pymode_doc_key = ''

" Rope
let g:pymode_rope = 1
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_autoimport_import_after_complete = 0
let g:pymode_rope_goto_definition_cmd = 'e'

" Documentation
let g:pymode_doc = 1

" Breakkpoints
let g:pymode_breakpoint = 1

" Virtualenv
let g:pymode_virtualenv = 1 " Auto fix vim python paths if virtualenv enabled
 
" Linting
let g:pymode_lint = 1
let g:pymode_lint_unmodified = 0
let g:pymode_lint_on_write = 0  " Disable pylint checking every save
let g:pymode_lint_cwindow = 0  " do not show linter window
let g:pymode_lint_signs = 1
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pylint', 'pep8', 'pyflakes', 'pep257']

let g:pymode_options_max_line_length = 120
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_lint_options_pylint = {'max-line-length': g:pymode_options_max_line_length}

let g:pymode_lint_ignore = "C0110 Exported"  " ignore pep257 missing docstring warning

" Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_slow_sync = 0
let g:pymode_syntax_highlight_equal_operator = 0
let g:pymode_syntax_highlight_stars_operator = 0
let g:pymode_syntax_indent_errors = 0
let g:pymode_syntax_space_errors = 0
let g:pymode_syntax_print_as_function = 1
let g:pymode_syntax_highlight_self = 1
let g:pymode_syntax_builtin_objs = 1
let g:pymode_syntax_builtin_types = 1
let g:pymode_syntax_highlight_exceptions = 1
let g:pymode_syntax_docstrings = 1

" Vim-Jedi
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 1
let g:jedi#auto_close_doc = 1
let g:jedi#show_call_signatures = 1
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#completions_enabled = 1


""" KEYMAP

" PyMode
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
 
nmap <silent><Leader>l :PymodeLint<CR>

let g:pymode_breakpoint_bind = '<Leader>b'

nmap <silent><Leader>rp <Esc>:PymodeRopeRegenerate<CR>
let g:pymode_rope_rename_bind = '<Leader>rr'
let g:pymode_rope_rename_module_bind = '<Leader>r1r'
let g:pymode_rope_organize_imports_bind = '<Leader>ro'
let g:pymode_rope_autoimport_bind = '<Leader>ra'
let g:pymode_rope_extract_method_bind = '<Leader>rm'
let g:pymode_rope_extract_variable_bind = '<Leader>rl'

" Vim Jedi
let g:jedi#completions_command = '<C-Space>'
let g:jedi#goto_assignments_command = '<Leader>ja'
let g:jedi#goto_definitions_command = '<Leader>jd'
let g:jedi#usages_command = '<Leader>ju'
let g:jedi#documentation_command = 'K'
let g:jedi#rename_command = '<Leader>rv'

" Pytest
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
