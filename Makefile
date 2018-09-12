# Basic Makefile

ifeq ($(strip $(DESTDIR)),)
	INSTALLBASE = usr/share/themes
else
	INSTALLBASE = usr/share/themes
endif
INSTALLNAME = arcwaita
DESTDIR = ./debian/$(INSTALLBASE)

# The command line passed variable VERSION is used to set the version string
# in the metadata and in the generated zip-file. If no VERSION is passed, the
# version is pulled from the latest git tag and the current commit SHA1 is 
# added to the metadata
all: install

clean:
	

install: 
	#rm -rf $(INSTALLBASE)/$(INSTALLNAME)
	mkdir -p ./debian/$(INSTALLNAME)/$(INSTALLBASE)/$(INSTALLNAME)
	cp -r ./gtk-2.0/ ./debian/$(INSTALLNAME)/$(INSTALLBASE)/$(INSTALLNAME)
	cp -r ./gtk-3.0/ ./debian/$(INSTALLNAME)/$(INSTALLBASE)/$(INSTALLNAME)
	cp ./index.theme ./debian/$(INSTALLNAME)/$(INSTALLBASE)/$(INSTALLNAME)
	echo done


