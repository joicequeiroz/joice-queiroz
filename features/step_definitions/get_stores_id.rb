Given("I get endpoint from a stores {string}") do |api|                   
    @api = api
    @id = Stores.create.parsed_response["id"]
    @header = { 'Content-Type': "application/json" }
  end                                                                          
                                                                               
  When("I send the GET verb to research a stores") do                                 
    $response = HTTParty.get("http://localhost:3030/stores/#{@id}", headers: @header)
    @verify_id = $response.parsed_response["id"]
    expect(@verify_id).to eql(@id)
  end