Feature: Running a test
  As an iOS developer
  I want to have a sample feature file
  So I can begin testing quickly

Scenario: Fill User name
  Given I am on the Welcome Screen
  Then I fill in "nameField" with "Example Number One"
  And Then I slide "ageSlider" to 13
  And I touch the "submit" button
  And I expect to see my name "Example Number One" in navbar
  And take picture


