" my filetype file
if exists("did_load_filetypes")
	finish
endif

augroup filetypedetect
	" Some LaTeX types
	au! BufRead,BufNewFile *.cls setfiletype tex
	au! BufRead,BufNewFile *.lco setfiletype tex

	" The ufl files from dolfin are python.
	au! BufRead,BufNewFile *.ufl setfiletype python

	"Set filetype for *.asy-files
	au! BufNewFile,BufRead *.asy setfiletype asy

	"Set filetype for vimperator config
	au! BufNewFile,BufRead {.,}vimperatorrc setfiletype vimperator

	"Set filetype for wikipages (on euler), when opened from vimperator
	au! BufRead /tmp/vimperator-euler.mathematik.tu-chemnitz.de*.tmp setfiletype wikipedia
augroup END
