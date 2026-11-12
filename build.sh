#!/usr/bin/env bash
# Builds index.html and main.min.css. Needs npm dependencies (`npm ci`) and
# ltext (https://github.com/ltext/ltext#installing) on the PATH.
set -euo pipefail
cd "$(dirname "$0")"

npx sass --load-path=node_modules --style=compressed --no-source-map --quiet-deps src/main.scss main.min.css

ltext "src/wrapper.html \
  (src/content.html \
    src/content/preview.html \
    src/content/usage.html \
    src/content/download.html \
    (src/content/advanced.html \
      src/content/advanced/typechecking.html \
      src/content/advanced/partial.html \
      src/content/advanced/debugging.html))" \
  --raw src/content/preview.html \
  --raw src/content/usage.html \
  --raw src/content/download.html \
  --raw src/content/advanced/typechecking.html \
  --raw src/content/advanced/partial.html \
  --raw src/content/advanced/debugging.html \
  > index.html
