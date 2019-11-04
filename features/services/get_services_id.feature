@stores @severity_major
Feature: Research Services per ID

   As a user
   I want to verify the Best Buy API Playground
   To validate the find a stores

   Background: Endpoint
      Given I get endpoint from a stores "/stores"

   Scenario: Research Services per ID
      When I send the GET verb to research a service
      Then will be returned status code "200" and a message "OK"