class User
  include Mongoid::Document

  belongs_to :contact

  validates_presence_of :email, :password, :contact
  	
end
