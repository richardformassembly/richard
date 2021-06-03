Feature: Creating new forms

  @BEH-2
  Scenario: Create and save a new form from scratch
    Given I'm building a form in Form Builder 5.0.0
    When I save the FB5 form
    Then A form with the URL's ID should exist in the database

  @BEH-2 @MANUAL
  Scenario: Create and save a new form from a template
    Given I have a form template
    And I'm building a form with the template
    When I save the FB5 form
    Then The URL's ID should not match the template's ID
    And A form with the URL's ID should exist in the database
