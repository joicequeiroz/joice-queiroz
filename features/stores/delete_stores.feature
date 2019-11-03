@stores
Feature: Delete Stores

   As a user
   I want to verify the Best Buy API Playground
   To validate the delete a stores

   Background: Endpoint
      Given I get endpoint from a stores "/stores"

   Scenario: Delete a stores
      When I send the DELETE verb to a stores
      Then will be returned status code "200" and a message "OK"
      And the stores will be deleted