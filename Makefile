
all: public/index.html public/style.css


build/basketball.html: 2021_2022_basketball.md static/template.html
	mkdir -p build
	pandoc --template static/template.html $< -o $@

build/volleyball.html: 2021_volleyball.md static/template.html
	mkdir -p build
	pandoc --template static/template.html $< -o $@

build/football.html: 2021_football.md static/template.html
	mkdir -p build
	pandoc --template static/template.html $< -o $@

public/index.html: static/header.html build/basketball.html build/football.html build/volleyball.html static/footer.html
	mkdir -p public
	cat static/header.html > $@
	echo "<div class="row">"  >> $@
	echo "<div class="column">" >> $@
	cat build/basketball.html >> $@
	echo "</div>" >> $@
	echo "<div class="column">" >> $@
	cat build/football.html >> $@
	echo "</div>" >> $@
	echo "</div>" >> $@ 
	echo "<div class="row">"  >> $@
	echo "<div class="column">" >> $@
	cat build/volleyball.html >> $@
	echo "</div>" >> $@
	echo "</div>" >> $@ 
	cat static/footer.html >> $@

public/style.css: static/style.css
	mkdir -p public
	cp $< $@

.PHONY: clean
clean: 
	rm -rf build public
