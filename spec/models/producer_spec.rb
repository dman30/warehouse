require 'spec_helper'

describe Producer do
	
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

	it "should have Articles" do
		article1 = Factory(:article)
		article2 = Factory(:article)
		article3 = Factory(:article)

		producer = Producer.create
		producer.articles << [article1, article2, article3]
		producer.save

		producer.articles.count.should == 3
	end
	# it 'bla' do
	# 	debugger
	# 	should have_many(:articles)
	# end
end
