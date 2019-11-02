@stores
Feature: Patch Stores

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the update a stores

Background: Endpoint
   Given I get endpoint from a stores "/stores"

   Scenario: Update a stores
   When I send the PATCH verb to update a stores
   Then will be returned status code "200" and a message "OK"
   And I will be the data of the stores is change