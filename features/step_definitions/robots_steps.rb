Given(/^I go to create a new robot$/) do
 visit new_robot_path
end

When(/^I add a robot with valid data$/) do
  within ".form-section" do
    fill_in 'robot_name', with: "Lorde"
    fill_in 'robot_description', with: "And I'll never go home again"
    attach_file 'robot_avatar', File.new("#{Rails.root}/db/devdata/robot-images/knightrider-placeholder.png")
    click_button "submit"
  end
end

Then(/^I should be taken to view my robot$/) do
  within ".case-study" do
    page.should have_content "Lorde"
  end
end