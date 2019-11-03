@stores
Feature: Patch Stores

   As a user
   I want to verify the Best Buy API Playground
   To validate the update a stores

Background: Endpoint
   Given I get endpoint from a stores "/stores"

   Scenario: Update stores
   When I send the PATCH verb to update a stores
   Then will be returned status code "200" and a message "OK"
   And I will be the data of the stores is change