class User < ApplicationRecord
  
  
   
   
  
validates :name,presence: true
validates :email, presence: true ,format: {with: /\A\S+@\S+\.\S+\z/}
validates :name,length: { maximum: 20 }
validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i}


has_secure_password

has_many :topics

end
