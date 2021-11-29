pci = PC1.org

id_intro := be365bdb-8e61-4ed3-89ae-397c7855cdeb
id_jupyter := 60b5365d-1c0c-4944-bb64-dcbb673a2e4f
id_operadores := af8757f4-e890-4b3d-96ea-a9c2c73c39e5

pci_html:
	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_intro)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_jupyter)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_operadores)\") \
					(org-html-export-to-html nil t))"
