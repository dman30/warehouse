class Article
  include Mongoid::Document

  belongs_to :producer
  belongs_to :distributor
  belongs_to :employee

  validates_presence_of :name, :serial_no, :barcode, :producer, :distributor,
  	:purchase_date, :warranty_expiration

end
