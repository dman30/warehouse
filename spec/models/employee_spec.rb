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

		it "should not be valid without a location" do
			@employee.location = nil
			@employee.should have(1).error_on(:location)
		end
	end

	context "Response" do
    let(:employee) { FactoryGirl.create(:employee) }
      # @employee = FactoryGirl.create(:employee)
    # end

    it "should respond to note" do
      employee.should respond_to(:note)
    end
  end

  context "Association" do
		it "should have Articles" do
			created_articles = FactoryGirl.create_list(:article, 3)

			employee = FactoryGirl.create(:employee)
			employee.articles << created_articles
			employee.save

			employee.articles.count.should == 3
		end

		it "should have a Contact" do
			pending
		end
	end
end