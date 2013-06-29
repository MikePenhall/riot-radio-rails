FactoryGirl.define do
   factory :administrator do
     sequence(:email) { |n| "administrator-#{n}@example.com" }
     password "password"
     password_confrimation { password }
   end
end