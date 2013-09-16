# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'hbdev123@gmail.com'
    password 'hbdev123'
    password_confirmation 'hbdev123'
  end
  
end
