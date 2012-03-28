class Article
  include Mongoid::Document

  belongs_to :producer
  belongs_to :distributor
  belongs_to :employee

end
