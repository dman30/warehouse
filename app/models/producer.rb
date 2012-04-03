class Producer
  include Mongoid::Document
  
  belongs_to :contact
  has_many :articles

  field :name, :type => String
  field :note, :type => String
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
