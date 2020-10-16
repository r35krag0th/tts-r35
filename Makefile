docs:
	ldoc --all --dir docs src

docs-with-config:
	ldoc --all --config docs/config.ld

markdown-docs:
	ldoc --all --dir docs --format markdown src

.PHONY: docs
