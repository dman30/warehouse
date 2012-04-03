require 'spec_helper'

describe Contact do

  context "Validation" do
    before :each do
      # @contact = FactoryGirl.create(:contact)
      @contact = Contact.create
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
        # @contact.attribute = nil
        @contact.should have(1).error_on(attribute)
      end
    end
  end
end