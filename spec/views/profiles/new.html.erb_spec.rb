require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :add_column => "MyString",
      : => "",
      : => "",
      : => "MyString"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profiles_path, "post" do
      assert_select "input#profile_add_column[name=?]", "profile[add_column]"
      assert_select "input#profile_[name=?]", "profile[]"
      assert_select "input#profile_[name=?]", "profile[]"
      assert_select "input#profile_[name=?]", "profile[]"
    end
  end
end
