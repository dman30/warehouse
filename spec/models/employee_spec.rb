require 'spec_helper'

describe Employee do

	before :each do
		@employee = Employee.new(
			:location => "room",
			:contact => mock_model("Contact").as_null_object
		)
	end

	context "Attributes" do
  	it "should be valid with all valid attributes" do
  		@employee.should be_valid
		end

		it "should not be valid without a location" do
			@employee.location = nil
			@employee.should_not be_valid
		end

		it "should not be valid without a contact" do
			@employee.contact = nil
			@employee.should_not be_valid
		end
  end
end