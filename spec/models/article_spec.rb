require 'spec_helper'

describe Article do

  before :all do
    Article.delete_all
  end

  context "Validation" do

    before :each do 
      @article = Article.create
    end

    [
      :category, 
      :name, 
      :barcode, 
      :serial_no, 
      :purchase_date, 
      :warranty_expiration,
      :producer,
      :distributor
    ].each do |attribute|

      it "should not be valid without a #{attribute}" do
        @article.should have(1).error_on(attribute)
      end
    end
  end

  context "Response" do
    before :each do
      @article = Article.new
    end

    it "should respond to note" do
      @article.should respond_to(:note)
    end

    it "should respond to installation_date" do
      @article.should respond_to(:installation_date)
    end
  end

  context "Association" do

    before :each do
      @article = Article.new(
        :category => "category",
        :name => "name",
        :barcode => "01010",
        :serial_no => "a12b3",
        :purchase_date => "01.01.2012",
        :warranty_expiration => "01.01.2014"
      )
    end

    it "should have a producer" do
      producer = Producer.new
      @article.producer = producer
      @article.save
      @article.producer.id.should == producer.id
    end

    it "should have a distributor" do
      distributor = Distributor.new
      @article.distributor = distributor
      @article.save
      @article.distributor.id.should == distributor.id
    end

    it "should have a employee" do
      employee = Employee.new
      @article.employee = employee
      @article.save
      @article.employee.id.should == employee.id
    end

    # it{should belong_to(:producer)}
  end
end