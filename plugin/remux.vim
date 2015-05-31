" remux
"  Repeat last command in the next tmux pane.
"  Open a tmux pane and type your test command (eg, `npm test`), then use
"  <C-s> to save and repeat.

if exists('g:remux_loaded') || &cp | finish | endif
let g:remux_loaded = 1

if ! exists('g:remux_key')
  let g:remux_key = '<C-s>'
endif

command! Remux call remux#remux()
function! remux#remux()
  w
  silent! exec "!tmux select-pane -l && tmux send up enter && tmux select-pane -l"
  redraw!
  return ''
endfunction

inoremap <silent> <SID>(remux)  <C-R>=remux#remux()<CR>
inoremap <script> <Plug>(remux) <SID>(remux)

exe 'imap    '.g:remux_key.' <Plug>(remux)'
exe 'noremap '.g:remux_key.' :Remux<CR>'
