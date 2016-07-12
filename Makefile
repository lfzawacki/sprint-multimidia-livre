all:
	pandoc slides.md -t beamer -o output.pdf -V theme:Mate

revealjs: slides.md
	pandoc -t html5 --template=./templates/template-revealjs.html --standalone --section-divs --variable theme="black" --variable transition="linear" slides.md -o index.html