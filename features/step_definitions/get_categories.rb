Given("I get endpoint from all categories {string}") do |api|
    @api = api
    @header = { 'Content-Type': "application/json" }
  end
  
  When("I send the GET verb in the all categories") do
    $response = HTTParty.get("http://localhost:3030/categories", headers: @header)
    puts $response.body
  end

  When("I send the GET verb in the categories by name") do
    $response = HTTParty.get("http://localhost:3030/categories?$select[]=name", headers: @header)
    puts $response.body
  end

  When("I send the GET verb in the categories with TV") do
    $response = HTTParty.get("http://localhost:3030/categories?name[$like]=*TV*", headers: @header)
    puts $response.body
  end