Given("I get endpoint from all stores {string}") do |api|
  @api = api
  @header = { 'Content-Type': "application/json" }
end

When("I send the GET verb to research all stores") do
  $response = HTTParty.get("http://localhost:3030/stores", headers: @header)
end

Then("I will see the array all stores, like {string}") do |_array|
  @body = $response.parsed_response["data"]
  @body.each do |array|
    case array["name"]
    when "Minnetonka"
      puts array
    end
  end
end

When("I send the GET verb to research the stores in Minnesota") do
  $response = HTTParty.get("http://localhost:3030/stores?state=MN", headers: @header)
end

Then("I will see the array by stores in Minnesota {string} state") do |_array|
  @body = $response.parsed_response["data"]
  @body.each do |array|
    case array["state"]
    when "MN"
      puts array
    end
  end
end

When("I send the GET verb to research the stores sell Apple products") do
  $response = HTTParty.get("http://localhost:3030/stores?service.name=Apple Shop", headers: @header)
end

Then("I will see the array by selling Apple products, like {string}") do |_array|
  @body = $response.parsed_response["data"]
  @body.each do |array|
    case array["name"]
    when "Minnetonka"
      puts array
    end
  end
end

When("I send the GET verb to research the stores within ten miles of Beverly Hills") do
  $response = HTTParty.get("http://localhost:3030/stores?near=90210&service.name=Windows%20Store", headers: @header)
end

Then("I will see the array by within ten miles of Beverly Hills, like {string}") do |_array|
  @body = $response.parsed_response["data"]
  @body.each do |array|
    case array["address"]
    when "11301 W Pico Blvd"
      puts array
    end
  end
end