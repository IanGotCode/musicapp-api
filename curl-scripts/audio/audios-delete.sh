#!/bin/bash

curl --include --request DELETE "http://localhost:4741/audios/${ID}" \
--header "Authorization: Token token=${TOKEN}" \

echo