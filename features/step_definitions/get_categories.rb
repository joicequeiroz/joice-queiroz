Given("I get endpoint from all categories {string}") do |api|
  @api = api
  @header = { 'Content-Type': "application/json" }
end

When("I send the GET verb in all categories") do
  $response = HTTParty.get("http://localhost:3030/categories", headers: @header)
end

Then("I will see the array {string}") do |_array|
  @body = $response.parsed_response["data"]
  @body.each do |array|
    case array["name"]
    when "Gift Ideas"
      puts array
    end
  end
end

When("I send the GET verb in the categories by name") do
  $response = HTTParty.get("http://localhost:3030/categories?$select[]=name", headers: @header)
end

Then("I will see the array by name {string}") do |_array|
  @body = $response.parsed_response["data"]
  @body.each do |array|
    case array["name"]
    when "Gift Ideas"
      puts array
    end
  end
end

When("I send the GET verb in the categories with TV") do
  $response = HTTParty.get("http://localhost:3030/categories?name[$like]=*TV*", headers: @header)
end

Then("I will see the array for TV {string}") do |_array|
  @body = $response.parsed_response["data"]
  @body.each do |array|
    case array["name"]
    when "TV & Home Theater"
      puts array
    end
  end
end