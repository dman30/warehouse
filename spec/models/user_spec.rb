require 'spec_helper'

describe User do

	context "A user (in general)" do
		before :each do
			@user = User.new
		end
		
		it "should be invalid without a username" do
			@user.should_not be_valid
		end
		
		it "should be valid with username" do
			@user.username = 'someusername'
			@user.should be_valid
		end
	end
end
