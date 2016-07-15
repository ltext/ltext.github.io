#!/bin/bash
ltext "src/wrapper.html (src/content.html src/preview.html src/usage.html \
       src/download.html (src/advanced.html src/typechecking.html src/partial.html \
       src/debugging.html))" --raw "src/preview.html" --raw "src/usage.html" \
      --raw "src/download.html"  --raw "src/typechecking.html" --raw "src/partial" \
      --raw "src/debugging" --raw "src/debugging.html" > index.html
