let g:mkdp_browser = 'firefox'

function! g:Open_preview_in_firefox_new_window(url)
    silent exe 'silent !firefox ' . a:url . ' --new-window'
endfunction

let g:mkdp_browser = 'g:Open_preview_in_firefox_new_window'
