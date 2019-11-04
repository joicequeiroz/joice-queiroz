@utilities @severity_major
Feature: Check API version

   As a user
   I want to verify the Best Buy API Playground
   In order to validate the reaserch a version

Background: Endpoint
   Given I get endpoint from a utilities "/utilities"

   Scenario: Check API version
   When I send the GET verb to search version
   Then will be returned status code "200" and a message "OK"