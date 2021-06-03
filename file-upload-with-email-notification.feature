Feature: File upload with email notification

  @BEH-1 @MANUAL @Test2 @FF.Email.Queue.enabled=true
  Scenario: FILE_LIST alias sends correct URL in subject
    Given I have a form with an email notification subject containing a list of uploaded files
    When I view the form
    And I attach the file "test_2.jpg" to the form
    And I submit the form
    Then I should see an email sent to "responses1@test22.com" with the correct URLs in the subject
