require 'spec_helper'

describe Article do

  before :each do
    Article.delete_all
    Producer.delete_all
    Distributor.delete_all
  end

  context "Validation" do

    before :each do 
      @article = FactoryGirl.create(:article)
    end

    [ :producer,
      :distributor,
      :category, 
      :name, 
      :barcode, 
      :serial_no, 
      :purchase_date, 
      :warranty_expiration
    ].each do |attribute|

      it "should not be valid without a #{attribute}" do
        @article.send("#{attribute}=", nil)
        @article.should have(1).error_on(attribute)
      end
    end
  end

  context "Response" do
    before :each do
      @article = FactoryGirl.create(:article)
    end

    it "should respond to installation_date" do
      @article.should respond_to(:installation_date)
    end
    
    it "should respond to note" do
      @article.should respond_to(:note)
    end
  end

  context "Association" do

    before :each do
      @article = FactoryGirl.create(:article)
    end

    it "should have a producer" do
      producer = FactoryGirl.create(:producer)
      @article.producer = producer
      @article.save
      @article.producer.id.should == producer.id
    end

    it "should have a distributor" do
      distributor = FactoryGirl.create(:distributor)
      @article.distributor = distributor
      @article.save
      @article.distributor.id.should == distributor.id
    end

    it "should have an employee" do
      employee = FactoryGirl.create(:employee)
      @article.employee = employee
      @article.save
      @article.employee.id.should == employee.id
    end
  end
end