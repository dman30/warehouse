class Article
  include Mongoid::Document

  belongs_to :producer
  belongs_to :distributor
  belongs_to :employee

  field :category, :type => String
  field :name, :type => String
  field :barcode, :type => String
  field :serial_no, :type => String
  field :purchase_date, :type => String
  field :installation_date, :type => String
  field :warranty_expiration, :type => String
  field :note, :type => String

   validates_presence_of :category, :name, :barcode, :serial_no, 
     :purchase_date, :warranty_expiration,
     :producer, :distributor

end