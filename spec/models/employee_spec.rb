require 'spec_helper'

describe Employee do

  it "should know its articles" do
    employee = Employee.new
    employee.articles.should be_kind_of(Array)
  end
end
