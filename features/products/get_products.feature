@product
Feature: Get Product

   As an user
   I want to verify the Best Buy API Playground
   In order to validate the reaserch all products

Background: Endpoint
   Given I get endpoint from all products "/products"

   Scenario: Get all products
   When I send the Get verb in the products
   Then will be returned status code "200" and a message "OK"