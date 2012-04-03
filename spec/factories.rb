FactoryGirl.define do
  
  factory :article do |f|
    f.name 'Name'
    f.category  'category'
    f.barcode 'barcode'
    f.serial_no '213'
    f.purchase_date '1.1.2100'
    f.warranty_expiration '2.2.2100'

    f.association :producer, :factory => :producer
    f.association :distributor, :factory => :distributor
  end

  factory :producer do |f|
  	f.name 'Hallo'
  end

  factory :distributor do |f|
  	f.name 'Hallo'
  end

  # http://railscasts.com/episodes/158-factories-not-fixtures?autoplay=true
  factory :user do |f|
    f.sequence(:username) { |n| "user#{n}" }
    f.password "secret"
    f.password_confirmation { |u| u.password }
    f.sequence(:email) { |n| "user#{n}@mail.com" }
  end
end