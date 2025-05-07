CURRENT_VERSION=$(grep -oP '(?<=version = ")[^"]*' typst.toml)
IFS='.' read -r major minor patch <<< "$CURRENT_VERSION"
case "$1" in
patch)
    patch=$((patch + 1))
    ;;
minor)
    minor=$((minor + 1))
    patch=0
    ;;
major)
    major=$((major + 1))
    minor=0
    patch=0
    ;;
esac
NEW_VERSION="$major.$minor.$patch"
echo "NEW_VERSION=$NEW_VERSION" >> $GITHUB_ENV
sed -i "s|version = \"$CURRENT_VERSION\"|version = \"$NEW_VERSION\"|" typst.toml
sed -i "s|@preview/kiresume:$CURRENT_VERSION|@preview/kiresume:$NEW_VERSION|" README.md
sed -i "s|@preview/kiresume:$CURRENT_VERSION|@preview/kiresume:$NEW_VERSION|" template/main.typ