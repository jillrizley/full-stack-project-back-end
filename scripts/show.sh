#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shows"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "show": {
      "artist": "'"${ARTIST}"'",
      "date": "'"${DATE}"'",
      "start_time": "'"${START_TIME}"'"
      "end_time": "'"${END_TIME}"'"
    }
  }'
