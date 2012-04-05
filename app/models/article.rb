class Article
  include Mongoid::Document

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

  referenced_in :producer
  referenced_in :distributor
  referenced_in :employee

end