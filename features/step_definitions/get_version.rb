Given("I get endpoint from a utilities {string}") do |api|
    @api = api
    @header = { 'Content-Type': "application/json" }
  end
  
  When("I send the GET verb to search version") do
    $response = HTTParty.get("http://localhost:3030/version", headers: @header)
    puts $response.body
  end