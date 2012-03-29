require 'spec_helper'

describe User do

  context "Validation" do
    before :each do
      @user = User.new
    end

    it "should be invalid without a username" do
      @user.should have(1).error_on(:username)
    end

    it "should be valid with username" do
      @user.username = 'someusername'
      @user.should have(:no).error_on(:username)
    end
  end
end
