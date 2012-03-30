require 'spec_helper'

describe User do
  before :each do
    @user = User.new(
      :email => "user@mail.com",
      :password => "secret", 
      :contact => mock_model("Contact").as_null_object
    )
  end

  it "is valid with valid attributes" do
    @user.should be_valid
  end
  
  it "is not valid without an email" do
    @user.email = nil
    @user.should_not be_valid
  end

  it "is not valid without a password" do
    @user.password = nil
    @user.should_not be_valid
  end

  it "is not valid without a contact" do
    @user.contact = nil
    @user.should_not be_valid
  end

end
