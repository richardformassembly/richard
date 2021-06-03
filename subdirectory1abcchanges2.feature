Feature: subdirectory\1\abc\changes2

  @BEH-1
  Scenario: test 2
    Given I have a form with an email notification subject containing a list of uploaded files
    When I view the form
    And I attach the file "test_2.jpg" to the form
    And I submit the form
    Then I should see an email sent to "responses1@test22.com" with the correct URLs in the subject
