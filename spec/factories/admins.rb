FactoryGirl.define do
  factory :admin do
    email "admin@bar.com"
    password "admin12345678"
    password_confirmation "admin12345678"
  end
end
