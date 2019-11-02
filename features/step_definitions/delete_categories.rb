When("I send the DETELE verb to search a categories") do                     
    $response = HTTParty.delete("http://localhost:3030/categories/#{@id}", headers: @header)
  end                                                                          
                                                                               
  Then("the categories will be deleted") do                                    
    $response = HTTParty.get("http://localhost:3030/categories/#{@id}", headers: @header)
    @name = $response.parsed_response["name"]
    expect(@name).to eql("NotFound")
    @code = $response.parsed_response["code"]
    expect(@code).to eql(404)  
  end                                                                          