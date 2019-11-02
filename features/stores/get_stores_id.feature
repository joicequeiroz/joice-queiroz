@stores
Feature: Get Stores

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the search a stores

Background: Endpoint
   Given I get endpoint from a stores "/stores"

   Scenario: Get Stores
   When I send the GET verb to search a stores
   Then will be returned status code "200" and a message "OK"