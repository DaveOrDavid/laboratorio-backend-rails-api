#!/bin/bash

curl "http://localhost:4741/houses" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "house": {
      "address": "'"${ADDRESS}"'",
      "city": "'"${CITY}"'"
    }
  }'

echo
