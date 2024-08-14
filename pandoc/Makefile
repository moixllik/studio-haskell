all:
	@echo "make [option]"

pkgs:
	sudo apt-get install -y texlive-latex-base texlive-latex-extra
	sudo apt-get install -y texlive-fonts-recommended texlive-fonts-extra

doc:
	pandoc --metadata-file ./article/meta.yml -o doc.pdf ./article/README.md
