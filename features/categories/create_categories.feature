@categories
Feature: Create Categories

   As a user
   I want to verify the Best Buy API Playground
   To validate the creation of categories

   Background: Endpoint
      Given I get endpoint from new categories "/categories"

   Scenario: Create
      When I send the POST verb in the categories
      Then will be returned status code "201" and a message "Created"