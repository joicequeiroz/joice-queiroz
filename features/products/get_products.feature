@products @severity_major
Feature: Get Product

   As a user
   I want to verify the Best Buy API Playground
   To validate the research all products

   Background: Endpoint
      Given I get endpoint from all products "/products"

   Scenario: Research all products
      When I send the GET verb in the products
      Then will be returned status code "200" and a message "OK"
      And I will see the array by products "Incredible Leather Lamp"

   Scenario: Highest Priced Products
      When I send the GET verb in the by highest priced products
      Then will be returned status code "200" and a message "OK"
      And I will see the array by highest priced "Incredible Leather Lamp"

   Scenario: Product Name and Description Only
      When I send the GET verb in the products name and description only
      Then will be returned status code "200" and a message "OK"
      And I will see the array by product name"Incredible Leather Lamp"

   Scenario: TVs with free shipping and price between $500 and $800
      When I send the GET verb in the products with price
      Then will be returned status code "200" and a message "OK"