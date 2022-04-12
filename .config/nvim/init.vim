let g:config_files = [
			\ 'globals.vim',
			\ 'options.vim',
			\ 'plugins.vim'
			\]

for s:fname in g:config_files
	execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor
