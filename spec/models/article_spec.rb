require 'spec_helper'

describe Article do

  before :each do 
    purch_date = Time.new.utc
    warr_exp = Time.new.utc

    @article = Article.new(
      :category => "article category",
      :name => "article name",
      :serial_no => 'a12b3',
      :barcode => '01010',
      :producer => mock_model("Producer").as_null_object,
      :distributor => mock_model("Distributor").as_null_object,
      :purchase_date => purch_date,
      :warranty_expiration => warr_exp
    )
  end

  # context "Validation" do
  #   it "should be valid with all valid attributes" do
  #     @article.should be_valid
  #   end

  #   it "should not be valid without a category" do
  #     @article.category = nil
  #     @article.should_not be_valid
  #   end

  #   it "should not be valid without a name" do
  #     @article.name = nil
  #     @article.should_not be_valid
  #   end

  #   it "should not be valid without a serial_no" do
  #     @article.serial_no = nil
  #     @article.should_not be_valid
  #   end

  #   it "should not be valid without a barcode" do
  #     @article.barcode = nil
  #     @article.should_not be_valid
  #   end

  #   it "should not be valid without a producer" do
  #     @article.producer = nil
  #     @article.should_not be_valid
  #   end

  #   it "should not be valid without a distributor" do
  #     @article.distributor = nil
  #     @article.should_not be_valid
  #   end

  #   it "should not be valid without a purchase_date" do
  #     @article.purchase_date = nil
  #     @article.should_not be_valid
  #   end

  #   it "should not be valid without a warranty_expiration" do
  #     @article.warranty_expiration = nil
  #     @article.should_not be_valid
  #   end
  # end
end