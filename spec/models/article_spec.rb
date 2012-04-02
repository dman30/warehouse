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
      :note
      ].each do |attribute|

      it "should not be valid without a #{attribute}" do
        @article.should have(1).error_on(attribute)
      end
    end

  end
end