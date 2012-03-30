class Employee
  include Mongoid::Document
  
	belongs_to :contact
  has_many :articles

  validates_presence_of :location, :contact
  
end
