@categories
Feature: Get Categories

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the reaserch a categories

Background: Endpoint
   Given I get endpoint from a categories "/categories"

   Scenario: Get a categories
   When I send the GET verb to search a categories
   Then will be returned status code "200" and a message "OK"