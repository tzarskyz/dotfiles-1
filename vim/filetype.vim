" markdown filetype file
if exists("did\_load\_filetypes")
    finish
endif
augroup json
    au! BufRead,BufNewFile *.json setfiletype json
augroup END
augroup mustache
    au! BufNewFile,BufRead *.mustache  setfiletype mustache
augroup END
augroup html
    au! BufRead,BufNewFile *.html let g:closetag_html_style=1
    au! BufRead,BufNewFile *.html source $HOME/.vim/ftplugin/closetag.vim
augroup END
