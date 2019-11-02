When("I send the PATCH verb to search a categories") do
    @upd_name = Faker::Commerce.product_name
    @body = {
      'name': @upd_name
    }.to_json                           
    $response = HTTParty.patch("http://localhost:3030/categories/#{@id}", body: @body, headers: @header)
  end
  
  Then("I will be the data of the categories is change") do
    $response = HTTParty.get("http://localhost:3030/categories/#{@id}", headers: @header)
    @name = $response.parsed_response["name"]
    expect(@name).to eql(@upd_name)
  end