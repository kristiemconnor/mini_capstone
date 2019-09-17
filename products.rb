require "HTTP"
require "TTY-TABLE"

system "clear"

response = HTTP.get("http://localhost:3000/api/allproducts")

product_info = response.parse

pp product_info