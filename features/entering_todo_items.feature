Feature: Entering TOOD items

  Scenario: I should be able to enter new todo items
    When I touch "Add"
    And I enter "Create Slides for talk" into the body
    And I touch "Save"
    Then I should be on the todo list showing my new entry
