FactoryGirl.define do 
	sequence(:random_name) do |n|
		["Francis Gulotta", "Rushaine McBean", "Zahra Jabini"].sample
	end
end