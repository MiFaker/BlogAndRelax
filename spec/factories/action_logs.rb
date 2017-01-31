FactoryGirl.define do
  factory :action_log do
    target_id 1
    target_type "Admin"
    action_name "login"
    creator_id 1
    creator_type "Admin"
    user_agent "MyString"
  end
end
