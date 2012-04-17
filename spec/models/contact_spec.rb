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

    [ :title,
      :website,
      :street2,
      :note
    ].each do |attribute|

      it "should respond to #{attribute}" do
        @contact.should respond_to(attribute)
      end
    end
  end

  context "Association" do
    before :each do
      @contact = FactoryGirl.create(:contact)
    end

    it "should have a Producer" do
      pending
    end

    it "should have a Distributor" do
      pending
    end

    it "should have an Employee" do
      pending
    end

  end
end