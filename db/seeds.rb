# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  products = Product.create([{ name: 'Sandwich Maker', price: 1000 }, { name: 'Mixer Grinder', price: 2500 }])
  Review.create(name: 'Luke', product: products.first, review: "This works fine and deserves a 5 star")
  Review.create(name: 'Mike', product: products.last, review: "This works good and but noise level is high")
