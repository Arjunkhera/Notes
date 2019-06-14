clean:
	find . -name "*.html" -type f -delete

convert:
	vim -c VimwikiAll2HTML -c q index.md
