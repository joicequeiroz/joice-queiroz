  When("I send the PATCH verb to update a stores") do
    @upd_name = Faker::Company.name
    @body = {
      'name': @upd_name
    }.to_json                           
    $response = HTTParty.patch("http://localhost:3030/stores/#{@id}", body: @body, headers: @header)
  end

  Then("I will be the data of the stores is change") do
    $response = HTTParty.get("http://localhost:3030/stores/#{@id}", headers: @header)
    @name = $response.parsed_response["name"]
    expect(@name).to eql(@upd_name)
  end