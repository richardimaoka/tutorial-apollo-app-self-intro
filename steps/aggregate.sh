#!/bin/sh

cd "$(dirname "$0")"

ls | grep step \
  | xargs cat \
  | grep -v '#!/bin/sh' \
  | grep -v '# remove this in README' \
  | sed 's/^\#\s//' \
  > README.md

mv README.md ../README.md