set background=dark
colorscheme night-owl

function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction

augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source afile | PackerSync
augroup END

map <unique> ,w  /[#&!]<CR>
source ./js.js

" TODO: fix below
" autocmd BufWritePost plugins.lua source <afile> | PackerSync

echo "asdf"
eval "echo 'asdf'"

if 1 | echo "true"  | endif
if 0 | echo "false" | endif

if 1 | endif      "=> 1 (true)
if 0 | endif      "=> 0 (false)
if "1" | endif    "=> 1 (true)
if "456" | endif  "=> 1 (true)
if "xfz" | endif  "=> 0 (false)
