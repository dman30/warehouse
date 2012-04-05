require 'spec_helper'

describe Distributor do
	before :all do
		Producer.delete_all
    Distributor.delete_all
  end

	context "Validation" do
		before :each do
			@distributor = FactoryGirl.create(:distributor)
		end

		it "should not be valid without a name" do
			@distributor.name = nil
			@distributor.should have(1).error_on(:name)
		end
	end

	context "Response" do
    before :each do
      @distributor = FactoryGirl.create(:distributor)	
    end

    it "should respond to note" do
      @distributor.should respond_to(:note)
    end
  end

  context "Association" do
  	before :each do
  		@distributor = FactoryGirl.create(:distributor)
  	end

		it "should have Articles" do
			articles = FactoryGirl.create_list(:article, 3)
			
			@distributor.articles << articles
			@distributor.save

			@distributor.articles.count.should == 3
		end

		it "should have a Contact" do
			contact = FactoryGirl.create(:contact)

			@distributor.contact = contact
			@distributor.save

			@distributor.contact.should_not be_nil
		end
	end

end