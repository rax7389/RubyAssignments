$LOAD_PATH << '.'
require 'ruby_pro_data.rb'
# ProductClass
class Product
  def product_details(product)
    # It will return list of product objects
    product_details = ''
    product.each do |productno|
      productno.each do |key, value|
        product_details << "#{key} : #{value}"
      end
      product_details << "\n"
    end
    product_details
  end
end