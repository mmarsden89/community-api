curl http://localhost:4741/messages \
  --request POST \
  --include \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=${TOKEN}" \
  --data '
    {
    "message": {
      "user_id": "'"${ID}"'",
      "text": "'"${TEXT}"'",
      "user_name": "'"${NAME}"'"
    }
  }
  '
