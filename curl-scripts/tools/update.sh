#!/bin/bash

curl "http://localhost:4741/tools/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tool": {
      "name": "'"${NAME}"'",
      "category": "'"${CATEGORY}"'"
    }
  }'

echo
