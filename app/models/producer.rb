class Producer
  include Mongoid::Document
  
  belongs_to :contact
  has_many :articles
  
end
