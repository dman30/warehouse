class User
  include Mongoid::Document
  
  validates_presence_of :username
end
