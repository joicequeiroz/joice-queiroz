@products @severity_critical
Feature: Patch Product

   As a user
   I want to verify the Best Buy API Playground
   To validate the update a products

   Background: Endpoint
      Given I get endpoint from a products "/products"

   Scenario: Update products
      When I send the PATCH verb to update a product
      Then will be returned status code "200" and a message "OK"
      And I will be the data of the product is change