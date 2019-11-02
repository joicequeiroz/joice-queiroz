@services
Feature: Patch Services

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the update a services

Background: Endpoint
   Given I get endpoint from a services "/services"

   Scenario: Update a services
   When I send the PATCH verb to update a services
   Then will be returned status code "200" and a message "OK"
   And I will be the data of the services is change