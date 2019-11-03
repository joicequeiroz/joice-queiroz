@products
Feature: Create Product

   As a user
   I want to verify the Best Buy API Playground
   To validate the creation of product

   Background: Endpoint
      Given I get endpoint from new products "/products"

   Scenario: Create a new product
      When I send the POST verb in the products
      Then will be returned status code "201" and a message "Created"

   Scenario: Creating a product without data for mandatory fields
      When I send the POST verb in the products without data
      Then will be returned status code "400" and a message "Bad Request"

   Scenario: Creating a product with negative values for integer fields
      When I send the POST verb in the products with negative values for integer fields
      Then will be returned status code "400" and a message "Bad Request"

   Scenario: Creating a product with negative values for string fields
      When I send the POST verb in the products with negative values for string fields
      Then will be returned status code "400" and a message "Bad Request"

   Scenario: Creating a product without body
      When I send the POST verb in the products without body
      Then will be returned status code "400" and a message "Bad Request"