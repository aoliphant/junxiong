all: md push

push:
	git add .
	git commit -m 'update'
	git push origin master

tt:
	./build_scrivener_to_md test
md:
	./build_scrivener_to_md

clear:
	cp content/en/_index.md .
	rm content/en/*
	mv _index.md content/en
	cp content/cn/_index.md .
	rm content/cn/*
	mv _index.md content/cn

re: clear md

up:
	qshell qupload 7niu.json