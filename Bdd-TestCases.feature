Feature: Compose Email

  Scenario: Successfully send an email with subject and body
    Given the user is logged in to Gmail
    When the user clicks on "Compose"
    And enters "Incubyte" in the subject field
    And enters "QA test for Incubyte" in the body
    And enters a recipient's email
    And clicks on "Send"
    Then the email should be sent successfully
    And the email should appear in the "Sent" folder

  Scenario: Attempt to send email without a subject
    Given the user is logged in to Gmail
    When the user clicks on "Compose"
    And leaves the subject field blank
    And enters "QA test for Incubyte" in the body
    And enters a recipient's email
    And clicks on "Send"
    Then a warning should appear for sending without a subject

  Scenario: Attempt to send email without a body
    Given the user is logged in to Gmail
    When the user clicks on "Compose"
    And enters "Incubyte" in the subject field
    And leaves the body blank
    And enters a recipient's email
    And clicks on "Send"
    Then a warning should appear for sending without a body

  Scenario: Attempt to send email without a recipient
    Given the user is logged in to Gmail
    When the user clicks on "Compose"
    And enters "Incubyte" in the subject field
    And enters "QA test for Incubyte" in the body
    And leaves the recipient field blank
    And clicks on "Send"
    Then an error message should appear indicating no recipient
