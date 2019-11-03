@stores
Feature: Get Stores

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the search all stores

Background: Endpoint
   Given I get endpoint from all stores "/stores"

   Scenario: Get all Stores
   When I send the GET verb to search all stores
   Then will be returned status code "200" and a message "OK"

   Scenario: Find stores in Minnesota
   When I send the GET verb to find stores in Minnesota
   Then will be returned status code "200" and a message "OK"

   Scenario: Find stores that sell Apple products
   When I send the GET verb to find stores sell Apple products
   Then will be returned status code "200" and a message "OK"

   Scenario: Find Stores Within ten Miles of Beverly Hills
   When I send the GET verb to find stores within ten miles of Beverly Hills
   Then will be returned status code "200" and a message "OK"