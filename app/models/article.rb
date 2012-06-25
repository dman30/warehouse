class Article
  include Mongoid::Document
  # for handling form helper date_select
  include Mongoid::MultiParameterAttributes

  field :category
  field :name
  field :barcode
  field :serial_no
  field :purchase_date, :type => Date
  field :warranty_expiration, :type => Date

  field :installation_date, :type => Date
  field :note

  validates_presence_of :category,
    :name, :barcode, :serial_no,
    :purchase_date, :warranty_expiration,
    :producer, :distributor

  belongs_to :producer
  belongs_to :distributor
  belongs_to :employee

end
