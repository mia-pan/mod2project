# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
skincare = Category.create(name: "skincare")
selfcare = Category.create(name: "selfcare")
fashion = Category.create(name: "fasion")
car  = Category.create(name: "car")
digital = Category.create(name: "digital") 
brand = Category.create(name: "band") 

moisturizers = Product.create(name: "moisturizers")
cleansers = Product.create(name: "cleansers")
treatments = Product.create(name: "treatments")
suncare = Product.create(name: "suncare")
