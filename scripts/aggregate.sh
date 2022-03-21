#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../steps || exit

# shellcheck disable=SC2010
ls step* \
  | grep -v "test" \
  | xargs cat \
  | grep -v '#!/bin/sh' \
  | grep -v 'REMOVE THIS IN aggregate.sh' \
  | sed 's/^\#\s//' \
  > README.md

mv README.md ../README.md