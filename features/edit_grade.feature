Feature: Editing Grades
    Scenario: Viewing detailed grade information, should be able to edit the grade
        Given there are grades in the gradebook
        And I sign in
        When I visit the homepage
        And I click "Edit" on a post
        And I fill out the form and submit the edits
        Then The grade should be edited

