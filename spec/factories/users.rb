# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "marshall-#{n}@example.com" }
    password 'password!'
    password_confirmation 'password!'
    provider "github"
    uid "123456"
    name {generate(:random_name)}
  end
end