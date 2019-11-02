@categories
Feature: Create Categories

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the create of categories

Background: Endpoint
   Given I get endpoint from new categories "/categories"

   Scenario: Create
   When I send the POST verb in the categories
   Then will be returned status code "201" and a message "Created"