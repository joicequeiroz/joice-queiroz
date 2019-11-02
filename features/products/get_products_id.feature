@product
Feature: Get Product

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the reaserch a products

Background: Endpoint
   Given I get endpoint from a products "/products"

   Scenario: Get a products
   When I send the GET verb to search a product
   Then will be returned status code "200" and a message "OK"