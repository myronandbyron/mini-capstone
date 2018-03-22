# I'll figure out what to do with you later :D
require 'unirest'

response = Unirest.post("localhost:3000/users", 
  parameters: {
    name: "bob",
    email: "bob@bob.com",
    password: "password",
    password_confirmation: "password"
  }
)

user = response.body

response = Unirest.post("localhost:3000/user_token",
  parameters: {
    auth: {
      email: "bob@bob.com",
      password: "password"
    }
  }
)

jwt = response.body["jwt"]

Unirest.default_header("Authorization", "Bearer #{jwt}")

response = Unirest.post("localhost:3000/all-products",
puts JSON.pretty_generate(response.body)



# jwt = ""
# Unirest.clear_default_headers()