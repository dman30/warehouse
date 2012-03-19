class Article
  include Mongoid::Document

  field :name, :type => String

  attr_reader :name

end