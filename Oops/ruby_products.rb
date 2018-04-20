# frozen_string_literal: true

require 'yaml'
# Products Class
class Products
  @@products = {}
  ATTR_USER = %i[name seller price category].freeze

  ATTR_USER.each do |field|
    attr_accessor field
  end

  def initialize(product_detail)
    # It will initialize details of all fields
    self.name = product_detail[:name]
    self.seller = product_detail[:seller]
    self.price = product_detail[:price]
    self.category = product_detail[:category]
  end

  def self.import_product_data
    # It will be used to get all data from yaml files and set them to a hash
    product_details = YAML.load_file 'ruby_pro_data.yaml'
    product_details.each do |product_detail|
      @@products[product_detail[:seller]] ||= []
      @@products[product_detail[:seller]] << new(product_detail)
    end
  end

  def self.all
    # It will return all the values stored in hash
    @@products
  end
end

# Prabhu Class
class Prabhu < Products
  def self.all
    # Calling method all of Base class
    super['prabhu']
  end
end

# Meena Class
class Meena < Products
  def self.all
    # Calling method all of Base class
    super['meena']
  end
end

# Alex Class
class Alex < Products
  def self.all
    # Calling method all of Base class
    super['alex']
  end
end
