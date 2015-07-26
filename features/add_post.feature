Feature: Add Post

  Scenario: Add a new post
    Given I am on the new post page
    When I fill in the post name field
    And I fill in the post body field
    And I click on Submit
    Then I should see my post
