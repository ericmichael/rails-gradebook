Feature: Update grade
    Scenario: signed in and updating grade
        Given there are grades in the gradebook
        And I sign in
        When I visit the homepage
        And I click "Edit" on a post
        And I edit the student information and submit
        Then I should have edited the grade