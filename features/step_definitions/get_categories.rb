Given("I get endpoint from all categories {string}") do |api|
    @api = api
    @header = { 'Content-Type': "application/json" }
  end
  
  When("I send the GET verb in the all categories") do
    $response = HTTParty.get("http://localhost:3030/categories", headers: @header)
  end