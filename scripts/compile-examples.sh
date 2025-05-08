./download-fonts.sh
typst compile --font-path ./ --root ./ examples/example.typ examples/example.pdf
typst compile --font-path ./ --root ./ examples/example.typ examples/example.png
typst compile --font-path ./ --root ./ examples/example.typ examples/example.svg
