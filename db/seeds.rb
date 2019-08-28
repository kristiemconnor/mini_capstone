# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(
  name: "Starburst", 
  price: 1,
  image_url: "https://actualize-onl-2019-07.slack.com/archives/DLKKCSJTW/p1567011178000200",
  description: "juicy",
  )
product.save

product = Product.new(
  name: "Kit Kats", 
  price: 2,
  image_url: "https://www.shelflife.ie/wp-content/uploads/2018/04/KitKat-350x350.jpg",
  description: "crunchy",
  )
product.save

product = Product.new(
  name: "Mints", 
  price: 3,
  image_url: "https://actualize-onl-2019-07.slack.com/archives/DLKKCSJTW/p1567011266000800",
  description: "fresh",
  )
product.save
