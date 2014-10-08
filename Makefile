SHELL=/bin/sh
FILE=drumbook
OUTDIR=out
WEBDIR=htmlout
VIEWER=evince-previewer
BROWSER=firefox
ADDRESS=b4inoz at gmail dot com - Last Update: `date +'%y.%m.%d %H:%M:%S'`
LILYBOOK_PDF=lilypond-book --output=$(OUTDIR) --pdf $(FILE).lytex
LILYBOOK_HTML=lilypond-book --output=$(WEBDIR) $(FILE).lytex
PDF=cd $(OUTDIR) && pdflatex $(FILE) && pdflatex $(FILE)
HTML=cd $(WEBDIR) && latex2html \
	-style=style.css \
	-antialias_text \
	-antialias \
	-transparent \
	-white \
	-image_type png \
	-local_icons \
	-address "$(ADDRESS)" \
	-footnode \
	$(FILE)
HTMLCSS=cp layout/lilypond-manuals.css $(WEBDIR)/$(FILE)/style.css
INDEX=cd $(OUTDIR) && makeindex $(FILE)
PREVIEW=$(VIEWER) $(OUTDIR)/$(FILE).pdf &

all: pdf keep

pdf:
	$(LILYBOOK_PDF)  # begin with tab
	$(PDF)           # begin with tab
	#$(INDEX)         # begin with tab
	$(PDF)           # begin with tab
	$(PREVIEW)       # begin with tab

web:
	$(LILYBOOK_HTML) # begin with tab
	$(HTML)          # begin with tab
	$(HTMLCSS)       # begin with tab
	cp -R $(WEBDIR)/$(FILE)/ ./  # begin with tab
	$(BROWSER) $(FILE)/$(FILE).html &  # begin with tab

keep: pdf
	cp $(OUTDIR)/$(FILE).pdf $(FILE).pdf  # begin with tab

clean:
	rm -rf $(OUTDIR) # begin with tab

web-clean:
	rm -rf $(WEBDIR) # begin with tab

archive:
	tar -cvvf myproject.tar \ # begin this line with tab
		--exclude=out/* \
		--exclude=htmlout/* \
		--exclude=myproject/* \
		--exclude=*midi \
		--exclude=*pdf \
		--exclude=*~ \
		../drumbook/*
