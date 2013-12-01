# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'marshall@example.com'
    password 'password!'
    password_confirmation 'password!'
    provider "github"
    uid "123456"
    name "Marshall Mathers"
  end
end