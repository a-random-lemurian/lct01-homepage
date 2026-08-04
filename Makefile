DESTDIR=public
BASEURL=https://lct01.lemuria.ph

.PHONY: build
build:
	hugo build --logLevel debug --baseURL $(BASEURL) -d $(DESTDIR) $(HUGO_BUILD_FLAGS)

.PHONY: deploy
deploy: public
	rsync --delete -rvz ./$(DESTDIR)/ lemuria@vps1:/home/lemuria/www/ph/lemuria/lct01
# THE SLASH IS IMPORTANT!
