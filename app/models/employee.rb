class Employee
  include Mongoid::Document

  field :gender
  field :first_name
  field :last_name
  field :location
  field :note

  validates_presence_of :gender, :first_name, :last_name, :location

  references_many :articles
  has_one :contact, as: :contactable, dependent: :delete
end