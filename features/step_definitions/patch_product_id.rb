  When("I send the PATCH verb to update a product") do
    @upd_name = Faker::Commerce.product_name
    @body = {
      'name': @upd_name
    }.to_json                           
    $response = HTTParty.patch("http://localhost:3030/products/#{@id}", body: @body, headers: @header)
  end

  Then("I will be the data of the product is change") do
    $response = HTTParty.get("http://localhost:3030/products/#{@id}", headers: @header)
    @name = $response.parsed_response["name"]
    expect(@name).to eql(@upd_name)
  end