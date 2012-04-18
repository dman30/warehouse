require 'spec_helper'

describe Contact do

  before :each do
    Producer.delete_all
    Distributor.delete_all
  end

  context "Response" do
    before :each do
      @contact = FactoryGirl.create(:contact)
    end

    [ :company_name,
      :gender,
      :title,
      :first_name, 
      :last_name, 
      :phone, 
      :mobile, 
      :email,
      :website,
      :street1,
      :street2,
      :zipcode,
      :town,
      :country,
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