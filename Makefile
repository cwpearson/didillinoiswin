
all: public/index.html


build/basketball.html: 2021_2022_basketball.md static/template.html
	mkdir -p build
	pandoc --template static/template.html $< -o $@

build/volleyball.html: 2021_volleyball.md static/template.html
	mkdir -p build
	pandoc --template static/template.html $< -o $@

public/index.html: static/header.html build/basketball.html build/volleyball.html static/footer.html
	cat $^ > $@

.PHONY: clean
clean: 
	rm -f public/generated/* public/index.html
