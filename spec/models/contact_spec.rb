require 'spec_helper'

describe Contact do

  before :each do
    Producer.delete_all
    Distributor.delete_all
  end

  context "Validation" do
    before :each do
      @contact = FactoryGirl.create(:contact)
    end

    [ :gender,
      :first_name, 
      :last_name, 
      :company_name,
      :phone, 
      :mobile, 
      :email,
      :street1,
      :zipcode,
      :town,
      :country
    ].each do |attribute|

      it "should not be valid without a #{attribute}" do
        @contact.send("#{attribute}=", nil)
        @contact.should have(1).error_on(attribute)
      end
    end
  end

  context "Response" do
    before :each do
      @contact = FactoryGirl.create(:contact)
    end

    [ :website,
      :street2,
      :title,
      :note
    ].each do |attribute|

      it "should respond to #{attribute}" do
        @contact.should respond_to(attribute)
      end
    end
  end

  context "Association" do
    it "should have a Producer" do
      contact = FactoryGirl.create(:contact)
      producer = FactoryGirl.create(:producer)

      contact.should respond_to(:producer)
    end

    it "should have a Distributor" do
      # created_distributor = FactoryGirl.create(:distributor)

      # contact = FactoryGirl.create(:contact)
      # contact.distributor = created_distributor
      # contact.save

      # contact.distributor.to_a.count.should == 1
    end

    it "should have an Employee" do
      pending
    end
  end
end