class Article
  include Mongoid::Document

  field :name, :type => String
  field :buying_date => DateTime
  field :barcode => String

  # attr_reader :name, :buying_date

end