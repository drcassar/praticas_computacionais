pci = PC1.org
pci_folder = PC1

pci_html:
	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-html-export-to-html nil nil))"

	@cd $(pci_folder); find . -name '*.html' -exec sed -i 's/Footnotes/Notas de rodapé/' {} \;
	@cd $(pci_folder); find . -name '*.html' -exec sed -i 's/Table of Contents/Índice/' {} \;
