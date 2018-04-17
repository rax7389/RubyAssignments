
$LOAD_PATH << '.'
require 'ruby_buyer_seller.rb'
require 'ruby_products.rb'

user_data_object = UserData.new
puts 'UserDetails:-'
user_object = BuyerSeller.new
puts user_object.user_details user_data_object.get_alluser_data
puts "\nBuyerName:-"
puts user_object.user_buyer_name user_data_object.get_fivthuser_data
puts "\nSellerName:-"
puts user_object.user_seller_name user_data_object.get_secounduser_data
puts "\nDate of Birth:-"
puts user_object.user_dob user_data_object.get_firstuser_data
puts "\nBuyer Details:-"
puts user_object.buyer_details_list user_data_object.get_alluser_data
puts "\nSeller Details:-"
puts user_object.seller_details_list user_data_object.get_alluser_data
puts "\nSpecific User details:-"
puts user_object.specific_user_details user_data_object.get_alluser_data
pro_data_object = ProductData.new
puts "\nProductDetails:-"
product_object = Product.new
puts product_object.product_details pro_data_object.get_allpro_data