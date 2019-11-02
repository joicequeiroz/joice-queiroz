  When("I send the DELETE verb to search a product") do                           
    $response = HTTParty.delete("http://localhost:3030/products/#{@id}", headers: @header)
  end

  Then("the product will be deleted") do
    $response = HTTParty.get("http://localhost:3030/products/#{@id}", headers: @header)
    @name = $response.parsed_response["name"]
    expect(@name).to eql("NotFound")
    @code = $response.parsed_response["code"]
    expect(@code).to eql(404)  
  end