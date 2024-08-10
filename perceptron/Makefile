.PHONY: test

all:
	@echo "make [option]"

run:
	cabal run

build:
	cabal build

test:
	cabal test --test-option="--color=always"

doc:
	pandoc --metadata-file ./meta.yml -o doc.pdf README.md
