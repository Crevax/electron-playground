SRC_DIR := src/elm-scripts
ELM_FILE := src/elm-scripts/Main.elm
ELM_OUTPUT := app/app.min.js

.PHONY: build
build:
	elm-make $(ELM_FILE) --output=$(ELM_OUTPUT)

.PHONY: run
run: build
	node_modules/.bin/electron .

.PHONY: clean
clean:
	rm -f $(ELM_OUTPUT)