# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :robot do
    name 'Aries'
    description 'The first astrological sign in the Zodiac'
    user
  end
end