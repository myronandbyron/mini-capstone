require 'unirest'

# response = Unirest.post("localhost:3000/users", 
#   parameters: {
#     name: "bob",
#     email: "bob@bob.com",
#     password: "password",
#     password_confirmation: "password"
#   }
# )

# user = response.body

response = Unirest.post("localhost:3000/user_token",
  parameters: {
    auth: {
      email: "mo@mobooya.com",
      password: "password"
    }
  }
)

jwt = response.body["jwt"]

Unirest.default_header("Authorization", "Bearer #{jwt}")

# response = Unirest.get("localhost:3000/all-products",

# jwt = ""
# Unirest.clear_default_headers()

p jwt

# CARTED PRODUCTS CREATE #
shopping = Unirest.post("http://localhost:3000/v1/carted_products", parameters: {
    product_id: 2,
    quantity: 64
  }
)


# CARTED PRODUCTS INDEX #
cart = Unirest.get("http://localhost:3000/v1/all-carted_products")

p shopping.body

