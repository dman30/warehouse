require 'spec_helper'

describe User do
  
  before :each do
    User.delete_all
  end

  context "Validation" do
    before :each do
      @user = FactoryGirl.create(:user)
    end

    [ :email,
      :password
    ].each do |attribute|

      it "should not be valid without a #{attribute}" do
        @user.send("#{attribute}=", nil)
        @user.should have(1).error_on(attribute)
      end
    end
  end

  context "Response" do
    before :each do
      @user = FactoryGirl.create(:user)
    end

    it "should respond to note" do
      @user.should respond_to(:note)
    end
  end

  context "Association" do
    before :each do
      @user = FactoryGirl.create(:user)
    end

    it "should have a Contact" do
      contact = FactoryGirl.create(:contact)

      @user.contact = contact
      @user.save

      @user.contact.should_not be_nil
    end
  end
end
