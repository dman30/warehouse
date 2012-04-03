class Employee
  include Mongoid::Document
  
	belongs_to :contact
  has_many :articles

  field :name, :type => String
  field :location, :type => String

  validates_presence_of :location#, :contact
  
end
