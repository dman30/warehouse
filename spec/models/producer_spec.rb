require 'spec_helper'

describe Producer do

	before :each do
    Producer.delete_all
		Distributor.delete_all
  end

	context "Validation" do
		before :each do
			@producer = FactoryGirl.create(:producer)
		end

		it "should not be valid without a company_name" do
			@producer.company_name = nil
			@producer.should have(1).error_on(:company_name)
		end
	end

	context "Response" do
    before :each do
      @producer = FactoryGirl.create(:producer)
    end

    it "should respond to note" do
      @producer.should respond_to(:note)
    end
  end

	context "Association" do
		before :each do
			@producer = FactoryGirl.create(:producer)
		end

		it "should have Articles" do
			articles = FactoryGirl.create_list(:article, 3)

			@producer.articles << articles
			@producer.save

			@producer.articles.count.should == 3
		end

		it "should have a Contact" do
			contact = FactoryGirl.create(:contact)

			@producer.contact = contact
			@producer.save

			@producer.contact.should_not be_nil
		end
	end
end