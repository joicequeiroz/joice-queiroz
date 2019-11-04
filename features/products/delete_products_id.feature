@products @severity_critical
Feature: Delete Product

   As a user
   I want to verify the Best Buy API Playground
   To validate the delete a products

Background: Endpoint
   Given I get endpoint from a products "/products"

   Scenario: Delete products
   When I send the DELETE verb to search a product
   Then will be returned status code "200" and a message "OK"
   And the product will be deleted