Given("I get endpoint from all services {string}") do |api|
    @api = api
    @header = { 'Content-Type': "application/json" }
  end
  
  When("I send the Get verb in the all services") do
    $response = HTTParty.get("http://localhost:3030/services", headers: @header)
  end