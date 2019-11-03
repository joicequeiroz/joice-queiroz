@services
Feature: Delete Services

   As a user
   I want to verify the Best Buy API Playground
   To validate the delete a services

   Background: Endpoint
      Given I get endpoint from a services "/services"

   Scenario: Delete a services
      When I send the DELETE verb to search a services
      Then will be returned status code "200" and a message "OK"
      And the services will be deleted