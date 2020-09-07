Feature: Update Grade
    Scenario: signed in and editing a grade
        Given there are grades in the gradebook
        And I sign in
        When I visit the homepage
        And I click "Edit" on a post
        And I edit the form and submit
        Then I should see the successfully updated grade
