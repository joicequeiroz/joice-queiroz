@categories @severity_critical
Feature: Delete Categories

   As a user
   I want to verify the Best Buy API Playground
   To validate the delete a categories

   Background: Endpoint
      Given I get endpoint from a categories "/categories"

   Scenario: Delete a categories
      When I send the DETELE verb to search a categories
      Then will be returned status code "200" and a message "OK"
      And the categories will be deleted