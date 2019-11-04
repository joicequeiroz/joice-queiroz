@categories @severity_major
Feature: Research Categories per ID

   As a user
   I want to verify the Best Buy API Playground
   To validate the research a categories

   Background: Endpoint
      Given I get endpoint from a categories "/categories"

   Scenario: Research categories per ID
      When I send the GET verb to search a categories
      Then will be returned status code "200" and a message "OK"