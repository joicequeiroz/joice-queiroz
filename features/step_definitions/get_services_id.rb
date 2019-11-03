Given("I get endpoint from a services {string}") do |api|
    @api = api
    @id = Services.create.parsed_response["id"]
    @header = { 'Content-Type': "application/json" }
  end
  
  When("I send the GET verb to research a service") do
    $response = HTTParty.get("http://localhost:3030/services/#{@id}", headers: @header)
    @verify_id = $response.parsed_response["id"]
    expect(@verify_id).to eql(@id)
  end