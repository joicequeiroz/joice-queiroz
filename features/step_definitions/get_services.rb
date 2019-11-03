Given("I get endpoint from all services {string}") do |api|
    @api = api
    @header = { 'Content-Type': "application/json" }
  end
  
  When("I send the GET verb in research all services") do
    $response = HTTParty.get("http://localhost:3030/services", headers: @header)
  end