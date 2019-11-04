@services @severity_critical
Feature: Update Services

   As a user
   I want to verify the Best Buy API Playground
   To validate the update a services

   Background: Endpoint
      Given I get endpoint from a services "/services"

   Scenario: Update services
      When I send the PATCH verb to update a services
      Then will be returned status code "200" and a message "OK"
      And I will be the data of the services is change