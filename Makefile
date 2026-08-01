# Verb-contract stub - see sidick/amiga-workflows' README.md. Each target is
# just non-trivial enough to prove the toolchain image is actually reachable
# and working, not a real Amiga project.

.PHONY: build test-host test-target lint dist

build:
	mkdir -p build
	m68k-amigaos-gcc -O2 -o build/hello hello.c

test-host: build
	vamos build/hello | grep -q "Hello world!"

test-target:
	command -v copperline
	file /opt/copperline/bin/copperline
	@echo "AMIGA_REAL_ROM=$${AMIGA_REAL_ROM:-<unset, expected - no real ROM secret configured>}"

lint:
	@echo "lint: nothing to check in a fixture repo"

dist: build
	mkdir -p dist
	lha a dist/fixture.lha build/hello
