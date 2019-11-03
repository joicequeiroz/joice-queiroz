@products
Feature: Get Product

   As a user
   I want to verify the Best Buy API Playground
   To validate the research all products

   Background: Endpoint
      Given I get endpoint from all products "/products"

   Scenario: Research all products
      When I send the GET verb in the products
      Then will be returned status code "200" and a message "OK"

   Scenario: Highest Priced Products
      When I send the GET verb in the by highest priced products
      Then will be returned status code "200" and a message "OK"

   Scenario: Product Name and Description Only
      When I send the GET verb in the products name and description only
      Then will be returned status code "200" and a message "OK"

   Scenario: TVs with free shipping and price between $500 and $800
      When I send the GET verb in the products with price
      Then will be returned status code "200" and a message "OK"