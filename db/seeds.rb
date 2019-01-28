# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Product.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('categories')
ActiveRecord::Base.connection.reset_pk_sequence!('products')

clothing = Category.create!(name: 'Clothing')
shoes = Category.create!(name: 'Shoes')
accessories = Category.create!(name: 'accessories')

product1 = Product.create!(title: 'PLEATED DRESS', image_url: 'product-1.jpg',
							price: 799, category_id: 1)
product2 = Product.create!(title: 'COLOUR BLOCK SACK DRESS', image_url: 'product-2.jpg',
							price: 799, category_id: 1)
product3 = Product.create!(title: 'CHECKED SHIRT DRESS', image_url: 'product-3.jpg',
							price: 1199, category_id: 1)
product4 = Product.create!(title: 'CUT-OUT DRESS', image_url: 'product-4.jpg',
							price: 799, category_id: 1)
product5 = Product.create!(title: 'DRESS', image_url: 'product-5.jpg',
							price: 499, category_id: 1)
product6 = Product.create!(title: 'SATIN FINISH PLAYSUIT DRESS', image_url: 'product-6.jpg',
							price: 699, category_id: 1)

product7 = Product.create!(title: 'KANIMAL PRINT LEATHER BALLERINAS', image_url: 'product-7.jpg',
							price: 999, category_id: 2)
product8 = Product.create!(title: 'BALLERINAS WITH BOW', image_url: 'product-8.jpg',
							price: 499, category_id: 2)
product9 = Product.create!(title: 'MAXI SOLE SNEAKERS', image_url: 'product-9.jpg',
							price: 999, category_id: 2)
product10 = Product.create!(title: 'PCONTRASTING SNEAKERS', image_url: 'product-10.jpg',
							price: 999, category_id: 2)
product11 = Product.create!(title: 'MAXI SOLE MESH SNEAKERS', image_url: 'product-11.jpg',
							price: 999, category_id: 2)
product12 = Product.create!(title: 'PRINTED LEATHER LOAFERS', image_url: 'product-12.jpg',
							price: 1299, category_id: 2)

product13 = Product.create!(title: 'WOOL BERET', image_url: 'product-13.jpg',
							price: 399, category_id: 3)
product14 = Product.create!(title: 'CHECKED NAUTICAL CAP', image_url: 'product-14.jpg',
							price: 399, category_id: 3)
product15 = Product.create!(title: 'PRINTED SCARF', image_url: 'product-15.jpg',
							price: 499, category_id: 3)
product16 = Product.create!(title: 'CHECK SCARF', image_url: 'product-16.jpg',
							price: 459, category_id: 3)
product17 = Product.create!(title: 'ANIMAL PRINT SCARF', image_url: 'product-17.jpg',
							price: 459, category_id: 3)
product18 = Product.create!(title: 'CHAIN PRINT SOFT-TOUCH SCARF', image_url: 'product-18.jpg',
							price: 459, category_id: 3)
