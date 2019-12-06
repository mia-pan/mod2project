# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Product.destroy_all
Brand.destroy_all
User.destroy_all
Post.destroy_all

skincare = Category.create(name: "skincare")
selfcare = Category.create(name: "selfcare")
fashion = Category.create(name: "fasion")
car  = Category.create(name: "car")
digital = Category.create(name: "digital") 

uniqlo = Brand.create(name: "uniqlo", country: "japan")
yamaha = Brand.create(name: "yamaha", country: "janpan")
shiseido = Brand.create(name: "shiseido", country: "japan")
kiehls = Brand.create(name: "kiehls", country: "USA")
american_eagle = Brand.create(name: "american eagle", country: "USA")
columbia_sportswear = Brand.create(name: "columbia Sportswear", country: "USA")
honda = Brand.create(name: "honda", country: "japan")
jeep =Brand.create(name: "jeep", country: "USA")

moisturizers = Product.create(name: "moisturizers", category: skincare, brand: shiseido)
cleansers = Product.create(name: "cleansers", category: skincare, brand: shiseido)
treatments = Product.create(name: "treatments", category: skincare, brand: kiehls)
suncare = Product.create(name: "suncare", category: skincare,brand: kiehls)

cloth = Product.create(name: "cloth", category: fashion, brand: uniqlo)
jewelry = Product.create(name: "jewelry", category: fashion, brand: uniqlo)
shoes = Product.create(name: "shoes", category: fashion, brand: american_eagle)
furniture = Product.create(name: "furniture", category: fashion, brand: american_eagle)

suv = Product.create(name: "suv", category: car, brand: honda)
motorcycle = Product.create(name: "motorcycle", category: car, brand: honda)
acura_autos = Product.create(name: "acura autos", category: car, brand: jeep)
aircraft = Product.create(name: "aircraft", category: car, brand: jeep)

mia = User.create(name: "mia", age: "24", follower_name: "bahay, robinson, Ix, devin")
bahay = User.create(name: "bahay", age: "35", follower_name: "mia,robinson, Ix, devin")
Ix = User.create(name: "Ix", age: "30", follower_name: "bahay,robinson, mia, devin")
robinson = User.create(name: "robinson", age: "21", follower_name: "mia,bahay, Ix, devin")
devin = User.create(name: "devin", age: "30", follower_name: "mia,robinson, Ix, bahay")

# "%B %d, %Y at %k:%M"
post1 = Post.create(review: "Moisturizer to offer intense hydration and soothing benefits 
                            for even the most sensitive skin types.", 
likes: 0,post_datetime: DateTime.new(2019, 11, 01, 12, 00, 0), user: mia, product: moisturizers)

post2 = Post.create(review: "The best sunscreen has an SPF of at least 30 and is labeled both
                              broad spectrum and water-resistant.", 
likes: 1, post_datetime: DateTime.new(2019, 11, 02, 13, 00, 0), user: bahay, product: suncare)


post3 = Post.create(review: "Entry-level sport motorcycles from Kawasaki that punch above 
                                their weight.",
likes: 2, post_datetime: DateTime.new(2019, 11, 03, 14, 00, 0), user: Ix, product: motorcycle)

post4 = Post.create(review: " The small airline plans to eventually convert its entire fleet 
                              of piston and turbine seaplanes to electric powerplants.",
likes: 3, post_datetime: DateTime.new(2019, 11, 04, 15, 00, 0), user: robinson, product: aircraft)

post5 = Post.create(review: "Whether you’re a busy professional in need of a perfect small 
                              space solution for your condo or home.",
likes: 4, post_datetime: DateTime.new(2019, 11, 05, 16, 00, 0), user: devin, product: furniture)



