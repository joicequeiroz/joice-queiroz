class Categories
  include HTTParty

  def self.create
    @id = Faker::Alphanumeric.alphanumeric(number: 10)
    @name = Faker::Commerce.product_name

    @body = {
      'id': @id,
      'name': @name,
    }.to_json

    @header = { 'Content-Type': "application/json" }
    $response = HTTParty.post("http://localhost:3030/categories", body: @body, headers: @header)
  end
end
