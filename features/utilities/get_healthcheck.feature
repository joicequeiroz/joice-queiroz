@utilities @severity_major
Feature: Check Health

   As a user
   I want to verify the Best Buy API Playground
   In order to validate the reaserch a healthcheck

Background: Endpoint
   Given I get endpoint from a utilities "/utilities"

   Scenario: Check Health
   When I send the GET verb to search healthcheck
   Then will be returned status code "200" and a message "OK"