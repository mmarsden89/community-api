curl "http://localhost:4741/characters/${ID}" \
  --request PATCH \
  --include \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token="${TOKEN}"" \
  --data '
    {
    "character": {
      "user_name": "'"${NAME}"'",
      "x": "'"${X}"'",
      "y": "'"${Y}"'",
      "direction": "'"${DIRECTION}"'",
      "moving": "'"${MOVING}"'",
      "active": "'"${ACTIVE}"'"
    }
  }
  '
