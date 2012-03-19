require 'spec_helper'

describe Article do

  it "should have a name" do
    article = Article.new(:name => "Foo")
    article[:name].should be_kind_of(String)
  end
end