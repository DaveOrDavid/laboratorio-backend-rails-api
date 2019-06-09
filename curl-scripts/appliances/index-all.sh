#!/bin/bash

curl "http://localhost:4741/appliances" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
