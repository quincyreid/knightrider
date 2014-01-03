puts "\tDeleting all the robots"
Robot.delete_all


makers = User.all

puts "Creating new robots & assigning them to users"
FactoryGirl.create_list(:robot, 12)

Robot.find_each do |bot|
	bot.user = makers.sample
	bot.save
end