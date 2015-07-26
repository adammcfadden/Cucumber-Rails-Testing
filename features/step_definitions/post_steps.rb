Given(/^I am on the new post page$/) do
  visit new_post_path # express the regexp above with the code you wish you had
end

When(/^I fill in the (.*) field with (.*)$/) do |field_name, words|
  fill_in field_name, with: words # express the regexp above with the code you wish you had
end

When(/^I click on (.*)$/) do |element|
  click_on element # express the regexp above with the code you wish you had
end

Then(/^I should see (.*)$/) do |content|
  assert page.has_content?(content) # express the regexp above with the code you wish you had
end
