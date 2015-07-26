Feature: Post

  Scenario: Add a new post
    Given I am on the new post page
    When I fill in the Name field with A post about cucumbers
    And I fill in the Body field with Follow along and learn more
    And I click on Submit
    Then I should see A post about cucumbers
    And I should see Follow along and learn more
