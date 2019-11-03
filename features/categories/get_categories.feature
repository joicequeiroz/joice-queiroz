@categories
Feature: Research All Categories

   As a user
   I want to verify the Best Buy API Playground
   To validate the research all categories

   Background: Endpoint
      Given I get endpoint from all categories "/categories"

   Scenario: Research all categories
      When I send the GET verb in all categories
      Then will be returned status code "200" and a message "OK"

   Scenario: Research categories by name
      When I send the GET verb in the categories by name
      Then will be returned status code "200" and a message "OK"

   Scenario: Research categories with TV in the name
      When I send the GET verb in the categories with TV
      Then will be returned status code "200" and a message "OK"