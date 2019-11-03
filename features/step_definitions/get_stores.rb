Given("I get endpoint from all stores {string}") do |api|                   
  @api = api
  @header = { 'Content-Type': "application/json" }
end                                                                            
                                                                               
When("I send the GET verb to research all stores") do                            
  $response = HTTParty.get("http://localhost:3030/stores", headers: @header)
  puts $response.body
end                                                                            
                                                                               
When("I send the GET verb to research the stores in Minnesota") do                     
  $response = HTTParty.get("http://localhost:3030/stores?state=MN", headers: @header)
  puts $response.body
end                                                                            
                                                                               
When("I send the GET verb to research the stores sell Apple products") do              
  $response = HTTParty.get("http://localhost:3030/stores?service.name=Apple Shop", headers: @header)
  puts $response.body
end                                                                            
                                                                               
When("I send the GET verb to research the stores within ten miles of Beverly Hills") do
  $response = HTTParty.get("http://localhost:3030/stores?near=90210&service.name=Windows%20Store", headers: @header)
  puts $response.body
end                                                                            