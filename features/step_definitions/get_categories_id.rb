Given("I get endpoint from a categories {string}") do |api|
    @api = api
    @id = Categories.create.parsed_response["id"]
    @header = { 'Content-Type': "application/json" }
end

When("I send the GET verb to search a categories") do
    $response = HTTParty.get("http://localhost:3030/categories/#{@id}", headers: @header)
end