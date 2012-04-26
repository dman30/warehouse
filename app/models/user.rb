class User
  include Mongoid::Document

  # has_one :contact, as: :contactable, dependent: :delete

  field :provider
  field :uid
  field :name
  field :email

	# http://railscasts.com/episodes/158-factories-not-fixtures?autoplay=true

  # validates_presence_of :email
  # validates_uniqueness_of :email
  # validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  # validates_presence_of :password, :on => :create
  # validates_confirmation_of :password
  # validates_length_of :password, :minimum => 6, :allow_blank => true

  def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth['provider']
    user.uid = auth['uid']
    if auth['info']
       user.name = auth['info']['name'] || ""
       user.email = auth['info']['email'] || ""
    end
  end
end
  	
end
