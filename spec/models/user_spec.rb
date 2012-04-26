require 'spec_helper'

describe User do
  
  before :each do
    User.delete_all
  end

  context "Response" do
    before :each do
      @user = FactoryGirl.create(:user)
    end

    [ :provider,
      :uid,
      :name,
      :email
    ].each do |attribute|

      it "should respond to #{attribute}" do
        @user.should respond_to(attribute)
      end
    end
  end
end
