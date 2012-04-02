require 'spec_helper'

describe Article do

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
      :installation_date, 
      :warranty_expiration,
      :note,
      :producer
      ].each do |attribute|

      it "should not be valid without a #{attribute}" do
        @article.should have(1).error_on(attribute)
      end
    end

    it "should have a producer" do
      article = Article.new(
        :category => "category",
        :name => "name",
        :barcode => "01010",
        :serial_no => "a12b3",
        :purchase_date => "01.01.2012",
        :installation_date => "01.04.2012",
        :warranty_expiration => "01.01.2014",
        :note => "note",
      )
      article.producer = Producer.new
      article.save
      article.producer.should be_valid
    end
  end


end