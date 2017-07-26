#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shows_users/13"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU4MDE3M2IwOTY3MzM5Y2U2MDM2NDdhMGJjZjNhMjY4NAY6BkVG--658ca526c7e5a23c4152e1882c07cf62f06a426d"

echo
