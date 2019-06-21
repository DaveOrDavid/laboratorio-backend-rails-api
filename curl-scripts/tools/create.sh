#!/bin/bash

curl "http://localhost:4741/tools" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tool": {
      "name": "'"${NAME}"'",
      "category": "'"${CATEGORY}"'"
    }
  }'

echo
