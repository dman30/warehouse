class Category
  include Mongoid::Document

  has_many :articles

  field :name

  validates_presence_of :name

end
