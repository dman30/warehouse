require 'spec_helper'

describe Article do

  before :each do
    date = DateTime.new(2001,2,3,4,5,6)
    exp_date = DateTime.new(2001,2,3,4,5,6)
    @article = Article.new(
      :name => "Foo",
      :buying_date => date,
      :barcode => '12345',
      :serial_no => '12345',
      :expiration_date => exp_date,
      :position => "not here")
  end
  it "should have a name" do
    @article[:name].should be_kind_of(String)
  end

  it "should have a buying date" do
    @article[:buying_date].should be_kind_of(DateTime)
  end

  it "should have a barcode" do
    @article[:barcode].should be_kind_of(String)
  end

  it "should have a serial number" do
    @article[:serial_no].should be_kind_of(String)
  end

  it "should have an expiration date" do
    @article[:expiration_date].should be_kind_of(DateTime)
  end

  it "should have a position" do
    @article[:position].should be_kind_of(String)
  end

end