@stores
Feature: Create Stores

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the create of stores

Background: Endpoint
   Given I get endpoint from new stores "/stores"

   Scenario: Create a stores
   When I send the POST verb in the stores
   Then will be returned status code "201" and a message "Created"