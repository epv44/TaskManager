require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :add_column => "Add Column",
      : => "",
      : => "",
      : => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Add Column/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
