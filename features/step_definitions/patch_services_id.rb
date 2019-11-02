When("I send the PATCH verb to update a services") do
    @upd_name = Faker::Books::CultureSeries.civ
    @body = {
      'name': @upd_name
    }.to_json                           
    $response = HTTParty.patch("http://localhost:3030/services/#{@id}", body: @body, headers: @header)
  end
  
  Then("I will be the data of the services is change") do
    $response = HTTParty.get("http://localhost:3030/services/#{@id}", headers: @header)
    @name = $response.parsed_response["name"]
    expect(@name).to eql(@upd_name)
  end