@categories
Feature: Create Categories

   As a user
   I want to verify the Best Buy API Playground
   To validate the creation of categories

   Background: Endpoint
      Given I get endpoint from new categories "/categories"

   Scenario: Create a category
      When I send the POST verb in the categories
      Then will be returned status code "200" and a message "OK"

   Scenario: Creating a categories without data for mandatory fields
      When I send the POST verb in the categories without data
      Then will be returned status code "400" and a message "Bad Request"

   Scenario: Creating a categories with negative values for string fields
      When I send the POST verb in the categories with negative values for string fields
      Then will be returned status code "400" and a message "Bad Request"

   Scenario: Creating a categories without body
      When I send the POST verb in the categories without body
      Then will be returned status code "400" and a message "Bad Request"