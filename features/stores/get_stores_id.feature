@stores
Feature: Get Stores

   As a user
   I want to verify the Best Buy API Playground
   To validate the search a stores

   Background: Endpoint
      Given I get endpoint from a stores "/stores"
   @doing
   Scenario: Research a stores
      When I send the GET verb to research a stores
      Then will be returned status code "200" and a message "OK"