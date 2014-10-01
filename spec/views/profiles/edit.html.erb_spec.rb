require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :add_column => "MyString",
      : => "",
      : => "",
      : => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do
      assert_select "input#profile_add_column[name=?]", "profile[add_column]"
      assert_select "input#profile_[name=?]", "profile[]"
      assert_select "input#profile_[name=?]", "profile[]"
      assert_select "input#profile_[name=?]", "profile[]"
    end
  end
end
