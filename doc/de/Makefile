HCP = hcp
UDO = udo

UDO_SRC = \
	acspro.u \
	alpharef.ui \
	concept.ui \
	contact.ui \
	development.ui \
	download.ui \
	example1.ui \
	example2.ui \
	example3.ui \
	examples.ui \
	gui.ui \
	header.ui \
	history.ui \
	introduction.ui \
	lang.ui \
	legal.ui \
	ml.ui \
	navigation.ui \
	reference.ui \
	shareware.ui \
	version.ui \
	$(empty)

all:: acsprode.hyp


acsprode.hyp: acsprode.stg
	$(HCP) -o $@ $<

acsprode.stg: $(UDO_SRC)
	$(UDO) --stg -o $@ $< || { rm -f $@; exit 1; }

clean::
	$(RM) acsprode.stg acsprode.hyp acsprode.ref udo_*.img *.uls
