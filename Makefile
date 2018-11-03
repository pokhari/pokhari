DEPLOY_DIR=public

build:
	Rscript -e "blogdown::build_site()"
	touch $(DEPLOY_DIR)/.nojekyll

deploy: build
	cd $(DEPLOY_DIR)
	git add .
	git commit -am "Deployed"
	git push

serve:
	Rscript -e "blogdown::serve_site()"

clean:
	rm -rf $(DEPLOY_DIR)
