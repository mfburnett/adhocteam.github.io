all: build

.PHONY: deploy

build:
	jekyll build

serve s:
	jekyll serve

deploy: build
	rsync -e ssh -avz --delete-after --delete-excluded _site/ pubweb.adhocteam.us:/usr/share/nginx/html/adhocteam.us/
