
post_new:
	bundle exec tools/post_new.rb

jekyll_doctor:
	bundle exec jekyll doctor

jekyll_build: jekyll_doctor
	bundle exec jekyll build

jekyll_server:
	bundle exec jekyll server --livereload

publish: jekyll_build
	./tools/post_publish.sh
	git commit _site -m "^_^" && git push
