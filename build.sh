# format all xml files first
find src -name "*.xml" -type f | xargs -I'{}' xmllint --output '{}' --format '{}'

mkdir -p build/{html,epub}
sphinx-build -b html src build/html
sphinx-build -b epub src build/epub
