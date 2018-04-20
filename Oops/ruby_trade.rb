# frozen_string_literal: true

$LOAD_PATH << '.'
require 'ruby_buyer_seller.rb'
require 'ruby_products.rb'

User.import_user_data
puts User.all
puts
buyer_object = Buyer.all.first
puts buyer_object.full_name
puts buyer_object.age
puts
seller_object = Seller.all.first
puts seller_object.full_name
puts seller_object.age
puts
Products.import_product_data
Prabhu.all.each { |eachdetail| p eachdetail }
Alex.all.each { |eachdetail| p eachdetail }
Meena.all.each { |eachdetail| p eachdetail }
