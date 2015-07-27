@posts
Feature: Post
@create
  Scenario: Add a new post
    Given I am on the new post page
    When I fill in the "Name" field with "A post about cucumbers"
    And I fill in the "Body" field with "Follow along and learn more"
    And I click on "Submit"
    Then I should see "A post about cucumbers"
    And I should see "Follow along and learn more"
@update
  Scenario: Edit a post
    Given I have a post
    And I am on the edit post page
    When I fill in the "Name" field with "A different title"
    And I fill in the "Body" field with "Look at this body"
    And I click on "Submit"
    Then I should see "A different title"
    And I should see "Look at this body"
@destroy
  Scenario: Delete a post
    Given I have a post
    And I am on the root page
    When I click on "Delete"
    Then I should see "Post Deleted"
    And I should not see "A post body yay"

@errors @create
  Scenario: Add a new post with errors
    Given I am on the new post page
    When I fill in the "Name" field with "A post with no body"
    And I click on "Submit"
    Then I should see "There were Errors in creating this post"
@errors @update
  Scenario: Edit a post with errors
    Given I have a post
    And I am on the edit post page
    When I empty the "Name" field
    And I click on "Submit"
    Then I should see "There were Errors in updating this"
@read
  Scenario: View the show page
    Given I have a post
    And I am on the root page
    When I click the post title
    Then I should see "Show Page"
    And I should see the post name
