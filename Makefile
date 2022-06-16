VERSION = 1.0.0

GOCC = go
BUILDDIR = build
EXECNAME ?= LALexer

PACKAGEPREFIX = pkg

ANTLRPREFIX = antlr
ANTLR = antlr4

all: build

clean:
	@echo "Cleaning up build files"
	rm -rf ${PACKAGEPREFIX}/grammar ${BUILDDIR}

build: grammar
	@echo "Building executables"
	${GOCC} build -o ${BUILDDIR}/${EXECNAME}-${VERSION}

grammar: ${ANTLRPREFIX}/LA.g4
	@echo "Generating grammar files"
	${ANTLR} -Dlanguage=Go \
		-o ${PACKAGEPREFIX}/$@ \
		-package $@ \
		${ANTLRPREFIX}/LA.g4


.PHONY: main clean install uninstall build grammar
