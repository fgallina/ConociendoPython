CASK ?= cask

all: html pdf

html:
	$(CASK) emacs -q --batch python.org -l ox-html -f 'org-html-export-to-html'

pdf:
	$(CASK) emacs -q --batch python.org -l ox-beamer -f 'org-beamer-export-to-pdf'

present:
	$(CASK) emacs -q python.org -l org-present -f 'org-display-inline-images' -f 'org-present'

clean:
	rm -rf *~ python.pdf python.html python.tex python.log

.PHONY: all clean html pdf present
