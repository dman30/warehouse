class Article
  include Mongoid::Document

  field :name, :type => String
  field :buying_date => Time
  field :barcode => String
  belongs_to :producer
  belongs_to :distributor

end