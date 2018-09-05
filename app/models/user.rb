class User < ApplicationRecord
  has_many :bookings
  #Validations
   validates_presence_of :first_name, :email, :password_digest
   validates :email, uniqueness: true

   #encrypt password
   has_secure_password
end
