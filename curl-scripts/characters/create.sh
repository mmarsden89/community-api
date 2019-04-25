curl http://localhost:4741/characters \
  --request POST \
  --include \
  --header 'Content-Type: application/json' \
  --data '
    {
    "character": {
      "user_id": "'"${ID}"'",
      "user_name": "'"${NAME}"'",
      "x": "'"${X}"'",
      "y": "'"${Y}"'",
      "direction": "'"${DIRECTION}"'",
      "moving": "'"${MOVING}"'",
      "active": "'"${ACTIVE}"'"
    }
  }
  '
