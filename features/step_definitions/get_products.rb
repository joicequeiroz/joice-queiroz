Given("I get endpoint from all products {string}") do |api|
    @api = api
    @header = { 'Content-Type': "application/json" }
  end
  
  When("I send the Get verb in the products") do
    $response = HTTParty.get("http://localhost:3030/products", headers: @header)
  end

  When("I send the Get verb in the by highest priced products") do
    $response = HTTParty.get("http://localhost:3030/products?$sort[price]=-1", headers: @header)
      puts $response.body
  end

  When("I send the Get verb in the products name and description only") do
    $response = HTTParty.get("http://localhost:3030/products?$select[]=name&$select[]=description", headers: @header)
      puts $response.body
  end

  When("I send the Get verb in the products with price") do
    $response = HTTParty.get("http://localhost:3030/products?category.name=TVs&price[$gt]=500&price[$lt]=800&shipping[$eq]=0", headers: @header)
      puts $response.body
  end