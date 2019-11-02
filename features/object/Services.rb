class Services
  include HTTParty

  def self.create
    @name = Faker::Books::CultureSeries.civ

    @body = {
      'name': @name,
    }.to_json

    @header = { 'Content-Type': "application/json" }
    $response = HTTParty.post("http://localhost:3030/services", body: @body, headers: @header)
  end
end
