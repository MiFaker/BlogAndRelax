json.users @users do |user|
  json.id user.id
  json.first_name user.first_name
  json.email user.email
  json.phone user.phone
  json.memo user.memo
end

json.pagination_limit Settings.pagination.user.per_page_option
json.total_items @users.total_count
