require 'spec_helper'

describe Employee do

	before :each do
    Producer.delete_all
		Distributor.delete_all
  end

	context "Validation" do
		before :each do
			@employee = FactoryGirl.create(:employee)
		end

		it "should not be valid without a gender" do
			@employee.gender = nil
			@employee.should have(1).error_on(:gender)
		end

		it "should not be valid without a first name" do
			@employee.first_name = nil
			@employee.should have(1).error_on(:first_name)
		end

		it "should not be valid without a last name" do
			@employee.last_name = nil
			@employee.should have(1).error_on(:last_name)
		end

		it "should not be valid without a location" do
			@employee.location = nil
			@employee.should have(1).error_on(:location)
		end
	end

	context "Response" do
    let(:employee) { FactoryGirl.create(:employee) }
      # @employee = FactoryGirl.create(:employee)
    # end

    it "should respond to title" do
      employee.should respond_to(:title)
    end

    it "should respond to note" do
      employee.should respond_to(:note)
    end
  end

  context "Association" do
  	before :each do
  		@employee = FactoryGirl.create(:employee)
  	end

		it "should have Articles" do
			articles = FactoryGirl.create_list(:article, 3)

			@employee.articles << articles
			@employee.save

			@employee.articles.count.should == 3
		end

		it "should have a Contact" do
			contact = FactoryGirl.create(:contact)

			@employee.contact = contact
			@employee.save

			@employee.contact.should_not be_nil# eq(created_contact)
		end
	end
end