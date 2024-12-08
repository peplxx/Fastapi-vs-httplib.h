BLUE := \033[34m
GREEN := \033[32m
YELLOW := \033[33m
RESET := \033[0m

HELP_FUN = \
    %help; \
    printf "\n${BLUE}Usage:${RESET}\n  make ${YELLOW}<target>${RESET}\n\n"; \
    while(<>) { \
        if(/^([a-zA-Z0-9_-]+):.*\#\#(?:@([a-zA-Z0-9_-]+))?\s(.*)$$/) { \
            push(@{$$help{$$2 // 'Other'}}, [$$1, $$3]); \
        } \
    }; \
    printf "${BLUE}Targets:${RESET}\n"; \
    for (sort keys %help) { \
        printf "${GREEN}%s:${RESET}\n", $$_; \
        printf "  %-20s %s\n", $$_->[0], $$_->[1] for @{$$help{$$_}}; \
        print "\n"; \
    }


help: ##@Help Show this help
	@echo -e "Usage: make [target] ...\n"
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)

# Cython setup
cy-build: ##@Cython Build server's source
	$(MAKE) -C cython-server

cy-run: ##@Cython Run server
	$(MAKE) -C cython-server run
    
cy-serve: cy-build ##@Cython Build & Run server
	$(MAKE) -C cython-server run

cy-clean: ##@Cython Clean build files
	$(MAKE) -C cython-server clean


# C++ setup
cpp-build: ##@Cpp Build server's source
	$(MAKE) -C cpp-server

cpp-run: ##@Cpp Run server
	$(MAKE) -C cpp-server run

cpp-serve: cpp-build ##@Cpp Build & Run server
	$(MAKE) -C cpp-server run

cpp-clean: ##@Cpp Clean build files
	$(MAKE) -C cpp-server clean


# Python setup
py-run: ##@Python Run server
	uv venv
	uv run $(MAKE) -C python-server run
