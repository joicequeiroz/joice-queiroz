@stores @severity_major
Feature: Get Stores

   As a user
   I want to verify the Best Buy API Playground
   To validate the search all stores

   Background: Endpoint
      Given I get endpoint from all stores "/stores"

   Scenario: Research all Stores
      When I send the GET verb to research all stores
      Then will be returned status code "200" and a message "OK"
      And I will see the array all stores, like "Minnetonka"

   Scenario: Research the stores in Minnesota
      When I send the GET verb to research the stores in Minnesota
      Then will be returned status code "200" and a message "OK"
      And I will see the array by stores in Minnesota "MN" state

   Scenario: Research the stores that sell Apple products
      When I send the GET verb to research the stores sell Apple products
      Then will be returned status code "200" and a message "OK"
      And I will see the array by selling Apple products, like "Minnetonka"

   Scenario: Research the stores Within ten Miles of Beverly Hills
      When I send the GET verb to research the stores within ten miles of Beverly Hills
      Then will be returned status code "200" and a message "OK"
      And I will see the array by within ten miles of Beverly Hills, like "11301 W Pico Blvd"