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

all:: acsproen.hyp


acsproen.hyp: acsproen.stg
	$(HCP) -o $@ $<

acsproen.stg: $(UDO_SRC)
	$(UDO) --stg -o $@ $< || { rm -f $@; exit 1; }

clean::
	$(RM) acsproen.stg acsproen.hyp acsproen.ref udo_*.img *.uls
