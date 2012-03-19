require 'spec_helper'

describe Contact do

  before :each do
    @contact = Contact.new(
      :company_name => "Kaeuferportal",
      :first_name => "Max",
      :last_name => "Mustermann",
      :email => "abc@kp.de",
      :website => "http://www.kaueferportal.de",
      :street1 => "Musterstr. 1",
      :street2 => "App. 1",
      :country => "Deutschland",
      :zipcode => "12345",
      :town => "Berlin",
      :note => "Super")
  end

  %w[company_name first_name last_name email website street1 street2 country zipcode town note].each do |attribute|
    it "should have a #{attribute}" do
      @contact.send(attribute).should_not be_nil
    end
  end
end