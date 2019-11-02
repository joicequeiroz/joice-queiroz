@categories
Feature: Patch Categories

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the update a categories

Background: Endpoint
   Given I get endpoint from a categories "/categories"

   Scenario: Update a categories
   When I send the PATCH verb to search a categories
   Then will be returned status code "200" and a message "OK"
   And I will be the data of the categories is change