class Distributor
  include Mongoid::Document

  references_many :articles
  has_one :contact, as: :contactable, dependent: :delete

  field :company_name
  field :note

  validates_presence_of :company_name
  validates_uniqueness_of :company_name
end
