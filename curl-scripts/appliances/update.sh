#!/bin/bash

curl "http://localhost:4741/appliances/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "appliance": {
      "location": "'"${LOCATION}"'",
      "part_number": "'"${PART}"'",
      "image_url": "'"${IMAGE}"'"
    }
  }'

echo
