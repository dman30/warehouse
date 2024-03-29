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

  def full_name
    if self.title != ""
      self.gender + ' ' + self.title + ' ' + self.first_name + ' ' + self.last_name
    else
      self.gender + ' ' + self.first_name + ' ' + self.last_name      
    end
  end

end