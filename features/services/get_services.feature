@services
Feature: Research all Services

   As a user
   I want to verify the Best Buy API Playground
   To validate the research all services

   Background: Endpoint
      Given I get endpoint from all services "/services"

   Scenario: Research all services
      When I send the GET verb in research all services
      Then will be returned status code "200" and a message "OK"
      And I will see the array by services "Geek Squad Services"