class UserData
  @@user_data = [
  { first_name: 'alex', last_name: 'newman', date_of_birth: '01-05-1982',
    address: 'sapna sangeeta', role: 'buyer' },
  { first_name: 'alex', last_name: 'Panc', date_of_birth: '12-04-1990',
    address: 'bhanwar kua', role: 'seller' },
  { first_name: 'Meena', last_name: 'Pallanipppan', date_of_birth: '03-02-1988',
    address: 'sapna sangeeta', role: 'seller' },
  { first_name: 'Prabhu', last_name: 'Sharma', date_of_birth: '11-02-1992',
    address: 'geeta bhawan', role: 'seller' },
  { first_name: 'Sundar', last_name: 'Pichai', date_of_birth: '11-05-1983',
    address: 'vijay nagar', role: 'buyer' }
] # inputlist of userdata
  def get_alluser_data
    @@user_data
  end
  def get_fivthuser_data
    @@user_data[4]
  end
  def get_secounduser_data
    @@user_data[1]
  end
  def get_firstuser_data
    @@user_data[0]
  end
end