When("I send the GET verb to search healthcheck") do
  $response = HTTParty.get("http://localhost:3030/healthcheck", headers: @header)
    puts $response.body
end