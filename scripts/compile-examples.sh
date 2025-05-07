mkdir -p fonts
if [ ! -f "./fonts/NotoSans-Regular.ttf" ]; then
    curl -sL https://github.com/googlefonts/noto-fonts/raw/main/hinted/ttf/NotoSans/NotoSans-Regular.ttf -o ./fonts/NotoSans-Regular.ttf
    curl -sL https://github.com/googlefonts/noto-fonts/raw/main/hinted/ttf/NotoSans/NotoSans-Bold.ttf -o ./fonts/NotoSans-Bold.ttf
    curl -sL https://github.com/googlefonts/noto-fonts/raw/main/hinted/ttf/NotoSans/NotoSans-Italic.ttf -o ./fonts/NotoSans-Italic.ttf
    curl -sL https://github.com/googlefonts/noto-fonts/raw/main/hinted/ttf/NotoSans/NotoSans-BoldItalic.ttf -o ./fonts/NotoSans-BoldItalic.ttf
fi

typst compile --font-path ./ --root ./ examples/example.typ examples/example.pdf
typst compile --font-path ./ --root ./ examples/example.typ examples/example.png
typst compile --font-path ./ --root ./ examples/example.typ examples/example.svg
