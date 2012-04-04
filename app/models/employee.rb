class Employee
  include Mongoid::Document
  
	belongs_to :contact
  has_many :articles

  field :location, :type => String
  field :note, :type => String

  validates_presence_of :location#, :contact
  
end
