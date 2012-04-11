class User
  include Mongoid::Document

  has_one :contact, as: :contactable, dependent: :delete

  field :email
  field :password

	# http://railscasts.com/episodes/158-factories-not-fixtures?autoplay=true

  validates_presence_of :email
  validates_uniqueness_of :email
  # validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_length_of :password, :minimum => 6, :allow_blank => true
  	
end
