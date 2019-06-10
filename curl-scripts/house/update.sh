#!/bin/bash

curl "http://localhost:4741/houses/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "house": {
      "address": "'"${ADDRESS}"'",
      "city": "'"${CITY}"'"
    }
  }'

echo
