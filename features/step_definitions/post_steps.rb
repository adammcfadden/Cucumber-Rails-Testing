#Object Management
Given(/^I have a post$/) do
  @post = Post.create(name: 'A post', body: 'A post body yay')
end

#Navigation
Given(/^I am on the new post page$/) do
  visit new_post_path # express the regexp above with the code you wish you had
end

Given(/^I am on the edit post page$/) do
  visit edit_post_path(@post) # express the regexp above with the code you wish you had
end

Given(/^I am on the root page$/) do
  visit root_path # express the regexp above with the code you wish you had
end

#Fill In
When(/^I fill in the "(.*)" field with "(.*)"$/) do |field_name, words|
  fill_in field_name, with: words # express the regexp above with the code you wish you had
end

When(/^I empty the "(.*)" field$/) do |field_name|
  fill_in field_name, with: "" # express the regexp above with the code you wish you had
end

#Clicking
When(/^I click on "(.*)"$/) do |element|
  click_on element # express the regexp above with the code you wish you had
end

When(/^I click the post title$/) do
  click_on @post.name # express the regexp above with the code you wish you had
end

#Page_content
Then(/^I should see "(.*)"$/) do |content|
  assert page.has_content?(content), failure_message = "\"#{content}\" was not found on the page" # express the regexp above with the code you wish you had
end

Then(/^I should not see "(.*)"$/) do |content|
  assert !page.has_content?(content), failure_message = "\"#{content}\" was found on the page" # express the regexp above with the code you wish you had
end

Then(/^I should see the post name$/) do
  assert page.has_content?(@post.name), failure_message = "\"#{@post.name}\" was not found on the page" # express the regexp above with the code you wish you had
end
