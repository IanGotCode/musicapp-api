#!/bin/bash

curl --include --request PATCH "http://localhost:4741/audios/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "audio": {
    "title": "'"${TITLE}"'",
    "artist": "'"${ARTIST}"'"
  }
}'
 echo


