# frozen_string_literal: true

require 'yaml'

# User Class
class User
  @@users = {}
  ATTR_USER = %i[first_name last_name date_of_birth address role].freeze

  ATTR_USER.each do |field|
    attr_accessor field
  end

  define_method 'full_name' do
    # It will return full name of user
    "#{first_name} #{last_name}"
  end

  define_method 'age' do
    # It will return age of the user
    Time.now.year - Date.parse(date_of_birth).year
  end

  def initialize(user_detail)
    # It will initialize details of all fields
    self.first_name = user_detail[:first_name]
    self.last_name = user_detail[:last_name]
    self.date_of_birth = user_detail[:date_of_birth]
    self.address = user_detail[:address]
    self.role = user_detail[:role]
  end

  def self.import_user_data
    # It will be used to get all data from yaml files and set them to a hash
    user_details = YAML.load_file 'ruby_user_data.yaml'
    user_details.each do |user_detail|
      @@users[user_detail[:role]] ||= []
      @@users[user_detail[:role]] << new(user_detail)
    end
  end

  def self.all
    # It will return all the values stored in hash
    @@users
  end
end

# Buyer Class
class Buyer < User
  def self.all
    super['buyer']
  end
end

# Seller Class
class Seller < User
  def self.all
    super['seller']
  end
end
