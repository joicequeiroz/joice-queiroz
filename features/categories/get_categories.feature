@categories
Feature: Get Categories

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the reaserch all categories

Background: Endpoint
   Given I get endpoint from all categories "/categories"

   Scenario: Get categories
   When I send the GET verb in the all categories
   Then will be returned status code "200" and a message "OK"

   Scenario: Get categories by name
   When I send the GET verb in the categories by name
   Then will be returned status code "200" and a message "OK"

   Scenario: Get categories with TV in the name
   When I send the GET verb in the categories with TV
   Then will be returned status code "200" and a message "OK"