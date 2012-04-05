class Employee
  include Mongoid::Document

  field :location
  field :note

  validates_presence_of :location

  references_many :articles
  has_one :contact, as: :contactable, dependent: :delete
end