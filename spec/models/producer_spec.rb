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

		it "should not be valid without a name" do
			@producer.name = nil
			@producer.should have(1).error_on(:name)
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
		it "should have Articles" do
			created_articles = FactoryGirl.create_list(:article, 3)

			producer = FactoryGirl.create(:producer)
			producer.articles << created_articles
			producer.save

			producer.articles.count.should == 3
		end

		it "should have a Contact" do
			pending
		end
	end
end