class Contact
  include Mongoid::Document
  
  field :company_name
  field :gender
  field :first_name
  field :last_name
  field :phone
  field :mobile
  field :email
  field :street1
  field :zipcode
  field :town
 	field :country

  field :website
  field :street2
  field :title
  field :note

 	# validates_presence_of :gender, :first_name, :last_name, 
 	# 	:company_name, :phone, :mobile,	:email, :street1,	
 	# 	:zipcode, :town, :country

  belongs_to :contactable, polymorphic: true
end