class Distributor
  include Mongoid::Document

  field :name
  field :note

  validates_presence_of :name
  validates_uniqueness_of :name

  references_many :articles
  has_one :contact, as: :contactable, dependent: :delete
end
