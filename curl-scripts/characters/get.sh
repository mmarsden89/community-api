curl http://localhost:4741/students \
  --request GET \
  --include \
  --header 'Content-Type: application/json' \
  --data '
    {
    "student": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'"
    }
  }
  '
