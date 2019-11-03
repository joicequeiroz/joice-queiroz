@products
Feature: Get Product

   As a user
   I want to verify the Best Buy API Playground
   To validate the research a products

   Background: Endpoint
      Given I get endpoint from a products "/products"

   Scenario: Research products
      When I send the GET verb to search a product
      Then will be returned status code "200" and a message "OK"