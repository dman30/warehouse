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
end