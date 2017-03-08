# This file should contain all the record creation needed
# to seed the database with its default values.
# The data can then be loaded with the rails db:seed
# command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' },
# { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
puts "Create sample account admin"
User.create(email: "admin@bar.com", password: "bar12345678",
  password_confirmation: "bar12345678")

puts "Create faker account admin"
500.times do
  User.create(
    email: Faker::Internet.email,
    password: "bar12345678",
    password_confirmation: "bar12345678",
    phone: Faker::PhoneNumber.phone_number,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    memo: Faker::Address.city,
    fax: Faker::Business.credit_card_number,
    role_id: Role.pluck(:id).sample
  )
end
