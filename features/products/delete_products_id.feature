@product
Feature: Delete Product

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the delete a products

Background: Endpoint
   Given I get endpoint from a products "/products"

   Scenario: Delete a products
   When I send the DELETE verb to search a product
   Then will be returned status code "200" and a message "OK"
   And the product will be deleted