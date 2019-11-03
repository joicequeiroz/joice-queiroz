@stores
Feature: Create Stores

   As a user
   I want to verify the Best Buy API Playground
   To validate the creation of stores

   Background: Endpoint
      Given I get endpoint from new stores "/stores"

   Scenario: Create stores
      When I send the POST verb in the stores
      Then will be returned status code "201" and a message "Created"