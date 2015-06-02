Feature: Entering TODO items

  Scenario: I should be able to enter new todo items
    When I add a new todo item with body "Create Slides for talk"
    Then I should be on the todo list showing my new entry

