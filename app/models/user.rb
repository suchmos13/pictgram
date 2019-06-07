class User < ApplicationRecord
  
validates :name,presence: true
validates :email, presence: true ,format: {with: /\A\S+@\S+\.\S+\z/}
validates :name,length: { maximum: 20 }
validates :password,length: { minimum: 1, maximum: 10 },format: {/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i}


has_secure_password
end
