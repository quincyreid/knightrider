Given(/^I exist as a user$/) do
  @user = FactoryGirl.create(:user)
end

Given(/^I am logged in$/) do
  login_as(@user)
end

Given(/^I have signed in before with my Github account$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I sign in$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be signed in$/) do
  pending # express the regexp above with the code you wish you had
end


When(/^I join with Github$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be registered$/) do
  pending # express the regexp above with the code you wish you had
end