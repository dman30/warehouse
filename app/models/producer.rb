class Producer
  include Mongoid::Document

  has_many :articles
  has_one :contact, as: :contactable, dependent: :destroy, :autosave => true
  accepts_nested_attributes_for :contact, :autosave => true

  field :company_name
  field :note

  validates_presence_of :company_name
  validates_uniqueness_of :company_name

end
