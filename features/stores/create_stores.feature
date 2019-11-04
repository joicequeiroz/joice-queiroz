@stores
Feature: Create Stores

   As a user
   I want to verify the Best Buy API Playground
   To validate the creation of stores

   Background: Endpoint
      Given I get endpoint from new stores "/stores"

   Scenario: Create a new store
      When I send the POST verb in the stores
      Then will be returned status code "200" and a message "OK"

   Scenario: Creating a stores without data for mandatory fields
      When I send the POST verb in the stores without data
      Then will be returned status code "400" and a message "Bad Request"

   Scenario: Creating a stores with negative values for string fields
      When I send the POST verb in the stores with negative values for string fields
      Then will be returned status code "400" and a message "Bad Request"

   Scenario: Creating a stores without body
      When I send the POST verb in the stores without body
      Then will be returned status code "400" and a message "Bad Request"