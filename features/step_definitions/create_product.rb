Given("I get endpoint from new products {string}") do |api|
  @api = api
  @name = Faker::Commerce.product_name
  @type = Faker::Commerce.material
  @price = Faker::Commerce.price
  @upc = Faker::Number.number(digits: 12).to_s
  @description = Faker::Marketing.buzzwords
  @model = Faker::Device.model_name

  @body = {
    'name': @name,
    'type': @type,
    'upc': @upc,
    'price': @price,
    'description': @description,
    'model': @model,
  }.to_json

  @header = { 'Content-Type': "application/json" }
end

When("I send the POST verb in the products") do
  $response = HTTParty.post("http://localhost:3030/products", body: @body, headers: @header)
end

When("I send the POST verb in the products without data") do
  @body = {
    'name': nil,
    'type': @type,
    'upc': @upc,
    'price': @price,
    'description': @description,
    'model': @model,
  }.to_json
  $response = HTTParty.post("http://localhost:3030/products", body: @body, headers: @header)
end

When("I send the POST verb in the products with negative values for integer fields") do
  @body = {
    'name': @name,
    'type': @type,
    'upc': @upc,
    'price': "22.00",
    'description': @description,
    'model': @model,
  }.to_json
  $response = HTTParty.post("http://localhost:3030/products", body: @body, headers: @header)
end

When("I send the POST verb in the products with negative values for string fields") do
  @body = {
    'name': 123456,
    'type': @type,
    'upc': @upc,
    'price': @price,
    'description': @description,
    'model': @model,
  }.to_json
  $response = HTTParty.post("http://localhost:3030/products", body: @body, headers: @header)
end

When("I send the POST verb in the products without body") do
  $response = HTTParty.post("http://localhost:3030/products", headers: @header)
end

Then("will be returned status code {string} and a message {string}") do |status, information|
  expect($response.code.to_s).to eq(status)
  puts "Response code: #{$response.code}"
  expect($response.message).to eq(information)
  puts "Response message: #{$response.message}"
end
