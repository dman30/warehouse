class Employee
  include Mongoid::Document
  
  references_many :articles
  has_one :contact, as: :contactable, dependent: :destroy
  accepts_nested_attributes_for :contact, :autosave => true

  field :gender
  field :first_name
  field :last_name
  field :location
  field :note

  validates_presence_of :gender, :first_name, :last_name, :location

end