#!/bin/bash

curl "http://localhost:4741/skills" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
