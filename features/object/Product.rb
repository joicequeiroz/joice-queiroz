class Product
  include HTTParty

  def self.create
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
    $response = HTTParty.post("http://localhost:3030/products", body: @body, headers: @header)
  end
end
