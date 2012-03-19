require 'spec_helper'

describe Contact do

  before :each do
    @contact = Contact.new(
      :company_name => "Kaeuferportal",
      :first_name => "Max",
      :last_name => "Mustermann",
      :email => "abc@kp.de")
  end

  it "should have a company name" do
    @contact.company_name.should_not be_nil
  end

  it "should have a first name" do
    @contact.first_name.should_not be_nil
  end

  it "should have a last name" do
    @contact.last_name.should_not be_nil
  end

  it "should have an email address " do
    @contact.email.should_not be_nil
  end

  it "should have a last name" do
    pending
  end
end