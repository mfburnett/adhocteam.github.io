all: deploy

.PHONY: deploy

deploy:
	rsync -e ssh -avz --delete-after --delete-excluded _site/ pubweb.adhocteam.us:/usr/share/nginx/html/adhocteam.us/
