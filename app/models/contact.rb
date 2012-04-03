class Contact
  include Mongoid::Document
  
  has_many :employees
  has_many :distributors
  has_many :producers

  field :gender, :type => String
  field :first_name, :type => String
  field :last_name, :type => String
  field :company_name, :type => String
  field :phone, :type => String
  field :mobile, :type => String
  field :email, :type => String
  field :street1, :type => String
  field :zipcode, :type => String
  field :town, :type => String
 	field :country, :type => String

 	validates_presence_of :gender, :first_name, :last_name, 
 		:company_name, :phone, :mobile,	:email, :street1,	
 		:zipcode, :town, :country
end
