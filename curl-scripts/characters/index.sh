curl "http://localhost:4741/members/" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token="${TOKEN}"" \
  --data '{}'
