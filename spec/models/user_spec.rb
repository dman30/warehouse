require 'spec_helper'

describe User do

  context "Validation" do
    before :each do
      @user = User.new
    end

    it "should be invalid without a username" do
    	@user.email = 'joe@bloggs.com'
    	@user.password = 'abcdefg'
      @user.should_not be_valid
      @user.errors[:username].first.should eq("is required")
      @user.username = 'someusername'
      @user.should be_valid
    end
    
    it "should be invalid without an email" do
    	@user.username = 'joebloggs'
    	@user.password = 'abcdefg'
    	@user.should_not be_valid
    	@user.errors[:email].first.should eq("is required")
    	@user.email = 'joe@bloggs.com'
    	@user.should be_valid
    end
    
    it "should be invalid without a password" do
    	@user.email = 'joe@bloggs.com'
    	@user.username = 'joebloggs'
    	@user.should_not be_valid
    	@user.password = 'abcdefg'
    	@user.should be_valid
   	end
  end
end
