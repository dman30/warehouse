class User
  include Mongoid::Document
  
  attr_accessor :password

  	field :username, :type => String
  	field :email, :type => String
  	field :password, :type => String
  
  	validates_presence_of :username, :message => "is required"
	validates_presence_of :email, :message => "is required"
	validates_presence_of :password
	
end
