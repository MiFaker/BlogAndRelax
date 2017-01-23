FactoryGirl.define do
  factory :role do
    name "admin"
    permissions {{active_logs: {create: true, delete: false}}}
    type "AdminRole"
  end
end
