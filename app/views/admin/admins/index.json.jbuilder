json.admins @admins do |admin|
  json.id admin.id
  json.first_name admin.first_name
  json.email admin.email
  json.phone admin.phone
  json.memo admin.memo
end

json.pagination_limit Settings.pagination.admin.per_page_option
json.total_items @admins.total_count
