#!/bin/bash

curl "http://localhost:4741/teams/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "team": {
      "team_name": "'"${NAME}"'",
      "user_id": "'"${USERID}"'"
    }
  }'

echo
