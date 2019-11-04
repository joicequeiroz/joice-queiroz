@services
Feature: Create Services

   As a user
   I want to verify the Best Buy API Playground
   To validate the creation of services

   Background: Endpoint
      Given I get endpoint from new services "/products"

   Scenario: Create a new service
      When I send the POST verb in the services
      Then will be returned status code "200" and a message "OK"

   Scenario: Creating a services without data for mandatory fields
      When I send the POST verb in the services without data
      Then will be returned status code "400" and a message "Bad Request"

   Scenario: Creating a services with negative values for string fields
      When I send the POST verb in the services with negative values for string fields
      Then will be returned status code "400" and a message "Bad Request"

   Scenario: Creating a services without body
      When I send the POST verb in the services without body
      Then will be returned status code "400" and a message "Bad Request"