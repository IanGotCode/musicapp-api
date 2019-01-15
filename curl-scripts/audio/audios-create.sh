#!/bin/bash

curl --include --request POST "http://localhost:4741/audios" \
  --header "Content-type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "audio": {
      "title": "'"${TITLE}"'",
      "artist": "'"${ARTIST}"'"
    }
  }'

echo