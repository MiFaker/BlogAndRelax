FactoryGirl.define do
  factory :user do
    email "user@bar.com"
    password "user12345678"
    password_confirmation "user12345678"
  end
end
