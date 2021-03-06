

INSTALLDIR=/usr/local

BINDIR=${INSTALLDIR}/bin
MANDIR=${INSTALLDIR}/man/man1

SRC_BINDIR=src/bin
SRC_MANDIR=src/man

all: install

install:
	@mkdir -p ${BINDIR}
	@mkdir -p ${MANDIR}
	@cp ${SRC_BINDIR}/goldielocs ${BINDIR}/goldielocs
	@chmod 755 ${BINDIR}/goldielocs
	@echo Script installed in: ${BINDIR}
	@cat ${SRC_MANDIR}/goldielocs.1 | gzip > ${MANDIR}/goldielocs.1.gz
	@echo Man page installed in: ${MANDIR}
	@echo 
	@echo Note:
	@echo "  " goldielocs is intended for use with a shell function.
	@echo "  " see README or man page for more details

testman:
	nroff -man ${SRC_MANDIR}/goldielocs.1 | less
