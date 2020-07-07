class Person < ApplicationRecord
 validates :first_name, :last_name, :email, :password, presence: true
 validates_length_of :first_name, :minimum =>2
 validates_length_of :last_name, :minimum =>2
 validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
