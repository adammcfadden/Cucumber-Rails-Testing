Given(/^I am on the new post page$/) do
  visit new_post_path # express the regexp above with the code you wish you had
end

When(/^I fill in the post name field$/) do
  fill_in 'Name', with: "How to use Cucumber" # express the regexp above with the code you wish you had
end

When(/^I fill in the post body field$/) do
  fill_in 'Body', with: "Follow along and find out!" # express the regexp above with the code you wish you had
end

When(/^I click on Submit$/) do
  click_on "Submit" # express the regexp above with the code you wish you had
end

Then(/^I should see my post$/) do
  assert page.has_content?("How to use Cucumber") # express the regexp above with the code you wish you had
  assert page.has_content?("Follow along and find out!") # express the regexp above with the code you wish you had
end
