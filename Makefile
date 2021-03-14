.PHONY: install
.DEFAULT_GOAL := help

help:
	@echo "Usage: make [OPTION]"
	@echo ""
	@echo "Options"
	@echo "  help               -- print this help"
	@echo "  build              -- generate a binary executable named 'fielda'"
	@echo "  install            -- generate a binary executable named 'fielda' and install it to the path defined by your \$$GOBIN environment variable"
	@echo ""
	@echo "* 'help' is the default [OPTION]"

build:
	go build -o fielda -v

# Go's 'go install' command does not support an -o output flag (why???), so
# using it will result in a binary named 'cli' in our $GOBIN (undesirable).
# That's why we run 'go build' instead...
install:
	go build -o $$GOBIN/fielda -v
