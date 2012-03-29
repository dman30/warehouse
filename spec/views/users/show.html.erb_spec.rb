require 'spec_helper'

# describe "users/show" do
#   before(:each) do
#     @user = assign(:user, stub_model(User))
#   end

#   it "renders attributes in <p>" do
#     render
#   end
# end
 
describe "users/show.html.erb" do
	it "displays the name attribute of the user" do
		# creates test double which stubs name() method with
		# return value "joe" & assigns it to @user instance 
		# vaiable on the view
		assign(:user, double("Username", :name => "joe"))
		render
		rendered.should contain("joe")
	end
end