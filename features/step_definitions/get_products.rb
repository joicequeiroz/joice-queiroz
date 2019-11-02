Given("I get endpoint from all products {string}") do |api|
    @api = api
    @header = { 'Content-Type': "application/json" }
  end
  
  When("I send the Get verb in the products") do
    $response = HTTParty.get("http://localhost:3030/products", headers: @header)
  end