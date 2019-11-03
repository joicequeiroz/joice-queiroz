Given("I get endpoint from a products {string}") do |api|                 
    @api = api
    @id = Product.create.parsed_response["id"]
    @header = { 'Content-Type': "application/json" }
  end                                                                          
                                                                               
  When("I send the GET verb to search a product") do                           
    $response = HTTParty.get("http://localhost:3030/products/#{@id}", headers: @header)
    puts $response.body
  end