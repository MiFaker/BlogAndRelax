FactoryGirl.define do
  factory :role do
    name "user"
    permissions{{active_logs: {create: true, delete: false}}}
    type "UserRole"
  end
end
