#!/bin/bash
ltext "src/wrapper.html (src/content.html src/preview.html src/usage.html \
       src/download.html (src/advanced.html src/typechecking.html))" -o index.html

#
# (#src/wrapper.html) <>
# (
#  (
#   (
#    (
#     (
#      (
#       (
#        (
#         (
#          (#src/content.html) <>
#          (
#           (#src/advanced.html) <>
#            (
#             (#src/typechecking.html) <> (#src/advanced.html)
#            )
#          )
#         ) <> (#src/content.html)
#        ) <> (#src/download.html)
#       ) <> (#src/content.html)
#      ) <> (#src/usage.html)
#     ) <> (#src/content.html)
#    ) <> (#src/preview.html)
#   ) <> (#src/content.html)
#  ) <> (#src/wrapper.html)
# )
