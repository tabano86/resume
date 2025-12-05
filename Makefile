# Resume Build System
# Works on macOS/Linux with lualatex installed

SHELL := /bin/bash
DATE := $(shell date +%Y-%m-%d)
NAME := Anthony_Tabano_resume
OUT_DIR := out
TEX_ENGINE := lualatex
TEX_FLAGS := -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf

.PHONY: all clean watch open

all: $(OUT_DIR)/$(NAME)_$(DATE).pdf

$(OUT_DIR)/$(NAME)_$(DATE).pdf: resume.tex content.tex | $(OUT_DIR)
	@echo "Building resume..."
	$(TEX_ENGINE) $(TEX_FLAGS) -output-directory=$(OUT_DIR) -jobname=$(NAME)_$(DATE) resume.tex
	@echo "✓ Built: $@"

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

clean:
	rm -rf $(OUT_DIR)
	@echo "✓ Cleaned build artifacts"

# Watch for changes and rebuild (requires fswatch on macOS or inotify-tools on Linux)
watch:
	@echo "Watching for changes... (Ctrl+C to stop)"
	@which fswatch >/dev/null 2>&1 && fswatch -o *.tex | xargs -n1 -I{} make all || \
	(which inotifywait >/dev/null 2>&1 && while inotifywait -e modify *.tex; do make all; done) || \
	echo "Install fswatch (macOS) or inotify-tools (Linux) for watch mode"

# Open the PDF (macOS/Linux)
open: all
	@which open >/dev/null 2>&1 && open $(OUT_DIR)/$(NAME)_$(DATE).pdf || \
	which xdg-open >/dev/null 2>&1 && xdg-open $(OUT_DIR)/$(NAME)_$(DATE).pdf || \
	echo "PDF built at: $(OUT_DIR)/$(NAME)_$(DATE).pdf"
