class Contact
  include Mongoid::Document
  
  has_many :employees
  has_many :distributors
  has_many :producers
 
end
