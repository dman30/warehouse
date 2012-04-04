class Contact
  include Mongoid::Document
  
  has_one :employee
  has_one :distributor
  has_one :producer

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

  field :website, :type => String
  field :street2, :type => String
  field :title, :type => String
  field :note, :type => String

 	validates_presence_of :gender, :first_name, :last_name, 
 		:company_name, :phone, :mobile,	:email, :street1,	
 		:zipcode, :town, :country
end
