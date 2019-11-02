When("I send the DELETE verb to search a services") do
    $response = HTTParty.delete("http://localhost:3030/services/#{@id}", headers: @header)
  end
  
  Then("the services will be deleted") do
    $response = HTTParty.get("http://localhost:3030/services/#{@id}", headers: @header)
    @name = $response.parsed_response["name"]
    expect(@name).to eql("NotFound")
    @code = $response.parsed_response["code"]
    expect(@code).to eql(404)
  end