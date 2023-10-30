#!/bin/bash
npx sass src/main.scss main.css && \
    npx css-minify -f main.css -o ./ && \
    ltext "src/wrapper.html \
  (src/content.html \
    src/content/preview.html \
    src/content/usage.html \
    src/content/download.html \
    (src/content/advanced.html \
      src/content/advanced/typechecking.html \
      src/content/advanced/partial.html \
      src/content/advanced/debugging.html))" \
          --raw "src/content/preview.html" \
          --raw "src/content/usage.html" \
          --raw "src/content/download.html" \
          --raw "src/content/advanced/typechecking.html" \
          --raw "src/content/advanced/partial" \
          --raw "src/content/advanced/debugging" > index.html
