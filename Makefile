DEPLOY_DIR=public

build:
	Rscript -e "blogdown::build_site()"

deploy: build
	cd $(DEPLOY_DIR)
	touch .nojekyll
	git add .
	git commit -am "Deployed"
	git push

serve:
	Rscript -e "blogdown::serve_site()"

clean:
	rm -rf $(DEPLOY_DIR)
