Given("I get endpoint from new categories {string}") do |api|
  @api = api
  @id = Faker::Alphanumeric.alphanumeric(number: 10)
  @name = Faker::Commerce.product_name

  @body = {
    'id': @id,
    'name': @name
  }.to_json

  @header = { 'Content-Type': "application/json" }
  end
  
  When("I send the POST verb in the categories") do
    $response = HTTParty.post("http://localhost:3030/categories", body: @body, headers: @header)
  end