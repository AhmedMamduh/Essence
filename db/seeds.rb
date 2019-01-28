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

product1 = Product.create!(title: 'Knot Front Mini Dress', image_url: 'product-1.jpg',
							price: 55, category_id: 1)
product2 = Product.create!(title: 'Knot Front Mini Dress', image_url: 'product-2.jpg',
							price: 88, category_id: 2)
