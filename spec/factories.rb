FactoryGirl.define do
  
  factory :article do |f|
    f.sequence(:name) { |n| "article#{n}" } 
    f.category 'category'
    f.barcode 'barcode'
    f.serial_no '213'
    f.purchase_date '1.1.2100'
    f.warranty_expiration '2.2.2100'

    f.association :producer, :factory => :producer
    f.association :distributor, :factory => :distributor
  end

  factory :producer do |f|
  	f.sequence(:name) { |n| "producer#{n}" }
  end

  factory :distributor do |f|
  	f.sequence(:name) { |n| "distributor#{n}" }
  end

  factory :employee do |f| 
    f.sequence(:name) { |n| "employee#{n}" }
    f.location "office_no"

    #f.association :contact, :factory => :contact
  end

  # factory :contact do |f|
    
  # end

  # http://railscasts.com/episodes/158-factories-not-fixtures?autoplay=true
  factory :user do |f|
    f.sequence(:username) { |n| "user#{n}" }
    f.password "secret"
    f.password_confirmation { |u| u.password }
    f.sequence(:email) { |n| "user#{n}@mail.com" }
  end
end