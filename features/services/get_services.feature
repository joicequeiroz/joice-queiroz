@services
Feature: Get all Services

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the reaserch all services

Background: Endpoint
   Given I get endpoint from all services "/services"

   Scenario: Get services
   When I send the Get verb in the all services
   Then will be returned status code "200" and a message "OK"