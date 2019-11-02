Given("I get endpoint from new stores {string}") do |api|
  @api = api
  @name = Faker::Company.name
  @type = Faker::Company.type
  @address = Faker::Address.street_address
  @city = Faker::Address.city
  @state = Faker::Address.state
  @zip = Faker::Address.zip_code
  @lat = Faker::Address.latitude
  @lng = Faker::Address.longitude
  @hours = "Mon: 10-9; Tue: 10-9; Wed: 10-9; Thurs: 10-9; Fri: 10-9; Sat: 10-9; Sun: 10-8"

  @body = {
    'name': @name,
    'type': @type,
    'address': @address,
    'city': @city,
    'state': @state,
    'zip': @zip,
    'lat': @lat,
    'lng': @lng,
    'hours': @hours,
  }.to_json

  @header = { 'Content-Type': "application/json" }
end

When("I send the POST verb in the stores") do
  $response = HTTParty.post("http://localhost:3030/stores", body: @body, headers: @header)
end
