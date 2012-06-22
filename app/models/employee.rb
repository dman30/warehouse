class Employee
  include Mongoid::Document

  has_many :articles
  has_one :contact, as: :contactable, dependent: :destroy, :autosave => true
  accepts_nested_attributes_for :contact, :autosave => true

  field :gender
  field :title
  field :first_name
  field :last_name
  field :location
  field :note

  validates_presence_of :gender, :first_name, :last_name, :location

  def full_name
    if self.title != ""
      self.gender + ' ' + self.title + ' ' + self.first_name + ' ' + self.last_name
    else
      self.gender + ' ' + self.first_name + ' ' + self.last_name
    end
  end

end
