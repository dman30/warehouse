require 'spec_helper'

# describe "users/new" do
#   before(:each) do
#     assign(:user, stub_model(User).as_new_record)
#   end

#   it "renders new user form" do
#     render

#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "form", :action => users_path, :method => "post" do
#     end
#   end
# end

describe "users/new.html.erb" do
  let(:user) do
    mock_model("User").as_new_record.as_null_object
  end

  before do
    assign(:user, user)
  end

	it "renders a form to create a user" do
		#assign(:user, mock_model("User").as_new_record.as_null_object)
		render
		rendered.should have_selector("form",
			:method => "post",
			:action => users_path
		) do |form|
		  form.should have_selector("input", :type => "submit")
		end
	end

  it "renders a text field for the user name" do
    user.stub(:name => "user name")
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("input",
        :type => "text",
        :name => "user[name]",
        :value => "user name"
      )
    end
  end

  it "renders a text field for the user email" do
    user.stub(:email => "user@mail.com")
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("input",
        :type => "text",
        :name => "user[email]",
        :value => "user@mail.com"
        )
    end
  end
end