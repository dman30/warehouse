class Contact
  include Mongoid::Document

  belongs_to :contactable, polymorphic: true
  
  field :company_name
  field :gender
  field :title
  field :first_name
  field :last_name
  field :phone
  field :mobile
  field :email
  field :website
  field :street1
  field :street2
  field :zipcode
  field :town
 	field :country
  field :note

end