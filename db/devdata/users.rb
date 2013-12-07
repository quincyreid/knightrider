puts "\tDeleting users"
User.delete_all

puts "Creating users"

FactoryGirl.create_list(:user, 18)