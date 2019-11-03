@services
Feature: Create Services

   As a user
   I want to verify the Best Buy API Playground
   To validate the creation of services

   Background: Endpoint
      Given I get endpoint from new services "/products"

   Scenario: Create service
      When I send the POST verb in the services
      Then will be returned status code "201" and a message "Created"