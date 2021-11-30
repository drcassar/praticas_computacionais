pci = PC1.org
pci_folder = PC1

id_intro := be365bdb-8e61-4ed3-89ae-397c7855cdeb
id_jupyter := 60b5365d-1c0c-4944-bb64-dcbb673a2e4f
id_operadores := af8757f4-e890-4b3d-96ea-a9c2c73c39e5
id_listas := 979099a4-9da2-48d1-9d6a-308a97868f1c
id_laco := 25e5272b-ad01-463a-815a-7b4345a4b35a
id_funcoes := b20f8635-108a-49d4-9903-6a397dc4fed2
id_debug := a822fa0b-e43c-4dc6-99f4-0f4f8a2e97fc
id_dicionarios := 982992c4-400b-4d79-a738-e86116b14ebc
id_strings := 6feb275c-31de-49dd-87a1-d3576f4dbfc2
id_classes := 59343370-093c-4c7c-b549-9e102aed7b5b
id_bibpadrao := a5a1dec7-4ac1-4c97-a064-75b93b837a5c
id_pandas := 94937cb1-718d-4eee-a3be-611c4badeb4b
id_graficos := 5c9942b1-d397-4d59-9891-6f6bfee01809
id_git := 7ec34a02-1c92-4a3f-940a-955daab7050f
id_numpy := fc29118f-e0b5-4816-9034-4a83e7b520b4

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

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_listas)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_laco)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_funcoes)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_debug)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_dicionarios)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_strings)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_classes)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_bibpadrao)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_pandas)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_graficos)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_git)\") \
					(org-html-export-to-html nil t))"

	emacsclient -e "(progn (find-file \"$(pci)\") \
					(org-id-goto \"$(id_numpy)\") \
					(org-html-export-to-html nil t))"

	@cd $(pci_folder); find . -name '*.html' -exec sed -i 's/Table of Contents/Índice/' {} \;
