# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :robot do
    name 'Aries'
    description 'The first astrological sign in the Zodiac'
    avatar { Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/images/js.png", 'image/png') }
    code_url "https://github.com/github/gitignore"
    video_url "http://www.youtube.com/watch?v=LFasFq4GJYM"
    user
  end
end