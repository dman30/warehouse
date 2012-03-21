require 'spec_helper'

describe Article do

  before :each do
    date = Time.new.utc
    exp_date = Time.new.utc

    producer = Producer.new
    distributor = Distributor.new

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
    @article.distributor = distributor
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

    it "should have a distributor" do
      @article.distributor.should_not be_nil

    end
  end
end
