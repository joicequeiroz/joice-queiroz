Given("I get endpoint from new services {string}") do |api|
  @api = api
  @name = Faker::Books::CultureSeries.civ

  @body = {
    'name': @name
  }.to_json

  @header = { 'Content-Type': "application/json" }
  end
                                                                               
  When("I send the POST verb in the services") do                              
    $response = HTTParty.post("http://localhost:3030/services", body: @body, headers: @header)
    @verify_id = $response.parsed_response["name"]
    expect(@verify_id).to eql(@name)
  end

  When("I send the POST verb in the services without data") do
    @body = {
      'name': nil
    }.to_json                        
    $response = HTTParty.post("http://localhost:3030/services", body: @body, headers: @header)      
  end                                                                                   
                                                                                        
  When("I send the POST verb in the services with negative values for string fields") do
    @body = {
      'name': 123456
    }.to_json                        
    $response = HTTParty.post("http://localhost:3030/services", body: @body, headers: @header)     
  end                                                                                   
                                                                                        
  When("I send the POST verb in the services without body") do                          
    $response = HTTParty.post("http://localhost:3030/services", headers: @header)          
  end                                                                                   