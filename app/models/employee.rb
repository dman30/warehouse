class Employee
  include Mongoid::Document

  has_many :articles
end