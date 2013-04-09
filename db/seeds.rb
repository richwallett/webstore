# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# users = User.create!([{ email: 'email@email.com', password: 'firstpetname'},
#                 { email: 'my_email@email.com', password: 'mothersmaidenname'}])

products = Product.create!([{ name: 'Empty Water Bottle', price: 100.00, description: "Can be filled with water of your choice!"},
                      { name: 'Used Starbucks Cup', price: 50.00, description: "Can be recycled for morale."},
                      { name: 'Coachella Pin', price: 10000.00, description: "Attack Power +100"},
                      { name: 'Lenovo Mouse', price: 10.00, description: "Dexterity - 100"}])
