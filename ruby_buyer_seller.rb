

$LOAD_PATH << '.'
require 'ruby_user_data.rb'
require 'date'

# BuyerSellerClass
class BuyerSeller
  def user_details(users)
    # It will return list of user objects
    user_details = ''
    users.each do |userno|
      userno.each do |key, value|
        user_details << "#{key} : #{value}" << '  '
      end
      user_details << "\n"
    end
    user_details
  end

  def user_buyer_name(user)
    # It will return the full name of buyer
    if user[:role] == 'buyer'
      return user[:first_name] << ' ' << user[:last_name]
    end
    'No detail Found'
  end

  def user_seller_name(user)
    # It will return the full name of seller
    if user[:role] == 'seller'
      return user[:first_name] << ' ' << user[:last_name]
    end
    'No detail Found'
  end

  def user_dob(userdateofbirth)
    # It will return age of user after calculating from date_of_birth
    Date.today.year - (Date.parse userdateofbirth[:date_of_birth]).year
  end

  def buyer_details_list(users)
    # It will return array of all the buyer objects
    user_buyer_name = ''
    users.each do |userno|
      userno.each do |_key, value|
        if value == 'buyer'
          user_buyer_name << userno[:first_name] << ' '
          user_buyer_name << userno[:last_name] << "\n"
        end
      end
    end
    user_buyer_name
  end

  def seller_details_list(users)
    # It will return array of all the buyer objects
    user_seller_name = ''
    users.each do |userno|
      userno.each do |_key, value|
        if value == 'seller'
          user_seller_name << userno[:first_name] << ' '
          user_seller_name << userno[:last_name] << "\n"
        end
      end
    end
    user_seller_name
  end

  def specific_user_details(users)
    # It will return array of all the userobjects whose first name is alex
    specific_user_name = ''
    users.each do |userno|
      userno.each do |_key, value|
        specific_user_name << value << ' ' if userno[:first_name] == 'alex'
      end
    end
    specific_user_name
  end
end
