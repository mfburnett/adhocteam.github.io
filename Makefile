all: deploy

.PHONY: deploy

build:
	jekyll build

deploy: build
	rsync -e ssh -avz --delete-after --delete-excluded _site/ pubweb.adhocteam.us:/usr/share/nginx/html/adhocteam.us/
