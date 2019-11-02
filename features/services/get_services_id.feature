@services
Feature: Get a Services

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the reaserch a services

Background: Endpoint
   Given I get endpoint from a services "/services"

   Scenario: Get services
   When I send the Get verb in a services
   Then will be returned status code "200" and a message "OK"