Given("I get endpoint from new categories {string}") do |api|
  @api = api
  @id = Faker::Alphanumeric.alphanumeric(number: 10)
  @name = Faker::Commerce.product_name

  @body = {
    'id': @id,
    'name': @name,
  }.to_json

  @header = { 'Content-Type': "application/json" }
end

When("I send the POST verb in the categories") do
  $response = HTTParty.post("http://localhost:3030/categories", body: @body, headers: @header)
end

When("I send the POST verb in the categories without data") do
  @body = {
    'id': nil,
    'name': nil,
  }.to_json
  $response = HTTParty.post("http://localhost:3030/categories", body: @body, headers: @header)
end

When("I send the POST verb in the categories with negative values for string fields") do
  @body = {
    'id': @id,
    'name': 123456,
  }.to_json
  $response = HTTParty.post("http://localhost:3030/categories", body: @body, headers: @header)
end

When("I send the POST verb in the categories without body") do
  $response = HTTParty.post("http://localhost:3030/categories", headers: @header)
end
