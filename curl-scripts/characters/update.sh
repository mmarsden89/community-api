curl http://localhost:4741/members/1 \
  --request PATCH \
  --include \
  --header 'Content-Type: application/json' \
  --data '
    {
    "member": {
      "id": "'"${ID}"'",
      "user_name": "'"${NAME}"'",
      "x": "'"${X}"'",
      "y": "'"${Y}"'",
      "direction": "'"${DIRECTION}"'",
      "moving": "'"${MOVING}"'",
      "active": "'"${ACTIVE}"'"
    }
  }
  '
