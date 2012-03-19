require 'spec_helper'

describe Article do

  before :each do
    date = Time.new(2001,2,3,4,5,6).utc
    exp_date = Time.new(2001,2,3,4,5,6).utc
    producer = Producer.new
    @article = Article.new(
      :name => "Foo",
      :buying_date => date,
      :barcode => '12345',
      :serial_no => '12345',
      :expiration_date => exp_date,
      :position => "not here",
      :category => "Monitor"
    )
    @article.producer = producer
    @article.save
  end

  context "Attributes" do
    it "should have a name" do
      @article[:name].should be_kind_of(String)
    end

    it "should have a buying date" do
      @article[:buying_date].should be_kind_of(Time)
    end

    it "should have a barcode" do
      @article[:barcode].should be_kind_of(String)
    end

    it "should have a serial number" do
      @article[:serial_no].should be_kind_of(String)
    end

    it "should have an expiration date" do
      @article[:expiration_date].should be_kind_of(Time)
    end

    it "should have a position" do
      @article[:position].should be_kind_of(String)
    end

    it "should have a category" do
      @article[:category].should be_kind_of(String)
    end
  end

  context "Associations" do
    it "should have a producer" do
      @article.producer.should_not be_nil
    end
  end
end