@services
Feature: Create Services

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the create of services

Background: Endpoint
   Given I get endpoint from new services "/products"

   Scenario: Create
   When I send the POST verb in the services
   Then will be returned status code "201" and a message "Created"