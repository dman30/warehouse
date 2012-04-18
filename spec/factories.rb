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
  	f.sequence(:company_name) { |n| "producer#{n}" }    
  end

  factory :distributor do |f|
  	f.sequence(:company_name) { |n| "distributor#{n}" }
  end

  factory :employee do |f| 
    f.gender 'male'
    f.sequence(:first_name) { |n| "Firstname#{n}" }
    f.sequence(:last_name) { |n| "Lastname#{n}" }
    f.location "office_no"
  end

  factory :contact do |f|
    f.gender 'male'
    f.sequence(:first_name) { |n| "first_name#{n}" }
    f.sequence(:last_name) { |n| "last_name#{n}" }
    f.sequence(:company_name) { |n| "company#{n}" }
    f.sequence(:phone) { |n| "#{n}#{n}#{n}/#{n}#{n}#{n}#{n}#{n}#{n}" }
    f.sequence(:mobile) { |n| "#{n}#{n}#{n}#{n}/#{n}#{n}#{n}#{n}#{n}#{n}#{n}#{n}" }
    f.email { "#{first_name}.#{last_name}@#{company_name}.com".downcase }
    f.sequence(:street1) { |n| "#{n}street #{n}" }
    f.sequence(:zipcode) { |n| "#{n}#{n}#{n}#{n}#{n}" }
    f.sequence(:town) { |n| "town#{n}" }
    f.sequence(:country) { |n| "country#{n}" }
  end

  # http://railscasts.com/episodes/158-factories-not-fixtures?autoplay=true
  factory :user do |f|
    f.sequence(:email) { |n| "user#{n}@mail.com" }
    f.password "secret"
    f.password_confirmation { |u| u.password }
  end
end